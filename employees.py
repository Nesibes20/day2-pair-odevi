file = open("employees.txt","a+")


try:
    employees = int(input("Çalışan Sayısı: "))    
    for i in range(0, employees):
        employeeName = input("Çalışan İsmi:")
        employeeLastName = input("Çalışan Soyisim:")
        try:
            employeeSalary = float(input("Çalışan Maaşı: "))
        except:
            print("Maaş için sayı giriniz")    
        file.write(f"\n {employeeName} {employeeLastName} - {employeeSalary}")
    file.seek(0)
    print(file.read())
    file.close()    

except:
    print("Geçerli bir sayı giriniz")


file.close() 

file1 = open("employees.txt", "r")
print(file1.read())
file.close()


