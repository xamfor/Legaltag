import 'package:flutter/material.dart';
import 'package:legaltag/login_page.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;

  // Panggil ini saat tombol Simpan ditekan
  void _onSimpanPressed() {
    // (1) Tampilkan popup
    _showSuccessPopup();

    // (2) Setelah 3 detik: tutup popup lalu pindah halaman
    Future.delayed(const Duration(seconds: 1), () {
      // Pastikan widget masih mounted sebelum navigasi
      if (!mounted) return;

      // tutup dialog (jika masih terbuka)

      // Navigator.of(context, rootNavigator: true).pop();
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }

  // Widget Dialog custom yang meniru desain gambar
  void _showSuccessPopup() {
    showDialog(
      context: context,
      barrierDismissible: false, // jangan tutup saat klik di luar
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset(
                    'assets/vector.png', 
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 12),

                // Judul "Berhasil"
                const Text(
                  'Berhasil',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 14),

                // Subteks
                const Text(
                  'Kata sandi berhasil diperbarui',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.25,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 6),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔹 HEADER ATAS
                Container(
                  width: 375,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF005E44),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Center( 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center, 
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          width: 30.61,
                          height: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center, // 
                          children: const [
                            Text(
                              "kata Sandi",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Legatag",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 40),

              // FORM GANTI PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Field Kata Sandi Baru
                    const Text(
                      "Kata Sandi Baru",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextField(
                      obscureText: _obscurePassword1,
                      decoration: InputDecoration(
                        hintText: "Masukkan Kata Sandi Baru",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscurePassword1 = !_obscurePassword1;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/eye_off.png',
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

                    const SizedBox(height: 20),

                    // Field Kata Sandi Ulang
                    const Text(
                      "Kata Sandi Ulang",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextField(
                      obscureText: _obscurePassword2,
                      decoration: InputDecoration(
                        hintText: "Masukkan Kata Sandi Baru",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscurePassword2 = !_obscurePassword2;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/eye_off.png',
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

                    const SizedBox(height: 30),

                    // 🔹 Tombol Simpan
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          _onSimpanPressed();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF005E44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const Text(
                          "Simpan",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
