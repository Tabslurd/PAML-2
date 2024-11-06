import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart'; 
import 'register.dart';
import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Masuk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo di bagian atas tengah
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
            // Field input untuk email dan password
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;

                // Validasi email dan password
                if (email.isEmpty || password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email dan Password harus diisi')),
                  );
                } else {
                  // Logika untuk login dapat ditambahkan di sini
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Account()), // Arahkan ke AccountScreen
                  );
                }
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text("Daftar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                );
              },
              child: Text("Lupa Password?"),
            ),
          ],
        ),
      ),
    );
  }
}
