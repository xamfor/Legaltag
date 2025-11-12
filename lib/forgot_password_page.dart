import 'package:flutter/material.dart';
import 'package:legaltag/login_page.dart';

class LupaKataSandi extends StatefulWidget {
  const LupaKataSandi({super.key});

  @override
  State<LupaKataSandi> createState() => _LupaKataSandiState();
}

class _LupaKataSandiState extends State<LupaKataSandi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A574A),
      body: SafeArea(
        child: Column(
          children: [
            // Bagian atas (logo + background)
            Stack(
              alignment: Alignment.center,
              children: [
                // Background motif + gradasi
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
                        const Color(0xFF0A574A).withOpacity(0.95),
                        const Color(0xFF0A574A).withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),

                // Logo dan teks Legaltag
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

            // Bagian form putih yang bisa digeser
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 100), // jarak form dari header
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      const Text(
                        "Lupa Kata Sandi",
                        style: TextStyle(
                          color: Color(0xFF0A574A),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Masukkan alamat email atau No. Telepon\nuntuk mengubah Kata Sandi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0A574A),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Field Email
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
                            color: Color(0xFF0A574A),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                      const SizedBox(height: 24),

                      // Tombol Kirim
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0A574A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text(
                            "Kirim",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Footer
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
