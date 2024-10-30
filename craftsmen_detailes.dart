// هتجيبلي تفاصيل الحرفي اللي مطلوبة بالفيغما
import 'package:flutter/material.dart';
import 'models.dart';

class CraftsmanDetailsScreen extends StatelessWidget {
  final Craftsman craftsman;

  CraftsmanDetailsScreen({required this.craftsman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(craftsman.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(craftsman.imageUrl),
            SizedBox(height: 16.0),
            Text(
              craftsman.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              //اقرأي عن الدولار ساين لا هنتِ
              "Years of experience: ${craftsman.yearsOfExperience}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(craftsman.description),
            SizedBox(height: 16.0),
            Row(
              children: [
                ElevatedButton(
                  //فرجي عبدالرحمن إنك بتعرفيها وناسييتها
                  onPressed: () {
                    // بس يجهز كود الصفحةاللي بعدها رح نعمللها كول هون
                  },
                  child: Text("Book"),
                ),
                Spacer(),
                Icon(Icons.star, color: Colors.amber),
                Text(
                  craftsman.rating.toString(),
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
