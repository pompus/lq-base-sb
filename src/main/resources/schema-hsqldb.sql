create table user_profile
(userid varchar(50) PRIMARY KEY,
profile varchar(50) not null
);

create table profile_details
(profile varchar(50) not null,
role_name varchar(20) ,
role_id BIGINT PRIMARY KEY,
FOREIGN KEY (profile) REFERENCES user_profile(profile)
);

CREATE PROCEDURE new_user(IN userid VARCHAR(50), IN profile VARCHAR(50))
   MODIFIES SQL DATA
   BEGIN ATOMIC
     INSERT INTO user_profile VALUES (userid, profile);
END

--insert into user_profile values('test@gmail.com','admin');
--insert into profile_details values('admin','test_role',1);