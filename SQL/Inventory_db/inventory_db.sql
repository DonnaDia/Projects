-- checking db results
select * from parts limit 10;

-- checking all code is present and unique
alter table parts 
alter column code set not null;

alter table parts 
add unique(code);

-- adding description where it is missing
UPDATE parts
SET description = 'Not Available'
WHERE description is null;

-- adding a constraint
alter table parts
alter column description set not null;

INSERT INTO parts VALUES (54, 'This is a test device', 'V1-009', 9);

-- checking db results
select * from reorder_options limit 10;

-- adding a constraint for price_usd and quantity
alter table reorder_options
alter column price_usd set not null,
alter column quantity set not null;

-- checking positive values
alter table reorder_options
add check (price_usd > 0 and quantity > 0);

-- checking price range/unit
alter table reorder_options
add check (price_usd/quantity > 0.02 and price_usd/quantity < 25.00);
 
-- relating parts with reorder_options tables 
ALTER TABLE parts
ADD PRIMARY KEY (id);

ALTER TABLE reorder_options
ADD FOREIGN KEY (part_id) REFERENCES parts (id);

ALTER TABLE locations 
ADD CHECK (qty > 0);

ALTER TABLE locations
ADD UNIQUE (id, part_id);

ALTER TABLE locations
ADD FOREIGN KEY (part_id) REFERENCES parts (id);

ALTER TABLE parts
ADD FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id);

-- adding new manufacturer 
INSERT INTO manufacturers VALUES (11, 'Pip-NNC Industrial');

-- replacing old manufacturers 'Pip Industrial' and 'NNC Manufacturing' 
UPDATE parts
SET manufacturer_id = 11
WHERE manufacturer_id IN (1, 2);
