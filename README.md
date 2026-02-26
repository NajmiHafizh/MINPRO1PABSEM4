# MINI PROJECT 1 PEMROGRAMAN APLIKASI BERGERAK

- NAJMI HAFIZH MAULUDAN ZAIN
- 2409116028
- SISTEM INFORMASI A`24

## Deskripsi Aplikasi

Aplikasi yang saya buat bertema Daftar Belanja. Aplikasi ini digunakan untuk membantu pengguna mencatat barang-barang yang ingin dibeli agar tidak lupa saat berbelanja.

Di dalam aplikasi ini, pengguna bisa menambahkan data barang berupa nama barang, jumlah, dan kategori. Semua data yang sudah dimasukkan akan langsung tampil di halaman utama dalam bentuk daftar.

Aplikasi ini dibuat menggunakan Flutter dan terdiri dari beberapa file utama, yaitu:
- main.dart sebagai file utama untuk menjalankan aplikasi,
- HomePage untuk menampilkan daftar barang,
- FormPage untuk menambahkan atau mengedit data,
- dan ShoppingItem sebagai model untuk menyimpan struktur data barang.

## Fitur Aplikasi

Beberapa fitur yang tersedia dalam aplikasi ini antara lain:
1. Menambahkan Barang
Pengguna dapat menekan tombol tambah (+) di pojok kanan bawah untuk masuk ke halaman form. Setelah mengisi semua data dan menekan tombol simpan, data akan langsung muncul di halaman utama.
2. Menampilkan Daftar Barang
Semua barang yang sudah ditambahkan akan ditampilkan dalam bentuk list. Setiap item menampilkan nama barang, jumlah, dan kategori.
3. Mengedit Barang
Jika ingin mengubah data, pengguna bisa menekan ikon edit pada item tertentu. Data lama akan otomatis muncul di form, lalu bisa diperbarui dan disimpan kembali.
4. Menghapus Barang
Pengguna juga bisa menghapus data dengan menekan ikon delete. Data akan langsung hilang dari daftar.

## Widget yang Digunakan

Dalam pembuatan aplikasi ini, saya menggunakan beberapa widget utama dari Flutter, seperti:
- MaterialApp untuk mengatur struktur dasar aplikasi.
- Scaffold sebagai kerangka tampilan halaman.
- AppBar untuk menampilkan judul aplikasi.
- ListView.builder untuk menampilkan daftar barang secara dinamis.
- Card dan ListTile untuk menampilkan setiap item agar terlihat rapi.
- TextField untuk input data di halaman form.
- ElevatedButton sebagai tombol simpan.
- FloatingActionButton untuk tombol tambah barang.
- Get.to() untuk berpindah halaman.
- Get.back() untuk kembali ke halaman sebelumnya sekaligus mengirim data.
- setState() untuk memperbarui tampilan ketika data berubah

---------------------------------------------------------------------------------------------------------------------------------------

## 1. Tampilan beranda

<img width="324" height="698" alt="image" src="https://github.com/user-attachments/assets/8b0f529f-1c84-4206-a225-f4c1aaed134a" />

Ini adalah halaman pertama yang muncul saat aplikasi dibuka. Bisa dibilang ini adalah pusat dari aplikasi.

Di bagian atas ada judul “Daftar Belanja” yang menandakan bahwa ini adalah halaman utama.
Di bagian tengah terlihat tulisan “Belum ada daftar belanja”. Tulisan ini muncul karena memang belum ada data yang ditambahkan. Jadi aplikasi memberi tahu pengguna bahwa daftar masih kosong.

Di pojok kanan bawah ada tombol (+).
Tombol ini berfungsi untuk menambahkan barang baru. Ketika ditekan, pengguna akan diarahkan ke halaman form.

Kalau nantinya sudah ada data, maka tulisan “Belum ada daftar belanja” akan hilang dan diganti dengan daftar barang yang sudah dimasukkan. Setiap barang nantinya bisa diedit atau dihapus.

Intinya, halaman ini berfungsi untuk:
- Melihat daftar barang
- Menghapus barang
- Mengedit barang
- Masuk ke halaman tambah barang

---------------------------------------------------------------------------------------------------------------------------------------

## 2. Tampilan ketika ingin melakukan proses penginputan daftar belanja

<img width="324" height="699" alt="image" src="https://github.com/user-attachments/assets/03cf2ecf-c250-43bc-9957-78619d4dc0fc" />

Halaman ini muncul ketika tombol (+) ditekan.

Di bagian atas ada judul “Tambah Barang” dan tombol panah kembali. Tombol panah ini bisa digunakan kalau pengguna ingin kembali tanpa menyimpan data.

Di bagian tengah ada tiga kolom input:
- Nama Barang
- Jumlah Barang
- Kategori

Di bawahnya ada tombol Simpan.

Pada gambar ini, semua kolom masih kosong. Artinya pengguna belum mengisi data apa pun.

Kalau tombol Simpan ditekan dalam kondisi kosong, aplikasi tidak akan menyimpan data. 

---------------------------------------------------------------------------------------------------------------------------------------

## 3. Tampilan saat melakukan penginputan daftar belanja

<img width="320" height="699" alt="image" src="https://github.com/user-attachments/assets/cae842c3-5eb4-4823-b9f9-c865d9803f8b" />

Tampilan ini masih merupakan halaman yang sama dengan tampilan sebelumnya, tetapi dalam kondisi data sudah diisi.

Contohnya:
- Nama Barang: sosis goreng
- Jumlah Barang: 10
- Kategori: makanan ringan

Ini menunjukkan bahwa pengguna sudah memasukkan data ke dalam setiap kolom.

Jika tombol Simpan ditekan:
Data akan dikirim kembali ke halaman utama.
Data tersebut akan langsung muncul dalam daftar belanja.
Halaman akan kembali ke Home secara otomatis.

## Tampilan daftar belanja yang telah dilakukan penginputan 

<img width="320" height="698" alt="image" src="https://github.com/user-attachments/assets/0b31c6ce-72ef-4427-8170-06c96c96471a" />

Setelah menekan tombol simpan maka Daftar Belanja sudah terisi satu data, yaitu sosis goreng.

Apa yang dapat terlihat di halaman ini:
- Judul halaman: Daftar Belanja
- Satu kartu (card) berisi data barang
- Tombol tambah (+) di pojok kanan bawah

Informasi dalam kartu terdapat:
- Nama barang
- Jumlah barang
- Kategori barang

Contoh yang terlihat:
- sosis goreng Jumlah: 10 | Kategori: makanan ringan

Di sebelah kanan kartu ada dua ikon:
- pensil itu edit untuk mengubah data
- keranjang sampah itu hapus untuk menghapus data

Tampilan halaman ini menunjukkan kondisi ketika pengguna baru menambahkan satu barang.

---------------------------------------------------------------------------------------------------------------------------------------

## 4.Tampilan daftar belanja yang telah ditambahkan

<img width="323" height="697" alt="image" src="https://github.com/user-attachments/assets/72a5f0b1-e490-4c46-b4b8-cfe0992dcd95" />

Tampilan halaman ini menunjukkan kondisi ketika pengguna telah menambahkan tiga barang.

- sosis goreng
- nasi goreng
- thai tea

Yang bisa diperhatikan:
- Data ditampilkan berurutan dari atas ke bawah.
- Tampilan tetap rapi dan konsisten.
- Tombol tambah (+) tetap tersedia untuk menambahkan barang baru.
- Semakin banyak data yang dimasukkan, daftar akan terus memanjang ke bawah.

---------------------------------------------------------------------------------------------------------------------------------------

## 5. Tampilan daftar belanja sebelum diupdate

<img width="323" height="697" alt="image" src="https://github.com/user-attachments/assets/72a5f0b1-e490-4c46-b4b8-cfe0992dcd95" />

Di halaman ini terlihat daftar belanja yang sudah berisi tiga item:
- sosis goreng
- nasi goreng
- thai tea

Setiap item ditampilkan dalam bentuk kartu agar terlihat rapi. Di dalamnya ada informasi:
- Nama barang
- Jumlah
- Kategori

Di sebelah kanan setiap kartu ada dua ikon:
- pensil untuk edit atau mengubah data
- keranjang sampah untuk hapus →atau menghapus data

Karena ini proses Update, maka langkahnya dimulai saat pengguna menekan tombol Edit, misalnya pada item thai tea.

## Halaman ini adalah proses untuk melakukan update pada isi daftar belanja

<img width="323" height="701" alt="image" src="https://github.com/user-attachments/assets/c82fa118-bb4c-498b-8c74-e72857cf0617" />

Setelah tombol edit ditekan, pengguna diarahkan ke halaman Edit Barang.

Di halaman ini:
- Form sudah otomatis terisi dengan data lama.
- Pengguna tinggal mengubah bagian yang diperlukan.
- Ada tombol Simpan untuk menyimpan perubahan.

Contohnya:
- Nama barang diubah dari thai tea menjadi matcha.
- Jumlah diubah dari 10 menjadi 15.
- Kategori tetap minuman.

Artinya, sistem berhasil mengambil data sebelumnya dan menampilkannya di form, jadi pengguna tidak perlu mengetik ulang dari awal.

Setelah selesai mengubah, pengguna dapat menekan tombol Simpan.

## Halaman ini merupakan daftar belanja yang telah diupdate

<img width="324" height="702" alt="image" src="https://github.com/user-attachments/assets/90b9e55c-43c2-4a67-bf1a-da3e270660ac" />

Setelah disimpan, pengguna kembali ke halaman Daftar Belanja.

Sekarang data yang tadi diubah sudah tampil dengan informasi terbaru:
- matcha
- Jumlah: 15
- Kategori: minuman

daftar belanja telah diupdate atau telah diperbarui

---------------------------------------------------------------------------------------------------------------------------------------

## 6. Tampilan daftar belanja sebelum didelete

<img width="324" height="702" alt="image" src="https://github.com/user-attachments/assets/90b9e55c-43c2-4a67-bf1a-da3e270660ac" />

Pada tampilan, daftar belanja masih berisi tiga item:
- sosis goreng
- nasi goreng
- matcha

Di setiap item ada dua ikon di sebelah kanan:
- pensil untuk edit
- keranjang sampah untuk hapus

Kalau pengguna ingin menghapus salah satu barang, misalnya sosis goreng, cukup tekan ikon keranjang sampah di sampingnya.

## Tampilan daftar belanja sesudah didelete 

<img width="323" height="702" alt="image" src="https://github.com/user-attachments/assets/14b44e11-2a6c-42b9-a0e2-e4c596a1050f" />

Pada tampilan kedua terlihat bahwa sosis goreng sudah tidak ada lagi.

Sekarang hanya tersisa:
- nasi goreng
- matcha

Artinya, data benar-benar terhapus dari daftar, Jumlah item berkurang dan tampilan langsung menyesuaikan secara otomatis.

Tidak perlu refresh atau keluar masuk aplikasi. Begitu tombol hapus ditekan, daftar langsung diperbarui.

---------------------------------------------------------------------------------------------------------------------------------------

