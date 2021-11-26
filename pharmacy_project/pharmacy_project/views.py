from django.db import connections
from django.shortcuts import render
from pharmacy_project.models import *
from django.db import connection


def showdata(request):
    results = Pharmacy.objects.all()
    return render(request, 'test.html', {'data':results})
'''
def showPharmacyEmpolyee(request):
    sql = "SELECT * FROM pharmacy, employee WHERE employee.p_id = pharmacy.p_id"
    str = ' and '
    if request.method == 'POST':
        employee_name = request.POST.get('employee-name')
        pharmacy_name = request.POST.get('pharmacy-name')
        print(type(employee_name))
        if employee_name != '':
            sql = sql + str + "employee.e_name = '" + employee_name + "'"
        if pharmacy_name != '':
            sql = sql + str + "pharmacy.p_name = '" + pharmacy_name + "'"
    print(sql)
    #sql = "SELECT * FROM pharmacy, employee WHERE employee.p_id = pharmacy.p_id"
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()
    return render(request, 'test.html', {'data':results})
'''

def tradeHistroyView(request):
    sql = "SELECT * FROM medicine, prescription_medicine, customer, employee, doctor WHERE employee.e_ssn = medicine.e_ssn and customer.c_ssn = medicine.c_ssn"
    str = ' and '
    if request.method == 'POST':
        customer_name = request.POST.get('customer-name')
        employee_name = request.POST.get('employee-name')
        medicine_name = request.POST.get('medicine-name')
        date_later_than = request.POST.get('date-later-than')
        date_before = request.POST.get('date-before')
        #print(type(employee_name))
        if customer_name != '':
            sql = sql + str + "customer.c_name = '" + customer_name + "'"
        if employee_name != '':
            sql = sql + str + "employee.e_name = '" + employee_name + "'"
        if medicine_name != '':
            sql = sql + str + "medicine.m_name = '" + medicine_name + "'"
        if date_later_than != '':
            sql = sql + str + "medicine.purchase_date >= '" + date_later_than + "'"
        if date_before != '':
            sql = sql + str + "medicine.purchase_date <= '" + date_before + "'"
    #print(sql)
    #sql = "SELECT * FROM pharmacy, employee WHERE employee.p_id = pharmacy.p_id"
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()
    return render(request, 'trade_history.html', {'data':results})

def storageView(request):
    sql = "SELECT count(medicine.m_id) FROM medicine WHERE medicine.c_ssn = null"
    str = ' and '
    if request.method == 'POST':
        pharmacy_name = request.POST.get('pharmacy-name')
        medicine_name = request.POST.get('medicine-name')
        #print(type(employee_name))
        if pharmacy_name != '':
            sql = sql + str + "medicine.p_name = '" + pharmacy_name + "'"
        if medicine_name != '':
            sql = sql + str + "medicine.m_name = '" + medicine_name + "'"
    sql = sql + ' GROUP BY medicine.m_name '
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()
    return render(request, 'pharmacy_storage.html', {'data':results})

