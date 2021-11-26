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
    sql_select = "SELECT m.purchase_date, m.m_name, employee.e_name, customer.c_name, pharmacy.p_name, m.m_price, m.d_name "
    sql_from = 'FROM ((medicine FULL OUTER JOIN prescription_medicine ON medicine.m_id = prescription_medicine.m_id) as med FULL OUTER JOIN doctor ON med.d_id = doctor.d_id) as m, employee, customer, pharmacy '
    sql_where = 'WHERE employee.e_ssn = m.e_ssn and customer.c_ssn = m.c_ssn and pharmacy.p_id = m.p_id '
    sql = sql_select + sql_from + sql_where
    str = ' and '
    if request.method == 'POST':
        customer_name = request.POST.get('customer-name')
        employee_name = request.POST.get('employee-name')
        medicine_name = request.POST.get('medicine-name')
        pharmacy_name = request.POST.get('pharmacy-name')
        date_later_than = request.POST.get('date-later-than')
        date_before = request.POST.get('date-before')
        #print(type(employee_name))
        if customer_name != '':
            sql = sql + str + "customer.c_name = '" + customer_name + "'"
        if employee_name != '':
            sql = sql + str + "employee.e_name = '" + employee_name + "'"
        if medicine_name != '':
            sql = sql + str + "m.m_name = '" + medicine_name + "'"
        if date_later_than != '':
            sql = sql + str + "m.purchase_date >= '" + date_later_than + "'"
        if date_before != '':
            sql = sql + str + "m.purchase_date <= '" + date_before + "'"
    #print(sql)
    #sql = "SELECT * FROM pharmacy, employee WHERE employee.p_id = pharmacy.p_id"
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()
    return render(request, 'trade_history.html', {'data':results})

def storageView(request):
    sql = "SELECT medicine.m_name, pharmacy.p_name, count(medicine.m_id), min(medicine.m_price)  FROM medicine, pharmacy WHERE medicine.p_id = pharmacy.p_id and medicine.c_ssn IS NULL"
    str = ' and '
    if request.method == 'POST':
        pharmacy_name = request.POST.get('pharmacy-name')
        medicine_name = request.POST.get('medicine-name')
        #print(type(employee_name))
        if pharmacy_name != '':
            sql = sql + str + "pharmacy.p_name = '" + pharmacy_name + "'"
        if medicine_name != '':
            sql = sql + str + "medicine.m_name = '" + medicine_name + "'"
    sql = sql + ' GROUP BY medicine.m_name, pharmacy.p_name '
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()
    return render(request, 'pharmacy_storage.html', {'data':results})

