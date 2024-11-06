import 'package:flutter/material.dart';

class SettingAccount extends StatefulWidget {
  @override
  _SettingAccountState createState() => _SettingAccountState();
}

class _SettingAccountState extends State<SettingAccount> {
  // Controller untuk setiap field
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  // Fungsi untuk menampilkan pop-up konfirmasi
  void _showSaveConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Data Disimpan"),
          content: Text("Data Anda telah berhasil disimpan."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelola Akun"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian atas untuk foto, nama, dan universitas di tengah
            Center(
              child: Column(
                children: [
                  Icon(
                  Icons.account_circle, // Ikon avatar
                  size: 100, // Ukuran ikon yang sama dengan CircleAvatar sebelumnya
                  color: Colors.blueAccent, // Anda bisa mengganti warna sesuai kebutuhan
                ),
                  SizedBox(height: 16),
                  Text(
                    'Tabia',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Universitas Teknologi Yogyakarta',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),

            // Inputan untuk email
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),

            // Inputan untuk nama
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),

            // Inputan untuk nomor telepon
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),

            // Inputan untuk alamat
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_on),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 32),

            // Tombol untuk menyimpan
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aksi untuk menyimpan (misalnya validasi dan simpan data)
                  print("Data disimpan");
                  _showSaveConfirmationDialog(); // Menampilkan pop-up
                },
                child: Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
