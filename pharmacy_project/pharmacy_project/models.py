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

