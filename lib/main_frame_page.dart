import 'package:flutter/material.dart';

class MainFramePage extends StatefulWidget {
  const MainFramePage({super.key});

  @override
  State<MainFramePage> createState() => _MainFramePageState();
}

class _MainFramePageState extends State<MainFramePage> {
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
                width: double.infinity,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Selamat Datang, Legaltag",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Didit Hermawan",
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

              const SizedBox(height: 20),

      // // 🔹 KONTEN GRAFIK + BACKGROUND
      //               Container(
      //   margin: const EdgeInsets.symmetric(horizontal: 16),
      //   padding: const EdgeInsets.all(16),
      //   height: 200,
      //   decoration: BoxDecoration(
      //     color: const Color(0xFF005E44),
      //     borderRadius: BorderRadius.circular(20),
      //     image: const DecorationImage(
      //       image: AssetImage('assets/bg_beranda.png'),
      //       alignment: Alignment.bottomRight,
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   child: Stack(
      //     children: [
      //       // 🔹 Bundaran dekoratif kiri atas
      //       Positioned(
      //         top: 0,
      //         left: 0,
      //         child: Image.asset(
      //           'assets/bundaran_atas.png',
      //           width: 100,
      //           height: 100,
      //           fit: BoxFit.cover,
      //         ),
      //       ),

      //       // 🔹 Bundaran dekoratif kanan bawah
      //       Positioned(
      //         right: 0,
      //         bottom: 0,
      //         child: Image.asset(
      //           'assets/bundaran_bawah.png',
      //           width: 120,
      //           height: 120,
      //           fit: BoxFit.cover,
      //         ),
      //       ),

      //       // 🔹 QR icon di pojok kiri atas
      //       Positioned(
      //         top: 12,
      //         left: 12,
      //         child: Image.asset(
      //           'assets/qr_greenbold.png',
      //           width: 32,
      //           height: 32,
      //           fit: BoxFit.contain,
      //         ),
      //       ),

      //       // 🔹 Grafik & Info (taruh di tengah atas layer)
      //       Align(
      //         alignment: Alignment.center,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             // 🔸 Grafik bundar dari image
      //             SizedBox(
      //               width: 130,
      //               height: 130,
      //               child: Image.asset(
      //                 'assets/grafik.png',
      //                 fit: BoxFit.contain,
      //               ),
      //             ),

      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // );




              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
