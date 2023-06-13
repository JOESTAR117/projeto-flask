CREATE TABLE IF NOT EXISTS products(
    code INT(4) UNSIGNED ZEROFILL NOT NULL,
    name CHAR(50),
    stock INT NOT NULL,
    value FLOAT,
    id_category tinyint NOT NULL,
    PRIMARY KEY(code)
);

CREATE TABLE IF NOT EXISTS categories(

    id tinyint NOT NULL,
    name VARCHAR(40) ,
    description VARCHAR(255),
    PRIMARY KEY(id)
);

ALTER TABLE products ADD FOREIGN KEY (id_category) REFERENCES categories(id);
