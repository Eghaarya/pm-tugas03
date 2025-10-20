import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MahasiswaProfile(),
    );
  }
}

class MahasiswaProfile extends StatefulWidget {
  const MahasiswaProfile({super.key});

  @override
  State<MahasiswaProfile> createState() => _MahasiswaProfileState();
}

class _MahasiswaProfileState extends State<MahasiswaProfile> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showWidgetInfo();
    });
  }

  void showWidgetInfo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Informasi Aplikasi \nTugas 03 Pemrograman Mobile'),
        content: const Text(
          'Widget yang digunakan:\n- Image\n- Text\n- Icon\n- Button\n- Layout: Column dan Row\n\nNama: Egha Arya Affandi\nNIM: 221080200077',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  void showDetail(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Egha Arya Affandi',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  'NIM: 221080200077',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Mahasiswa Informatika - Universitas Muhammadiyah Sidoarjo',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.email, color: Colors.blueAccent),
                        const SizedBox(height: 4),
                        const Text('Email'),
                        const SizedBox(height: 4),
                        ElevatedButton.icon(
                          onPressed: () => showDetail(
                            'Detail Email',
                            'Email: eghaarya@example.com',
                          ),
                          icon: const Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Lihat Email',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.phone, color: Colors.green),
                        const SizedBox(height: 4),
                        const Text('Telepon'),
                        const SizedBox(height: 4),
                        ElevatedButton.icon(
                          onPressed: () => showDetail(
                            'Detail Telepon',
                            'Nomor: +62 812-3456-7890',
                          ),
                          icon: const Icon(Icons.call, color: Colors.white),
                          label: const Text(
                            'Lihat Telp',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.location_on, color: Colors.redAccent),
                        const SizedBox(height: 4),
                        const Text('Alamat'),
                        const SizedBox(height: 4),
                        ElevatedButton.icon(
                          onPressed: () => showDetail(
                            'Detail Alamat',
                            'Alamat: Sidoarjo, Indonesia',
                          ),
                          icon: const Icon(Icons.map, color: Colors.white),
                          label: const Text(
                            'Lihat Map',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                ElevatedButton.icon(
                  onPressed: showWidgetInfo,
                  icon: const Icon(Icons.widgets, color: Colors.white),
                  label: const Text(
                    'Lihat Detail Widget',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
