-- Tworzenie tabeli ImageUrl
CREATE TABLE image_url (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    product_id BIGINT NOT NULL,
    CONSTRAINT fk_products FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
);


ALTER TABLE products DROP COLUMN image_url;