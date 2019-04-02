-- Table: users
CREATE TABLE users (
  u_id    INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
  u_name  VARCHAR(64)   NOT NULL,
  u_pass  VARCHAR(255)  NOT NULL,
  u_email VARCHAR(50)   NOT NULL,
  u_fio   VARCHAR(70)   NOT NULL,
  u_org   VARCHAR(100)  NOT NULL
)
  ENGINE = InnoDB DEFAULT CHARSET=utf8;

-- Table: roles
CREATE TABLE roles (
  role_id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  role_name VARCHAR(20) NOT NULL
)
  ENGINE = InnoDB DEFAULT CHARSET=utf8;


-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users (u_id),
  FOREIGN KEY (role_id) REFERENCES roles (role_id),

  UNIQUE (user_id, role_id)
)
  ENGINE = InnoDB DEFAULT CHARSET=utf8;

-- Insert data

-- For login
-- admin:"Kballarock" pass: "f3am67zxy"
-- user:"bondarenko" pass: "12345678"


INSERT INTO users VALUES (1,'Kballarock','$2a$11$NT2PwmsS6n8SLaHfQ7ED5.2ZQgrm/lJ2UkrZSVIk.Xh3OvNslL0Lu','admin@admin.ru','Бондаренко Алексей Валерьевич','ОАО НКФО ЕРИП');
INSERT INTO users VALUES (2,'bondarenko','$2a$11$VC8zfFAsFSGApU0MUpA1zOjP5rPs2ZwOuX4Q6VffTbz0KKx7fJMhG','user@user.ru','Бондаренко А В','ОАО НКФО ЕРИП');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);
INSERT INTO user_roles VALUES (1, 1);