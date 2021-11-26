from django.db import models
from django.db.models.deletion import CASCADE

class Pharmacy(models.Model):
    p_id = models.IntegerField(primary_key=True)
    p_name = models.CharField(max_length=100, null = False)
    p_address = models.CharField(max_length=100, null = False)
    
    class Meta:
        db_table = 'pharmacy'

class Employee(models.Model):
    e_ssn = models.IntegerField(primary_key=True)
    e_name = models.CharField(max_length=100, null = False)
    p_id = models.IntegerField()
    
    class Meta:
        db_table = 'employee'

class Doctor(models.Model):
    d_id = models.IntegerField(primary_key=True)
    d_name = models.CharField(max_length=50, null = False)
    d_hospital = models.CharField(max_length=100, null = False)

    class Meta:
        db_table = 'doctor'

class Manufacturer(models.Model):
    f_id = models.IntegerField(primary_key=True)
    f_name = models.CharField(max_length=50, null = False)
    f_phone_num = models.CharField(max_length=10)
    f_address = models.CharField(max_length=100)

    class Meta:
            db_table = 'manufacturer'


class Customer(models.Model):
    c_ssn = models.IntegerField(primary_key=True)
    c_name = models.CharField(max_length=50, null = False)
    c_sex = models.CharField(max_length=10, null = False)
    c_phone = models.CharField(max_length=10, null = False)
    c_address = models.CharField(max_length=50, null = False)

    class Meta:
            db_table = 'customer'


class Medicine(models.Model):
    m_id = models.IntegerField(primary_key=True)
    m_name = models.CharField(max_length=100, null = False)
    m_price = models.IntegerField(null = False)
    m_expiration_date = models.DateField(null = False)
    e_ssn = models.IntegerField()
    c_ssn = models.IntegerField()
    p_id = models.IntegerField()
    f_id = models.IntegerField()
    purchase_date = models.DateField()

    class Meta:
            db_table = 'medicine'



class Prescription_Medicine(models.Model):
    m_id = models.IntegerField(primary_key=True)
    d_id = models.IntegerField()

    class Meta:
            db_table = 'prescription_medicine'


class See(models.Model):
    d_id = models.IntegerField()
    c_ssn = models.IntegerField()

    class Meta:
            db_table = 'see'


class Contect(models.Model):
    p_id = models.IntegerField()
    f_id = models.IntegerField()

    class Meta:
        db_table = 'contect'

