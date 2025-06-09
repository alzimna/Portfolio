# **Project Overview**

Pada akhir tahun 2023, hubungan antara Palestina dan Israel memanas akibat penyerangan Israel di Gaza, Palestina. Penyerangan ini tidak hanya berdampak pada rakyat Palestina saja namun juga memberikan bekas luka kepada rakyat muslim di seluruh dunia. Hal ini memicu perlawanan dari seluruh negara muslim termasuk Indonesia sendiri.

Di Indonesia, santer terdengar pernyataan boikot terhadap produk yang diduga menyalurkan dana kepada Israel. Setelah kami lakukan investigasi di Twitter, perusahaan seperti Unilever dan KHC menjadi topik perbincangan teratas.

Projek ini merupakan projek yang dilakukan oleh saya dan 3 orang teman saya. Tujuan dari produk ini adalah menginvestigasi efek dari boikot melalui analisis sentimen di Twitter pada kenaikan harga sahan dari Unilever (UNVR) lau membandingkannya dengan perusahaan yang terkena boikot namun tidak menjadi trending topic di twitter seperti KHC.

# **Project Method**
Berikut ini langkah-langkah yang dilakukan pada projek kali ini.

1. Scrapping tweet dengan kata kunci "UNVR", "Unilever", "boikot unilever".
2. Data preprocessing seperti
  * Menghapus duplikat
  * Mengubah format tanggal
  * Menghilangkan simbol khusus seperti \r, \n, ", url, dan byte
  * Mengubah menjadi lower case
  * Menghapus simbol dan tanda baca
  * Menormalisasi kata
  * Menghapus kata tidak bermakna
  * Menghapus imbuhan
  * Tokenize data
3. Analisis data eksploratif
4. Mengambil data saham UNVR dan KHC dari yahoo finance
5. Melakukan analisis sentimen pada tiap tweet
6. Mengklasifikasikan hari berdasarkan kejadian Naik/Turunnya harga saham UNVR
7. Melakukan klasifikasi pada data yang dilengkapi polarity dan tidak untuk dibandingkan akurasinya. Model yang dipakai antara lain Regresi Logistik, Linear Discriminant Analysis (LDA), KNN, dan SVM.

Kesimpulan yang dapat diperoleh dari projek ini adalah **Polarity akan menaikkan akurasi model jika dibandingkan dengan data tanpa polaritas. Artinya analisis sentimen dapat membantu untuk menaikkan akurasi model biasa untuk mengklasifikasian Naik/Turunnya harga saham**
