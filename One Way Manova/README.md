# **Project Overview**

Inflasi merupakan suatu hal yang tidak dapat dihindari oleh pelaku ekonomi. Salah satu cara untuk melawan arus inflasi adalah dengan investasi. Pemilihan instrumen yang tepat oleh investor diharapkan dapat memberikan *return* yang mengalahkan laju inflasi.

Saham merupakan instrumen investasi yang populer diperbincangkan di masyarakat. Investor dapat memilih hendak membeli saham di bidang (sektor) perbankan, tambang, industri, dan lain-lain. Di Indonesia sendiri terdapat 11 sektor saham yang tercatat di BEI. Seperti sebuah toko, kesebelas sektor ini mempunyai *value* yang berbeda. Investor akan memilih saham yang berada di sektor yang mempunyai *value* lebih daripada sektor lain.

Dikutip dari situs https://snips.stockbit.com/investasi/rasio-keuangan-ini-dalam-analisis-fundamental-saham ada beberapa rasio keuangan yang dapat digunakan oleh investor untuk menentukan saham mana yang harus dibeli, beberapa diantaranya adalah


*  Price To Earning Ratio (PER). Rasio ini merupakan cara membandingkan harga saham terhadap laba perusahaan. Semakin kecil nilai PER maka semakin murah pula harga saham perusahaan tersebut.

* Price To Book Value (PBV). Rasio harga saham terhadap nilai buku perusahaan. PBV $> 1$ artinya saham itu mahal, dan PBV $<1$ berarti saham itu murah. Namun kenyataannya rata-rata perusahaan yang baik itu PBV nya sudah hampir pasti menyentuh di atas dari 1.

* Debt To Equity Ratio (DER). Perbandingan antara hutang dengan modal perusahaan. Skemanya bila DER $< 100\%$ maka utang lebih kecil dari pada modal. Lalu bila DER $> 100\%$ maka utang lebih besar dari pada modal.

Selanjutnya menggunakan one way MANOVA akan dibandingkan rata-rata ketiga nilai ini pada empat sektor yaitu Financial, Basic Material, Industrial, dan Energy. Data yang digunakan adalah data pada bulan September 2023 yang diambil dari link : https://www.idx.co.id/id/data-pasar/laporan-statistik/statistik/.

Diambil 12 saham yang mewakili keempat sektor yang dipilih dengan mengambil 12 saham dengan ekuitas tertinggi tiap sektor. Ekuitas perusahaan sendiri merupakan selisih antara aset dan kewajiban yang ada. Diperoleh data sebagai berikut

<img width="264" alt="konteks3_1" src="https://github.com/user-attachments/assets/68aa8096-6f08-4a44-9fce-e9004b1b9f7c" />

<img width="291" alt="konteks3_2" src="https://github.com/user-attachments/assets/f650da1e-09ad-4196-8df1-8762b02375e5" />

# **Project Method**
Metode yang digunakan pada projek ini adalah materi Bab 6 pada buku "*Methods of Multivariate Analysis*", Oleh  ALVIN C. RENCHER yaitu menggunakan one way MANOVA. Dari 4 sektor diambil 12 perusahaan yang akan diobservasi dan dicari rata-rata tiap variabelnya. Selanjutnya dengan menggunakan one way MANOVA akan diuji apakah terdapat perbedaan yang signifikan pada suatu sektor. Pada projek ini digunakan bahasa pemrograman R.
