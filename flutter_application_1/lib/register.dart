import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar"),
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
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Masukkan Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Masukkan Password'),
              obscureText: true,
            ),
            TextField(
              controller: password2Controller,
              decoration: InputDecoration(labelText: 'Masukkan Kembali Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;
                String password2 = password2Controller.text;

                // Validasi email dan password
                if (email.isNotEmpty && password.isNotEmpty && password2.isNotEmpty) {
                  if (password == password2) {
                    // Jika pendaftaran berhasil
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Pendaftaran berhasil untuk $email')),
                    );
                    Navigator.pop(context); // Kembali ke layar login
                  } else {
                    // Jika password tidak sama
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Password tidak sama!')),
                    );
                  }
                } else {
                  // Jika ada field yang kosong
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email dan Password tidak boleh kosong')),
                  );
                }
              },
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}

