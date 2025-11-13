import 'package:flutter/material.dart';
import 'package:legaltag/forgot_password_page.dart';
import 'package:legaltag/main_frame_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF005E44),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // BAGIAN BACKGROUND
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/bg_beranda.png'),
                        fit: BoxFit.cover,
                      ),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF005E44).withOpacity(0.95),
                          const Color(0xFF005E44).withOpacity(0.8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),

                  // Logo
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Legaltag",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              //  BAGIAN FORM
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xFF005E44),
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Selamat datang di Aplikasi Legaltag\nSilahkan Masuk dengan akun anda",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF005E44),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 30),

                    //  Field Email
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Typing...",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/user.png',
                            width: 22,
                            height: 22,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            color: Color(0xFF005E44),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Field Password
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kata Sandi",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        hintText: "Masukkan Kata Sandi",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/eye.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            color: Color(0xFF005E44),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    //  Lupa Kata Sandi
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LupaKataSandi(),
                            ),
                          );
                        },
                        child: const Text(
                          "Lupa Kata Sandi ?",
                          style: TextStyle(
                            color: Color(0xFF005E44),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),
                    // button
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>MainFramePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF005E44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // FOOTER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/afila.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          "Crafted by ",
                          style: TextStyle(color: Colors.black54),
                        ),
                        const Text(
                          "Afila Media Karya",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
