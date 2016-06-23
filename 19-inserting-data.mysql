-- 第19章 插入数据

-- insert
INSERT INTO customers
  VALUES (NULL,
    'Pep E. LaPew',
    '100 Main Street',
    'Coyote Inc.',
    '200 Maple Lane',
    'Detroit',
    'MI',
    '44444',
    'USA',
    'Y Lee',
    'ylee@coyote.com'
  );

-- more safe insert
INSERT INTO customers (cust_id,
     cust_name,
     cust_address,
     cust_city,
     cust_state,
     cust_zip,
     cust_country,
     cust_contact,
     cust_email
  ) VALUES (NULL,
    'Pep E. LaPew',
    '100 Main Street',
    'Coyote Inc.',
    '200 Maple Lane',
    'Detroit',
    'MI',
    '44444',
    'USA',
    'Y Lee',
    'ylee@coyote.com'
  );

-- multiple values
INSERT INTO customers (cust_id,
     cust_name,
     cust_address,
     cust_city,
     cust_state,
     cust_zip,
     cust_country,
     cust_contact,
     cust_email
  ) VALUES (NULL,
    'Pep E. LaPew',
    '100 Main Street',
    'Coyote Inc.',
    '200 Maple Lane',
    'Detroit',
    'MI',
    '44444',
    'USA',
    'Y Lee',
    'ylee@coyote.com'
  ), VALUES(10002,
    'Mouse House',
    '333 Fromage Lane',
    'Columbus',
    'OH',
    '43333',
    'USA',
    'Jerry Mouse'
  );

-- insert from other table
INSERT INTO customers (cust_id,
     cust_name,
     cust_address,
     cust_city,
     cust_state,
     cust_zip,
     cust_country,
     cust_contact,
     cust_email
  )
  SELECT cust_id,
     cust_name,
     cust_address,
     cust_city,
     cust_state,
     cust_zip,
     cust_country,
     cust_contact,
     cust_email
  FROM custnew;
