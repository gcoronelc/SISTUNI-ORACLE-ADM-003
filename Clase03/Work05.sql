CREATE OR REPLACE FUNCTION ora12c_verify_function
(username varchar2,
 password varchar2,
 old_password varchar2)
RETURN boolean IS 
   differ integer;
   pw_lower varchar2(256); 
   db_name varchar2(40);
   i integer;
   simple_password varchar2(10);
   reverse_user varchar2(32);
BEGIN 
   IF NOT ora_complexity_check(password, chars => 8, letter => 1, digit => 1) THEN
      RETURN(FALSE);
   END IF;

   -- Check if the password contains the username
   pw_lower := NLS_LOWER(password);
   IF instr(pw_lower, NLS_LOWER(username)) > 0 THEN
     raise_application_error(-20002, 'Password contains the username');
   END IF;

   -- Check if the password contains the username reversed
   reverse_user := '';
   FOR i in REVERSE 1..length(username) LOOP
     reverse_user := reverse_user || substr(username, i, 1);
   END LOOP;
   IF instr(pw_lower, NLS_LOWER(reverse_user)) > 0 THEN
     raise_application_error(-20003, 'Password contains the username ' || 
                                     'reversed');
   END IF;

   -- Check if the password contains the server name
   select name into db_name from sys.v$database;
   IF instr(pw_lower, NLS_LOWER(db_name)) > 0 THEN
      raise_application_error(-20004, 'Password contains the server name');
   END IF;

   -- Check if the password contains 'oracle'
   IF instr(pw_lower, 'oracle') > 0 THEN
        raise_application_error(-20006, 'Password too simple');
   END IF;

   -- Check if the password is too simple. A dictionary of words may be
   -- maintained and a check may be made so as not to allow the words
   -- that are too simple for the password.
   IF pw_lower IN ('welcome1', 'database1', 'account1', 'user1234',
                              'password1', 'oracle123', 'computer1', 
                              'abcdefg1', 'change_on_install') THEN
      raise_application_error(-20006, 'Password too simple');
   END IF;

   -- Check if the password differs from the previous password by at least
   -- 3 characters
   IF old_password IS NOT NULL THEN
     differ := ora_string_distance(old_password, password);
     IF differ < 3 THEN
        raise_application_error(-20010, 'Password should differ from the ' 
                                || 'old password by at least 3 characters');
     END IF;
   END IF ;

   RETURN(TRUE);
END;
/

GRANT EXECUTE ON ora12c_verify_function TO PUBLIC;

