import 'package:flutter/material.dart';
import 'detailed_page.dart';
import 'models.dart';
import 'services.dart';
import 'craftsmen_detailes.dart';

class AppointmentPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    //استخدمت نفس الصورة لأن الفايل ما في الصور اللي بالفيغما بس يتواجدوا لا تنسى تبدلهم لا هنت
    {'name': 'Electrician', 'image': 'assets/images/electrician-training0.jpg'},
    {'name': 'Plumber', 'image': 'assets/images/electrician-training0.jpg'},
    {
      'name': 'Construction',
      'image': 'assets/images/electrician-training0.jpg'
    },
    {'name': 'Blacksmith', 'image': 'assets/images/electrician-training0.jpg'},
    {'name': 'Carpenter', 'image': 'assets/images/electrician-training0.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'All Appointments', //ما استخدمت نوع للتيكست لأن نسيت اللي كنت مستخدمه إنتَ خخخ
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: GridView.builder(
          itemCount: services.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            final service = services[index];
            return GestureDetector(
              onTap: service['name'] != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(service['name']),
                        ),
                      );
                    }
                  : null,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    service['image'] != ''
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              service['image']!,
                              height: 100,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          )
                        : SizedBox(height: 100),
                    SizedBox(height: 10.0),
                    Text(
                      service['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
