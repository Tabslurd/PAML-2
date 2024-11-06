import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:flutter_application_1/setting_account.dart';

class Account2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Akun"),
      ),
      body: Column(
        children: [
          // Bagian atas untuk foto, nama, dan universitas
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Foto dengan border
                Icon(
                  Icons.account_circle, // Ikon avatar
                  size: 100, // Ukuran ikon yang sama dengan CircleAvatar sebelumnya
                  color: Colors.blueAccent, // Anda bisa mengganti warna sesuai kebutuhan
                ),
                SizedBox(height: 16),
                // Nama pengguna
                Text(
                  'Tabia',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                // Nama universitas
                Text(
                  'Universitas Teknologi Yogyakarta',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ),

          // ListTile untuk 'Kelola Akun', 'Notifikasi', 'Privacy Policy', dan 'Terms of Service'
          Expanded(
            child: ListView(
              children: [
                _buildListTile(context, 'Kelola Akun', Icons.account_circle),
                _buildListTile(context, 'Notifikasi', Icons.notifications),
                _buildListTile(context, 'Privacy Policy', Icons.security),
                _buildListTile(context, 'Terms of Service', Icons.description),
              ],
            ),
          ),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Akun',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.logout),
                label: 'Logout',
              ),
            ],
            currentIndex: 1, // Indeks yang aktif
            onTap: (int index) {
              if (index == 0) {
                // Navigasi ke halaman home
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              } else if (index == 2) {
                // Logika untuk logout
                Navigator.pop(context); // Kembali ke halaman login
              }
            },
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun ListTile dengan teks dan ikon
  Widget _buildListTile(BuildContext context, String title, IconData icon) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        if (title == 'Kelola Akun') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingAccount()),
          );
        }
        // Aksi ketika item di klik (misalnya menuju halaman lain)
        print('$title tapped');
      },
    );
  }
}
