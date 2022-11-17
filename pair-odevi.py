dersSayisi = int(input("Kaç tane ders notu gireceksiniz?"))

passedExams = 0
failedExams = 0
for i in range(dersSayisi):
    vizeNotu = int(input(f"{i+1}. dersiniz için vize notunuzu giriniz."))
    finalNotu = int(input(f"{i+1}. dersiniz için final ders notunuzu giriniz."))
    toplamDersnotu = (vizeNotu * 0.4) + (finalNotu * 0.6)
    if toplamDersnotu >= 50:
        passedExams += 1
    else:
        failedExams += 1

print(f"{passedExams} adet dersten geçtiniz. {failedExams} adet dersten kaldınız.")
