import 'package:flutter/material.dart';
import 'package:flutter_application_1/account2.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle, // Ikon avatar 
                  color: Colors.blueAccent, // Anda bisa mengganti warna sesuai kebutuhan
                ), // Ikon untuk Guest
                SizedBox(width: 8), // Jarak antara ikon dan teks
                Text('Tabia'), // Nama "Guest"
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications), // Ikon notifikasi
                  onPressed: () {
                    // Aksi ketika ikon notifikasi ditekan
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings), // Ikon pengaturan
                  onPressed: () {
                    // Aksi ketika ikon pengaturan ditekan
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        'Item ${index + 1}',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                  leading: Icon(Icons.list),
                  onTap: () {
                    // Aksi ketika item diklik
                  },
                );
              },
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
            currentIndex: 0, // Indeks yang aktif
            onTap: (int index) {
              if (index == 1) {
                // Navigasi ke halaman home
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Account2()),
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
}
