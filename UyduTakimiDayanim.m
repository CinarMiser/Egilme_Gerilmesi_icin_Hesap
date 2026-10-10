clc, clearvars

yukseklikyogunluktablosu = [0,1.22500; 500,1.1673 ;1000,1.11164; 1500,1.0581 ; 2000,1.00649 ;3000,1.00649; 4000,0.8194; 5000,0.7364];
SuruklenmeKats = 1.28;

yukseklik = yukseklikyogunluktablosu(:,1);
yogunluk = yukseklikyogunluktablosu(:,2);

istyukseklik = input("Ne kadar yükseklikte hesap yapmak istiyorsunuz:");


hesaplananyogunluk = interp1(yukseklik,yogunluk,istyukseklik,"linear");


istenenalan = input("Ne kadarlık bir alan ile hesap yapmak istiyorsun(m^2 cinsinden yazınız):");
istenenhiz = input("Ne kadarlık bir hız ile düşüş planlıyorsunuz:");
uzunluk = input("plakanın uzunluğu ne kadar olacak (m cinsinden yazınız):");
kalinlik = input("plakanın kalınlığı ne kadar olacak(m cinsinden yazınız):");


havadirenci = 0.5*hesaplananyogunluk*istenenhiz*istenenhiz*istenenalan*SuruklenmeKats;


eylemsizlikmomenti = (uzunluk*kalinlik^3)/12;
moment = (uzunluk/2)*havadirenci;
gerilme = (moment*(kalinlik/2))/eylemsizlikmomenti;
gerilmempa = gerilme / (10^6);




fprintf("girilen yükseklikte hesaplanan hava yoğunluğu: %.4f \n", hesaplananyogunluk)
fprintf("girilen yükseklikte hesaplanan hava direnci: %.4f \n", havadirenci)
fprintf("girilen yükseklikte hesaplanan eğilme gerilmesi değeri: %.4f", gerilmempa)
fprintf(" mpa") 