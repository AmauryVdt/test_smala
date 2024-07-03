Décrire une structure de base de donnée pour stocker la base produit d'un site de ecommerce, 
ainsi que les commandes réalisées, et tout ce qui pourrait y être relatif (hors base client).

Tables principales
- Products
- Categories
- Orders
- OrderItems
- ProductImages
- Inventory
- Suppliers
- Shipping

Table Products:
- product_id (Primary Key, INT, Auto Increment)
- name (VARCHAR, 255)
- description (TEXT)
- price (DECIMAL, 10, 2)
- category_id (Foreign Key, INT)
- supplier_id (Foreign Key, INT)
- created_at (DATETIME)
- updated_at (DATETIME)

Table Categories
- category_id (Primary Key, INT, Auto Increment)
- name (VARCHAR, 255)
- description (TEXT)
- created_at (DATETIME)
- updated_at (DATETIME)

Table Orders
- order_id (Primary Key, INT, Auto Increment)
- order_date (DATETIME)
- total_amount (DECIMAL, 10, 2)
- shipping_id (Foreign Key, INT)
- created_at (DATETIME)
- updated_at (DATETIME)

Table OrderItems
- order_item_id (Primary Key, INT, Auto Increment)
- order_id (Foreign Key, INT)
- product_id (Foreign Key, INT)
- quantity (INT)
- price (DECIMAL, 10, 2)
- created_at (DATETIME)
- updated_at (DATETIME)

Table ProductImages
- image_id (Primary Key, INT, Auto Increment)
- product_id (Foreign Key, INT)
- image_url (VARCHAR, 255)
- created_at (DATETIME)
- updated_at (DATETIME)

Inventory
- inventory_id (Primary Key, INT, Auto Increment)
- product_id (Foreign Key, INT)
- quantity_in_stock (INT)
- created_at (DATETIME)
- updated_at (DATETIME)

Table Suppliers
- supplier_id (Primary Key, INT, Auto Increment)
- name (VARCHAR, 255)
- contact_info (VARCHAR, 255)
- created_at (DATETIME)
- updated_at (DATETIME)

Table Shipping
- shipping_id (Primary Key, INT, Auto Increment)
- order_id (Foreign Key, INT)
- shipping_price (DECIMAL, 10, 2)
- shipping_method (VARCHAR, 255)
- shipping_status (VARCHAR, 255)
- tracking_number (VARCHAR, 255)
- created_at (DATETIME)
- updated_at (DATETIME)