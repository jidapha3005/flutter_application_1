import 'package:flutter/material.dart'; 

class PavlovaWidget extends StatelessWidget {
  const PavlovaWidget({super.key});

  Widget _buildStarWithCenter() {
    return Icon(Icons.star, size: 30, color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // รูปภาพ
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFgQ8mm2_Jczvp6SRjFksqRXSRCL5gSPvbaA&s',
            fit: BoxFit.cover,
            width: 500,
            height: 250,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'ข้าวขาหมู',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '"ข้าวขาหมู" เป็นอาหารจานเดียวที่ได้รับความนิยมในประเทศไทย ประกอบด้วยข้าวสวยร้อน ๆ และขาหมูที่ตุ๋นในน้ำพะโล้ปรุงรสอย่างเข้มข้น จนเนื้อหมูนุ่มละลายในปาก',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 29, 28, 28)),
            ),
          ),
          const SizedBox(height: 25),
          // ดาว
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              _buildStarWithCenter(),
              _buildStarWithCenter(),
              _buildStarWithCenter(),
              _buildStarWithCenter(),
              _buildStarWithCenter(),
              SizedBox(width: 8), 
              Text(
                '200 Reviews',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //  PREP / COOK / FEEDS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green),
                  Text('PREP:'),
                  Text('25 min'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.green),
                  Text('COOK:'),
                  Text('1 hr'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green),
                  Text('FEEDS:'),
                  Text('4-6'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
