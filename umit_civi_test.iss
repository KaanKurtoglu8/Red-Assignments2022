Sub Main
	Call myDatabase()
End Sub

Function myDatabase

	Dim NewTable As Table
	Set NewTable = Client.NewTableDef
	
	Dim AddedField As Field
	Set myField = NewTable.NewField
	myField.Name = "ACIKLAMALAR"
	myField.Type = WI_CHAR_FIELD
	myField.Length = 200
	
	NewTable.AppendField myField
	
	Set myField = NewTable.NewField
	myField.Name = "CARI_DONEM"
	myField.Type = WI_NUM_FIELD
	NewTable.AppendField myField
	
	Set myField = NewTable.NewField
	myField.Name = "ONCEKI_DONEM"
	myField.Type = WI_NUM_FIELD
	NewTable.AppendField myField
	' Change the table settings to allow writing.
	NewTable.Protect = False
	
	' Create the database.
	Dim db As Database
	Set db = Client.NewDatabase("umit_civi_test.IMD", "", NewTable)
	
	' Obtain the recordset.
	Dim rs As RecordSet
	Set rs = db.RecordSet
	
	' Obtain a new record.
	Dim rec As Record
	Set rec = rs.NewRecord
	
	' Use the field name method to add data.
	rec.SetCharValue "ACIKLAMALAR", "Esas Faaliyetlerden Nakit Akislari [abstract]"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "D�nem Kari (Zarari) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "D�nem Kari (Zarari) Mutabakati Ile Ilgili D�zeltmeler [abstract]"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Amortisman ve Itfa Gideriyle Ilgili D�zeltmeler"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Deger D�s�kl�g� (Iptali) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "Karsiliklarla Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Faiz Gelirleri ve Giderleriyle Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Ger�eklesmemis Kur Farklariyla Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Ger�ege Uygun Deger Kayiplari (Kazan�lari) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Stoklardaki Azalislar (Artislar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Ticari Alacaklardaki Azalislar (Artislar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Faaliyetler Ile Ilgili Diger Alacaklardaki Azalislar (Artislar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Ticari Bor�lardaki Artislar (Azalislar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Faaliyetler Ile Ilgili Diger Bor�lardaki Artislar (Azalislar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Ertelenmis Gelirlerdeki Artislar (Azalislar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Nakit Disi Kalemlere Iliskin Diger D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "Duran Varliklarin Elden �ikarilmasindan Kayiplar (Kazan�lar) Ile Ilgili D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "Yatirim ya da Finansman Faaliyetlerinden Nakit Akislarina Neden Olan Diger Kalemlere Iliskin D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "D�nem Kari (Zarari) Mutabakati Ile Ilgili Diger D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "D�nem Kari (Zarari) Mutabakati Ile Ilgili Toplam D�zeltmeler (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "Faaliyetlerden Kaynaklanan Net Nakit Akisi (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "�denen Kar Paylari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Alinan Kar Paylari"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "�denen Faiz(-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Alinan Faiz"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Vergi Iadeleri (�demeleri) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec

	rec.SetCharValue "ACIKLAMALAR", "Diger Nakit Girisleri (�ikislari) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Esas Faaliyetlerden Net Nakit Akisi (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Yatirim Faaliyetlerinden Nakit Akislari [abstract]"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Bagli Ortakliklardaki Paylarin Kontrol Kaybina Neden Olacak Sekilde Elden �ikarilmasindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Bagli Ortaklik Ediniminden Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Istirak ve M�sterek Girisimlerdeki Paylarin Elden �ikarilmasindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Istirak ve M�sterek Girisim Paylarinin Ediniminden Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Baska Isletme veya Fon Paylarinin veya Bor�lanma Ara�larinin Elden �ikarilmasindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Baska Isletme veya Fon Paylarinin veya Bor�lanma Ara�larinin Ediniminden Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Maddi ve Maddi Olmayan Duran Varliklarin Satisindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Maddi ve Maddi Olmayan Duran Varlik Alimindan Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Diger Uzun Vadeli Varliklarin Satisindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Diger Uzun Vadeli Varlik Alimlarindan Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Verilen Nakit Avans ve Bor�lar (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Verilen Nakit Avans ve Bor�lardan Geri �demeleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "T�rev Ara�lardan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "T�rev Ara�lardan Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Devlet Tesviklerinden Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Alinan Kar Paylari"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "�denen Faiz(-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Alinan Faiz"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Vergi Iadeleri (�demeleri) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Diger Nakit Girisleri (�ikislari) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Yatirim Faaliyetlerinden Net Nakit Akisi (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Finansman Faaliyetlerinden Nakit Akislari [abstract]"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Bagli Ortakliklardaki Paylarin Kontrol Kaybina Neden Olmayacak Sekilde Elden �ikarilmasindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Bagli Ortakliklarin Ilave Paylarinin Ediniminden Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "�zkaynak Ara�larinin Ihracindan veya Sermaye Artirimindan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Isletmenin Kendi Paylarini ve Diger �zkaynak Ara�larini Almasiyla veya Sermayenin Azaltilmasiyla Ilgili Nakit �ikislar (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Bor�lanmadan Kaynaklanan Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Bor� �demelerinden Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Finansal Kiralama Bor�larindan Nakit �ikislari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Devlet Tesviklerinden Nakit Girisleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "�denen Kar Paylari (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "�denen Faiz (-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Vergi Iadeleri (�demeleri) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Diger Nakit Girisleri (�ikislari) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Finansman Faaliyetlerinden Net Nakit Akisi (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Kur Farklarinin Etkisinden �nce Nakit ve Nakit Benzerlerindeki Safi Artis (Azalis) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Kur Farklarinin Nakit ve Nakit Benzerleri �zerindeki Etkisi (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "Nakit ve Nakit Benzerlerindeki Safi Artis (Azalis) (+/-)"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec
	
	rec.SetCharValue "ACIKLAMALAR", "D�nem Basi Nakit ve Nakit Benzerleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec	
	
	rec.SetCharValue "ACIKLAMALAR", "D�nem Sonu Nakit ve Nakit Benzerleri"
	rec.SetNumValue "CARI_DONEM", 0
	rec.SetNumValue "ONCEKI_DONEM", 0
	rs.AppendRecord rec	
	' Protect the table before you commit it.
	NewTable.Protect = True
	
	' Commit the database.
	db.CommitDatabase
	' Open the database.
	Client.OpenDatabase "umit_civi_test.IMD"
	' Clear the memory.
	
	Set db = Nothing
	Set AddedField = Nothing
	Set NewTable = Nothing
	
End Function
	