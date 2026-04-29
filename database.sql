-- Create rentals table only if it doesn't exist
CREATE TABLE IF NOT EXISTS rentals (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_phone VARCHAR(15) NOT NULL,
    vehicle_name VARCHAR(100) NOT NULL,
    rent_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    return_date TIMESTAMP NULL,
    price_per_day NUMERIC(10,2) NOT NULL,
    total_days INT DEFAULT 1,
    total_price NUMERIC(10,2) NOT NULL,
    status VARCHAR(50) DEFAULT 'Booked'
);

-- Insert sample data
INSERT INTO rentals 
(customer_name, customer_phone, vehicle_name, price_per_day, total_days, total_price, status)
VALUES
('Rahul Sharma', '9876543210', 'Swift Car', 1000, 2, 2000, 'Booked'),
('Amit Patil', '9876543211', 'Honda Bike', 500, 1, 500, 'Booked'),
('Sneha Joshi', '9876543212', 'i20 Car', 1200, 3, 3600, 'Booked');

-- Create vehicles table only if it doesn't exist
CREATE TABLE IF NOT EXISTS vehicles (
    id SERIAL PRIMARY KEY,
    vehicle_name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    price_per_day NUMERIC(10,2),
    availability VARCHAR(20) DEFAULT 'Available',
    image_url TEXT
);

-- View data
SELECT * FROM rentals;
