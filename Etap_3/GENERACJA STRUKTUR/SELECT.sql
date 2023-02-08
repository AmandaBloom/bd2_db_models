set echo on
set linesize 300
set pagesize 500
spool BD2C038_TEST.LIS;

select USER from dual;

-- Wartości certyfikacji dla Systemu Operacyjnego Windows 7 wersja 7.11
select Systemy_Operacyjne.Nazwa as "Nazwa OS", Platformy.Numer_Wersji as "Numer Wersji OS", Produkty.Nazwa as "Nazwa Produktu", Wersje_Produktu.Numer_Wersji as "Numer Wersji Produktu", Certyfikacje.Wartosc as "Wartosc Cert", Certyfikacje.Data_Uzyskania as "Data uzyskania", Certyfikacje.Data_Wygasniecia as "Data wygasniecia"
from Certyfikacje
join Platformy on Platformy.ID_Systemu = Certyfikacje.ID_Systemu
join Wersje_Produktu on Wersje_Produktu.ID_Produktu = Certyfikacje.ID_Produktu
join Produkty on Produkty.ID_Produktu = Wersje_Produktu.ID_Produktu
join Systemy_Operacyjne on Systemy_Operacyjne.ID_Systemu = Platformy.ID_Systemu 
WHERE Platformy.Numer_Wersji = '7.11';

-- Wszystkie wersje Systemu Operacyjnego Windows 7 
select Systemy_Operacyjne.Nazwa as "Nazwa OS", Platformy.Numer_Wersji as "Numer Wersji"
from Systemy_Operacyjne
join Platformy on Systemy_Operacyjne.id_systemu = Platformy.id_systemu
where Systemy_Operacyjne.Nazwa = 'Windows 7';

spool off