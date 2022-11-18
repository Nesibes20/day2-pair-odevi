countCourse = int(input("Ders Sayısı = "))
courses = []
passed = 0
failed = 0
fail = []
success = []

for i in range(0, countCourse):

    course = (input("ders ismi = "))
    e1 = float(input("vize notu = "))
    e2 = float(input("final notu = "))
    e1y = e1.4
    e2y = e2.6
    totalGrade = e1y + e2y
    if totalGrade < 50:
        failed += 1
        sonuc = "kaldınız."
        fail.append({"başarısız : " : course})
    else:
        passed += 1
        sonuc = "geçtiniz."
        success.append({"başarılı : " : course})


    courses.append({"ders ismi : ": course, "1. sınav notu": e1, "2. sınav notu": e2, "sonuç : ":sonuc})

for i in courses:
    print(i)
for i in success:
    print(i)
for i in fail:
    print(i)   