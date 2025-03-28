import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>>categories = [
    {"title": "Architect", "icon": Icons.architecture},
    {"title": "Land Promoters", "icon": Icons.location_city},
    {"title": "Engineers", "icon": Icons.engineering},
    {"title": "Real Estate Consultant", "icon": Icons.real_estate_agent},
    {"title": "Builders", "icon": Icons.construction},
    {"title": "Contractors", "icon": Icons.handyman},
    {"title": "Registration Services", "icon": Icons.receipt_long},
    {"title": "Bank Loans", "icon": Icons.account_balance},
    {"title": "see more", "icon": Icons.arrow_circle_down_rounded},
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.white,
        title: Text("Smart Global", style: TextStyle(color: Colors.purple,fontSize: 15)),
        actions: [
          Icon(Icons.location_on, color: Colors.purple),
          Icon(Icons.notifications, color: Colors.purple),
          SizedBox(width: 20),
        ],
      ),
      body:

      Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search Bar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),

                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(

                              hintText: "Search here",prefixIcon: Icon(Icons.search,color: Colors.purple,),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Categories Grid
                  Text("Top Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), SizedBox(height: 8),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1.3
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[50],
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(categories[index]["icon"], size: 30, color: Colors.black),
                            SizedBox(height: 5),
                            Text(categories[index]["title"], textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      );
                    },
                  ),
          SizedBox(height: 15,),
                  Text("Special Features", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}