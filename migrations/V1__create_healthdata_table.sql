-- Create a simple table to prove migrations work
CREATE TABLE healthdata (
  id INT AUTO_INCREMENT PRIMARY KEY,
  patient_id VARCHAR(50) NOT NULL,
  reading_type VARCHAR(50) NOT NULL,
  reading_value DECIMAL(10,2) NOT NULL,
  reading_ts TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
