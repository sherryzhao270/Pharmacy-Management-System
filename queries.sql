SELECT m.purchase_date, m.m_name, employee.e_name, customer.c_name, pharmacy.p_name, m.m_price, m.d_name
FROM ((medicine FULL OUTER JOIN prescription_medicine ON medicine.m_id = prescription_medicine.m_id) as med 
FULL OUTER JOIN doctor ON med.d_id = doctor.d_id) as m,
employee, customer, pharmacy
WHERE employee.e_ssn = m.e_ssn and customer.c_ssn = m.c_ssn and pharmacy.p_id = m.p_id

SELECT medicine.m_name, pharmacy.p_name, count(medicine.m_id), min(medicine.m_price)  
FROM medicine, pharmacy 
WHERE medicine.p_id = pharmacy.p_id and medicine.c_ssn IS NULL
GROUP BY medicine.m_name, pharmacy.p_name

SELECT p1.p_name
FROM pharmacy as p1
WHERE NOT EXISTS (
    SELECT distinct(medicine.m_name)
    FROM medicine
    EXCEPT
    SELECT distinct(pm.m_name)
    FROM (pharmacy natural join medicine) as pm
    WHERE pm.p_id = p1.p_id
)

SELECT distinct(manufacturer.f_name)
FROM manufacturer natural join medicine
WHERE medicine.m_name NOT IN (
    SELECT distinct(medicine.m_name)
    FROM medicine natural join prescription_medicine
)