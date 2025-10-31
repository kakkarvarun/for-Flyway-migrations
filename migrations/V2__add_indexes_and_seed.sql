-- Add a composite index for faster queries
ALTER TABLE healthdata
  ADD INDEX idx_patient_ts (patient_id, reading_ts);

-- Seed a couple of rows so you can see data in Adminer
INSERT INTO healthdata (patient_id, reading_type, reading_value)
VALUES
  ('P-1001', 'heart_rate', 72.0),
  ('P-1002', 'blood_pressure_systolic', 118.0);
