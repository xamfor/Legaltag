import 'package:flutter/material.dart';

class PopupBerhasilPage extends StatefulWidget {
  const PopupBerhasilPage({super.key});

  @override
  State<PopupBerhasilPage> createState() => _PopupBerhasilPageState();
}

class _PopupBerhasilPageState extends State<PopupBerhasilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    width: 296,  
                    height: 241, 
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Gambar ilustrasi
                        SizedBox(
                          width: 141.69,
                          height: 115,
                          child: Image.asset(
                            'assets/images/berhasil.png', // sesuaikan path asset
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Judul
                        const Text(
                          'Berhasil',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Subteks
                        const Text(
                          'Kata sandi berhasil diperbarui',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF005E44),
          ),
          child: const Text(
            'Tampilkan Popup',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
