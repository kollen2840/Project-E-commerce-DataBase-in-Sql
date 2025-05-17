 -- E-Commerce Database Schema & Sample Data

-- Drop tables if they exist (for repeatability)
DROP TABLE IF EXISTS product_attribute;
DROP TABLE IF EXISTS attribute_type;
DROP TABLE IF EXISTS attribute_category;
DROP TABLE IF EXISTS size_option;
DROP TABLE IF EXISTS size_category;
DROP TABLE IF EXISTS product_variation;
DROP TABLE IF EXISTS product_item;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS brand;
DROP TABLE IF EXISTS product_category;
DROP TABLE IF EXISTS color;
DROP TABLE IF EXISTS product_image;

-- 1. Product Images
CREATE TABLE product_image (
    id INT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL
);

INSERT INTO product_image VALUES
(1, 'https://www.pexels.com/photo/beauty-care-products-on-sale-5632356/'),
(2, 'https://www.pexels.com/photo/red-paper-bag-5632321/'),
(3, 'https://www.pexels.com/photo/man-wearing-gray-coat-with-sale-tags-5935748/'),
(4, 'https://www.pexels.com/photo/white-t-shirt-hanging-on-a-rack-11671964/'),
(5, 'https://www.pexels.com/photo/white-and-black-spray-bottle-8467960/'),
(6, 'https://www.pexels.com/photo/gray-crew-neck-shirt-on-brown-table-9594144/'),
(7, 'https://www.pexels.com/photo/two-white-pump-bottles-on-yellow-surface-4176566/'),
(8, 'https://www.pexels.com/photo/a-tube-of-a-cosmetic-product-without-a-label-19049365/'),
(9, 'https://www.pexels.com/photo/person-holding-an-orange-leather-handbag-8801089/'),
(10, 'https://www.pexels.com/photo/five-assorted-color-of-liquid-lipsticks-3373738/'),
(11, 'https://www.pexels.com/photo/beauty-care-products-on-sale-5632356/'),
(12, 'https://www.pexels.com/photo/red-paper-bag-5632321/'),
(13, 'https://www.pexels.com/photo/man-wearing-gray-coat-with-sale-tags-5935748/'),
(14, 'https://www.pexels.com/photo/white-t-shirt-hanging-on-a-rack-11671964/'),
(15, 'https://www.pexels.com/photo/white-and-black-spray-bottle-8467960/'),
(16, 'https://www.pexels.com/photo/gray-crew-neck-shirt-on-brown-table-9594144/'),
(17, 'https://www.pexels.com/photo/two-white-pump-bottles-on-yellow-surface-4176566/'),
(18, 'https://www.pexels.com/photo/a-tube-of-a-cosmetic-product-without-a-label-19049365/'),
(19, 'https://www.pexels.com/photo/person-holding-an-orange-leather-handbag-8801089/'),
(20, 'https://www.pexels.com/photo/five-assorted-color-of-liquid-lipsticks-3373738/');

-- 2. Colors
CREATE TABLE color (
    id INT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL
);

INSERT INTO color VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'Green'),
(4, 'Yellow'),
(5, 'Black'),
(6, 'White'),
(7, 'Orange'),
(8, 'Purple'),
(9, 'Pink'),
(10, 'Brown'),
(11, 'Gray'),
(12, 'Cyan'),
(13, 'Magenta'),
(14, 'Navy'),
(15, 'Teal'),
(16, 'Lime'),
(17, 'Maroon'),
(18, 'Olive'),
(19, 'Gold'),
(20, 'Silver');

-- 3. Product Categories
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

INSERT INTO product_category VALUES
(1, 'Clothing'),
(2, 'Electronics'),
(3, 'Footwear'),
(4, 'Accessories'),
(5, 'Home Appliances'),
(6, 'Books'),
(7, 'Toys'),
(8, 'Beauty'),
(9, 'Sports'),
(10, 'Jewelry'),
(11, 'Furniture'),
(12, 'Automotive'),
(13, 'Groceries'),
(14, 'Garden'),
(15, 'Music'),
(16, 'Office Supplies'),
(17, 'Pet Supplies'),
(18, 'Health'),
(19, 'Baby Products'),
(20, 'Stationery');

-- 4. Brands
CREATE TABLE brand (
    id INT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

INSERT INTO brand VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Apple'),
(4, 'Samsung'),
(5, 'Sony'),
(6, 'Puma'),
(7, 'Levi\'s'),
(8, 'Gucci'),
(9, 'Rolex'),
(10, 'Canon'),
(11, 'Asus'),
(12, 'HP'),
(13, 'Dell'),
(14, 'Lego'),
(15, 'Philips'),
(16, 'Nestle'),
(17, 'Unilever'),
(18, 'Ray-Ban'),
(19, 'H&M'),
(20, 'Zara');

-- 5. Products
CREATE TABLE product (
    id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    base_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(id),
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);

INSERT INTO product VALUES
(1, 'Air Max Sneakers', 1, 3, 120.00),
(2, 'Galaxy S22', 4, 2, 850.00),
(3, 'Classic Jeans', 7, 1, 60.00),
(4, 'iPhone 14', 3, 2, 999.00),
(5, 'Sports T-shirt', 2, 1, 35.00),
(6, 'Leather Wallet', 8, 4, 80.00),
(7, 'Bluetooth Headphones', 5, 2, 150.00),
(8, 'Running Shoes', 6, 3, 95.00),
(9, 'Smart Watch', 3, 2, 299.00),
(10, 'Digital Camera', 10, 2, 450.00),
(11, 'Luxury Watch', 9, 10, 5200.00),
(12, 'Office Chair', 11, 11, 220.00),
(13, 'Backpack', 19, 4, 45.00),
(14, 'Coffee Maker', 15, 5, 130.00),
(15, 'Acoustic Guitar', 15, 15, 350.00),
(16, 'Children\'s Toy Car', 14, 7, 40.00),
(17, 'Protein Powder', 16, 18, 55.00),
(18, 'Sunglasses', 18, 4, 120.00),
(19, 'Baby Stroller', 20, 19, 300.00),
(20, 'Notebook', 20, 20, 5.00);

-- 6. Size Categories
CREATE TABLE size_category (
    id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO size_category VALUES
(1, 'Clothing Sizes'),
(2, 'Shoe Sizes'),
(3, 'Ring Sizes'),
(4, 'Hat Sizes'),
(5, 'Glove Sizes'),
(6, 'Kids Sizes'),
(7, 'Infant Sizes'),
(8, 'Sock Sizes'),
(9, 'Belt Sizes'),
(10, 'Bra Sizes'),
(11, 'Pant Sizes'),
(12, 'Shirt Sizes'),
(13, 'Jacket Sizes'),
(14, 'Suit Sizes'),
(15, 'Watch Sizes'),
(16, 'Bag Sizes'),
(17, 'Pet Sizes'),
(18, 'Furniture Sizes'),
(19, 'Notebook Sizes'),
(20, 'Accessory Sizes');

-- 7. Size Options
CREATE TABLE size_option (
    id INT PRIMARY KEY,
    size_category_id INT NOT NULL,
    size_name VARCHAR(10) NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(id)
);

INSERT INTO size_option VALUES
(1, 1, 'XS'),
(2, 1, 'S'),
(3, 1, 'M'),
(4, 1, 'L'),
(5, 1, 'XL'),
(6, 1, 'XXL'),
(7, 2, '39'),
(8, 2, '40'),
(9, 2, '41'),
(10, 2, '42'),
(11, 2, '43'),
(12, 2, '44'),
(13, 6, '3Y'),
(14, 6, '4Y'),
(15, 6, '5Y'),
(16, 6, '6Y'),
(17, 7, '0-3M'),
(18, 7, '3-6M'),
(19, 7, '6-9M'),
(20, 7, '9-12M');

-- 8. Product Items (SKU-level, unique combo of product, size, color)
CREATE TABLE product_item (
    id INT PRIMARY KEY,
    product_id INT NOT NULL,
    size_option_id INT NOT NULL,
    color_id INT NOT NULL,
    sku VARCHAR(30) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(id),
    FOREIGN KEY (color_id) REFERENCES color(id)
);

INSERT INTO product_item VALUES
(1, 1, 2, 1, 'SKU001', 120.00, 50),
(2, 1, 3, 2, 'SKU002', 120.00, 40),
(3, 1, 4, 5, 'SKU003', 120.00, 30),
(4, 2, 7, 6, 'SKU004', 850.00, 25),
(5, 3, 2, 3, 'SKU005', 60.00, 60),
(6, 3, 3, 4, 'SKU006', 60.00, 55),
(7, 4, 8, 5, 'SKU007', 999.00, 15),
(8, 5, 2, 7, 'SKU008', 35.00, 100),
(9, 6, 9, 6, 'SKU009', 80.00, 70),
(10, 7, 10, 2, 'SKU010', 150.00, 35),
(11, 8, 11, 5, 'SKU011', 95.00, 40),
(12, 9, 12, 8, 'SKU012', 299.00, 20),
(13, 10, 1, 9, 'SKU013', 450.00, 10),
(14, 11, 15, 10, 'SKU014', 5200.00, 7),
(15, 12, 16, 11, 'SKU015', 220.00, 12),
(16, 13, 13, 12, 'SKU016', 45.00, 60),
(17, 14, 14, 13, 'SKU017', 130.00, 25),
(18, 15, 15, 14, 'SKU018', 350.00, 15),
(19, 16, 16, 15, 'SKU019', 40.00, 35),
(20, 17, 17, 16, 'SKU020', 55.00, 80);

-- 9. Product Variations (e.g., Size, Color, Material)
CREATE TABLE product_variation (
    id INT PRIMARY KEY,
    product_id INT NOT NULL,
    variation_type VARCHAR(50) NOT NULL, -- e.g., 'Size', 'Color'
    variation_value VARCHAR(50) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

INSERT INTO product_variation VALUES
(1, 1, 'Size', 'S'),
(2, 1, 'Size', 'M'),
(3, 1, 'Size', 'L'),
(4, 1, 'Color', 'Red'),
(5, 1, 'Color', 'Blue'),
(6, 2, 'Color', 'Black'),
(7, 2, 'Memory', '128GB'),
(8, 2, 'Memory', '256GB'),
(9, 3, 'Size', 'M'),
(10, 3, 'Size', 'L'),
(11, 4, 'Color', 'White'),
(12, 5, 'Size', 'S'),
(13, 5, 'Size', 'M'),
(14, 5, 'Size', 'L'),
(15, 6, 'Material', 'Leather'),
(16, 7, 'Color', 'Black'),
(17, 8, 'Size', '42'),
(18, 8, 'Size', '43'),
(19, 9, 'Color', 'Silver'),
(20, 10, 'Resolution', '24MP');

-- 10. Attribute Categories
CREATE TABLE attribute_category (
    id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO attribute_category VALUES
(1, 'Physical'),
(2, 'Technical'),
(3, 'Material'),
(4, 'Nutritional'),
(5, 'Design'),
(6, 'Performance'),
(7, 'Color'),
(8, 'Size'),
(9, 'Battery'),
(10, 'Connectivity'),
(11, 'Warranty'),
(12, 'Weight'),
(13, 'Dimensions'),
(14, 'Capacity'),
(15, 'Power'),
(16, 'Speed'),
(17, 'Resolution'),
(18, 'Compatibility'),
(19, 'Water Resistance'),
(20, 'Other');

-- 11. Attribute Types
CREATE TABLE attribute_type (
    id INT PRIMARY KEY,
    type_name VARCHAR(20) NOT NULL
);

INSERT INTO attribute_type VALUES
(1, 'text'),
(2, 'number'),
(3, 'boolean'),
(4, 'decimal'),
(5, 'date'),
(6, 'enum'),
(7, 'color'),
(8, 'size'),
(9, 'url'),
(10, 'weight'),
(11, 'dimension'),
(12, 'capacity'),
(13, 'power'),
(14, 'speed'),
(15, 'resolution'),
(16, 'compatibility'),
(17, 'percentage'),
(18, 'currency'),
(19, 'duration'),
(20, 'other');

-- 12. Product Attributes (custom attributes)
CREATE TABLE product_attribute (
    id INT PRIMARY KEY,
    product_id INT NOT NULL,
    attribute_category_id INT NOT NULL,
    attribute_type_id INT NOT NULL,
    attribute_name VARCHAR(50) NOT NULL,
    attribute_value VARCHAR(100) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id)
);

INSERT INTO product_attribute VALUES
(1, 1, 1, 2, 'Weight', '0.8'),
(2, 1, 3, 1, 'Material', 'Mesh'),
(3, 2, 2, 1, 'Processor', 'Snapdragon 8'),
(4, 2, 9, 2, 'Battery', '3700'),
(5, 3, 1, 2, 'Weight', '0.4'),
(6, 3, 3, 1, 'Material', 'Denim'),
(7, 4, 2, 1, 'Processor', 'A15 Bionic'),
(8, 4, 9, 2, 'Battery', '3240'),
(9, 5, 1, 2, 'Weight', '0.2'),
(10, 5, 3, 1, 'Material', 'Cotton'),
(11, 6, 3, 1, 'Material', 'Leather'),
(12, 7, 2, 1, 'Bluetooth', '5.0'),
(13, 8, 1, 2, 'Weight', '0.7'),
(14, 9, 2, 1, 'OS', 'watchOS 8'),
(15, 10, 17, 1, 'Resolution', '24MP'),
(16, 11, 12, 2, 'Weight', '0.15'),
(17, 12, 13, 1, 'Dimensions', '120x60x60cm'),
(18, 13, 5, 1, 'Design', 'Ergonomic'),
(19, 14, 14, 2, 'Capacity', '1.2'),
(20, 15, 15, 2, 'Power', '20');

-- END OF SCRIPT
