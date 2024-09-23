use HastaneDB

select d.Adi,d.Soyadi,r.Randevu_Durumu,r.Randevu_Tarihi,t.Tahlil_Adi,t.Tahlil_Sonuc from Doktorlar d 
join Randevular r on d.ID = r.Doktor_ID
join Tahliller t on d.ID = t.Doktor_ID 
where d.Adi='Fatih' and d.Soyadi='Eraslan'

select SUM(Personel_Sayisi) as'Toplam Randevu Sayısı' from Bolumler

select COUNT(ID) as 'Toplam Aktif Randevu Sayısı'from Randevular where Randevu_Durumu = 'Aktif'

select * from Poliklinikler
where ID in(select ID from Doktorlar where Adi='Fatih')
