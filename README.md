# Project-E-commerce-DataBase-in-Sql

# Relationships of tables.  



# Entities and Their Attributes

#  1. Product Image
# - Attributes:
  - `id` (Primary Key)
  - `image_url` (URL of the product image)

# 2. Color
# - Attributes:
  - `id` (Primary Key)
  - `color_name` (Name of the color)

# 3. Product Category
# - Attributes:
  - `id` (Primary Key)
  - `category_name` (Name of the product category, e.g., Clothing, Electronics)

# 4. Brand
# - Attributes:
  - `id` (Primary Key)
  - `brand_name` (Name of the brand)

# 5. Product
# - Attributes:
  - `id` (Primary Key)
  - `product_name` (Name of the product)
  - `brand_id` (Foreign Key referencing Brand.id)
  - `category_id` (Foreign Key referencing Product_Category.id)
  - `base_price` (Base price of the product)

# 6. Size Category
# - Attributes:
  - `id` (Primary Key)
  - `category_name` (Name of the size category, e.g., Clothing Sizes, Shoe Sizes)

# 7. Size Option
# - Attributes:
  - `id` (Primary Key)
  - `size_category_id` (Foreign Key referencing Size_Category.id)
  - `size_name` (Name of the size option, e.g., S, M, L, 39, 40)

# 8. Product Item (SKU)
# - Attributes:
  - `id` (Primary Key)
  - `product_id` (Foreign Key referencing Product.id)
  - `size_option_id` (Foreign Key referencing Size_Option.id)
  - `color_id` (Foreign Key referencing Color.id)
  - `sku` (Unique SKU code)
  - `price` (Price for this SKU)
  - `stock` (Stock quantity available)

# 9. Product Variation
# - Attributes:
  - `id` (Primary Key)
  - `product_id` (Foreign Key referencing Product.id)
  - `variation_type` (Type of variation, e.g., Size, Color)
  - `variation_value` (Value of the variation, e.g., S, Red)

#  10. Attribute Category
# - Attributes:
  - `id` (Primary Key)
  - `category_name` (Category of attribute, e.g., Physical, Technical)

# 11. Attribute Type
# - Attributes:
  - `id` (Primary Key)
  - `type_name` (Data type of attribute, e.g., text, number, boolean)

# 12. Product Attribute
# - Attributes:
  - `id` (Primary Key)
  - `product_id` (Foreign Key referencing Product.id)
  - `attribute_category_id` (Foreign Key referencing Attribute_Category.id)
  - `attribute_type_id` (Foreign Key referencing Attribute_Type.id)
  - `attribute_name` (Name of the attribute, e.g., Weight, Material)
  - `attribute_value` (Value of the attribute)


# Relationships Between Entities

- Product belongs to one Brand (via `brand_id`).
- Product belongs to one Product Category (via `category_id`).
- Size Option belongs to one Size Category (via `size_category_id`).
- Product Item (SKU) belongs to one Product, one Size Option, and one Color.
- Product Variation belongs to one Product
- Product Attribute belongs to one Product, one Attribute Category, and one Attribute Type.


## Keys and Constraints Summary

- Primary Keys (PK): Unique identifiers for each table, e.g., `id`.
- Foreign Keys (FK): Enforce relationships between tables, e.g., `product.brand_id` references `brand.id`.
- Unique Constraints: SKU in `product_item` is unique.
- Not Null: Important fields like names, prices, and foreign keys cannot be null.
