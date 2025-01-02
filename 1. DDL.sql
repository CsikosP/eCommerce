CREATE TABLE IF NOT EXISTS Category (
    category VARCHAR(50) PRIMARY KEY,
    Helpdesk_email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS User (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(20) NOT NULL,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    category VARCHAR(50) NOT NULL,
    UNIQUE KEY (username),
    UNIQUE KEY (email),
    FOREIGN KEY (category) REFERENCES Category(category) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Bank (
    Bank_code VARCHAR(20) PRIMARY KEY,
    bank VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS CreditCard(
	Number VARCHAR(20) PRIMARY KEY,
	ExpireDate DATE NOT NULL,
	Bank_Code VARCHAR(20) NOT NULL,
	User_id INT NOT NULL,
	FOREIGN KEY (User_id) REFERENCES User(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Bank_Code) REFERENCES Bank(Bank_Code) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Invoice(
    number VARCHAR(20) PRIMARY KEY,
    status ENUM('issued', 'paid') NOT NULL DEFAULT 'issued',
    date DATE NOT NULL,
    Order_id INT,
    UNIQUE KEY (Order_id)
    -- FOREIGN KEY (Order_id) REFERENCES `Order`(id) ON DELETE CASCADE ON UPDATE CASCADE
    -- This line is removed, because Invoice and `Order` is 1-to-1 relationship, 
    -- so we only have to make FK line on the one side, which is `Order` table.
);

CREATE TABLE IF NOT EXISTS `Order` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    status ENUM('processing', 'completed', 'cancelled') NOT NULL DEFAULT 'processing',
    User_id INT,
    Invoice_number VARCHAR(20),
    FOREIGN KEY (User_id) REFERENCES User(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (Invoice_number) REFERENCES Invoice(number) ON DELETE RESTRICT ON UPDATE RESTRICT,
    UNIQUE KEY (Invoice_number)
);

CREATE TABLE IF NOT EXISTS Method (
    method VARCHAR(50) PRIMARY KEY,
    transaction_fee DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    method VARCHAR(20) NOT NULL,
    Invoice_number VARCHAR(20) NOT NULL,
    CreditCard_number VARCHAR(20),
    -- Invoice cannot be deleted or updated
    FOREIGN KEY (Invoice_number) REFERENCES Invoice(number) ON DELETE RESTRICT ON UPDATE RESTRICT,
    -- When credit card is deleted, the payment should become 
    FOREIGN KEY (CreditCard_number) REFERENCES CreditCard(number) ON DELETE SET NULL ON UPDATE RESTRICT,
    FOREIGN KEY (method) REFERENCES Method(method) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE KEY (Invoice_number)
);

CREATE TABLE IF NOT EXISTS Shipment (
    id INT PRIMARY KEY,
    Tracking_number VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    UNIQUE KEY (Tracking_number)
);

CREATE TABLE IF NOT EXISTS Shop (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    UNIQUE KEY (name)
);

CREATE TABLE IF NOT EXISTS Restricted_shop (
    id INT PRIMARY KEY,
    FOREIGN KEY (id) references Shop(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Product_type (
    id INT PRIMARY KEY,
    description VARCHAR(100),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES Product_type(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Product (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    color VARCHAR(50) NOT NULL,
    size VARCHAR(20) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    Shop_id INT,
    Product_type_id INT,
    FOREIGN KEY (Shop_id) REFERENCES Shop(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Product_type_id) REFERENCES Product_type(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS OrderItem (
    Seq_id INT NOT NULL,
    Order_id INT NOT NULL,
    Unit_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    status ENUM('processing', 'ready_to_ship', 'shipped', 'out_of_stock') NOT NULL DEFAULT 'processing',
    Shipment_id INT,
    Product_id INT NOT NULL,
    PRIMARY KEY (Seq_id, Order_id),
    FOREIGN KEY (Order_id) REFERENCES `Order`(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Shipment_id) REFERENCES Shipment(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (Product_id) REFERENCES Product(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Photo (
    Product_id INT NOT NULL,
    photo_id INT NOT NULL,
	photo VARCHAR(50),
    PRIMARY KEY (Product_id, photo_id),
    FOREIGN KEY (Product_id) REFERENCES Product(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS CanSell (
    Restricted_shop_id INT NOT NULL,
    Product_type_id INT NOT NULL,
    PRIMARY KEY (Restricted_shop_id, Product_type_id),
    FOREIGN KEY (Restricted_shop_id) REFERENCES Restricted_shop(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Product_type_id) REFERENCES Product_type(id) ON DELETE CASCADE ON UPDATE CASCADE
);

