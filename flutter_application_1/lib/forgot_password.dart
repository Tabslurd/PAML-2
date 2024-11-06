import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lupa Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Icon(
                Icons.school,
                size: 100.0,
                color: Colors.black,
              ),
            ),
 // Spasi antara logo dan field input
            Text("RESPONSI",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 200),
            Text(
              "Masukkan alamat email dan tunggu kode etik akan dikirimkan.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Spasi antara teks dan TextField
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Masukkan Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                if (email.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Link reset password telah dikirim ke $email')),
                  );
                  Navigator.pop(context); // Kembali ke layar login
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email tidak boleh kosong')),
                  );
                }
              },
              child: Text("Kirim"),
            ),
          ],
        ),
      ),
    );
  }
}
