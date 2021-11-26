from django.db import connections
from django.shortcuts import render
from pharmacy_project.models import *
from django.db import connection


def showdata(request):
    results = Pharmacy.objects.all()
    return render(request, 'test.html', {'data':results})

def showPharmacyEmpolyee(request):
    sql = "SELECT * FROM pharmacy, employee WHERE employee.p_id = pharmacy.p_id"
    str = ' and '
    if request.method == 'POST':
        employee_name = request.POST.get('employee-name')
        print(type(employee_name))
        if employee_name != '':
            sql = sql + str + "employee.e_name = '" + employee_name + "'"
    print(sql)
    #sql = "SELECT * FROM pharmacy, employee WHERE employee.p_id = pharmacy.p_id"
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()
    return render(request, 'test.html', {'data':results})
