import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:googlesign/search.dart';

import 'account.dart';
import 'login.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _Home_screenState();
}

class _Home_screenState extends State<demo> {
  final List<Map<String, dynamic>> categories = [
    {"title": "Architecture"},
    {"title": "Land Promoters"},
    {"title": "Engineers"},
    {"title": "Real Estate Consultant"},
    {"title": "Builders"},
    {"title": "Contractors"},
    {"title": "Registration Services"},
    {"title": "Bank Loans (NBFC/PVT)"},
  ];
  final List<Map<String, dynamic>> name = [
    {"title": "Business Listing in our Website"},
    {"title": "Social Media Promotions"},
    {"title": "Special Day posters"},
    {"title": "Digital Business Card"},
    {"title": "Search Engine Optimisation for Business"},
    {"title": "Lead Generation & Enquiry "},
  ];
  final List<Map<String, dynamic>> name1 = [
    {"title": "Are you an Architect? Showcase Your Expertise on True Guide!"},
    {"title": "Calling All Engineers: Showcase Your Expertise Toda"},
    {"title": "List Your Properties Today – Grow Your Business with True Guide!"},
  ];
  final List<Map<String, dynamic>> elevate = [
    {"title": "Join as an Architect Now"},
    {"title": "Join as an Engineer"},
    {"title": "Register as a Land Promoter"},
  ];
  List colors = [
    Color(0xffCB7272),
    Color(0xffE58D2F),
    Color(0xff41A3A4),
    Color(0xff6441A4),
    Color(0xffA4416E),
    Color(0xff0D9DFD),
  ];
  List colors1 = [
    Color(0xff81BF5B),
    Color(0xffE19467),
    Color(0xff0D9DFD),
  ];


  List features =[
    "assets/web.png",
    "assets/face.png",
    "assets/nov.png",
    "assets/digital.png",
    "assets/seo.png",
    "assets/lead.png",
  ];
  List images =[
    "assets/arc1.png",
    "assets/land.png",
    "assets/eng.png",
    "assets/real.png",
    "assets/build.png",
    "assets/cont.png",
    "assets/reg.png",
    "assets/bank.png",
  ];
  List service =[
    "assets/build.png",
    "assets/eng.png",
    "assets/reg.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> UserProfile()));
        }, icon: Icon(Icons.menu,color: Color(0xff742B88),)),
        title: Text("Hello... Smart Global",style: GoogleFonts.lato(fontSize: 16,color: Color(0xff742B88)),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined,color:Color(0xff742B88))),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color:Color(0xff742B88)))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFFFFFF),
                  Color(0xffF2A4A4)
                ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.purple
                      ),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),

                    ),
                    child: TextFormField(
                      onTap: (){
                        Navigator.push(context , MaterialPageRoute(builder: (context)=>SearchPage()));
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search here',

                          prefixIcon: Icon(Icons.search)
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    child: Center(child: Text('Search',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        )
                    ),

                  )
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right:230),
                child: Text("Top Categories",style: GoogleFonts.lato(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  child:GridView.builder(
                      itemCount: categories.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing:2,
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 66,
                                width: 70,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 64,
                                    maxHeight: 64,
                                  ),
                                  child: Image.asset(images[index], fit: BoxFit.cover),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(categories[index]["title"],
                                  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.only(right:250),
                child: Text("Special Features",style: GoogleFonts.lato(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: features.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(children: [
                            Container(
                              height:30,
                              width: 90,
                              child: Text(name[index]["title"],
                                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 44,
                                  minHeight: 44,
                                  maxWidth: 64,
                                  maxHeight: 64,
                                ),
                                child: Image.asset(features[index], fit: BoxFit.cover),),
                            ),
                          ],),
                        ),
                      ));
                    }),
              ),
              SizedBox(height:10),
              Container(
                height: 60,
                width: 360,
                decoration:BoxDecoration(
                    color: Color(0xffAD4545),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Container(
                      height: 60,
                      width: 200,
                      child: Text("Register Your Business Today – It’s Quick and Easy",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 13,color: Colors.white))),
                    ),
                    SizedBox(height: 30,width: 140,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xff742B88),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Screen()));
                          }, child: Text("Register Now",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.white)))),
                    )
                  ],),
                ),
              ),
              SizedBox(height: 10),
              Container(height: 130,width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/hand.png"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Center(
                    child: Container(height: 50,width: 180,
                      child: Text("Increase leads and expand your reach effortlessly",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 14,color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right:250),
                child: Text("Explore Services",style: GoogleFonts.lato(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height:10),
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: name1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 320,
                          decoration: BoxDecoration(
                              color: colors1[index],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(children: [
                            Container(
                                height: 120,
                                width: 220,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(name1[index]["title"],
                                          style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(height: 40,width: 185,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape:RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8)
                                              )
                                          ),
                                          onPressed: (){}, child: Text(elevate[index]["title"],
                                          style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,fontWeight:FontWeight.bold,color: Colors.black)),
                                        ),),
                                      ),
                                    )
                                  ],
                                )),
                            Container(
                              height: 100,
                              width: 95,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 44,
                                  minHeight: 44,
                                  maxWidth: 64,
                                  maxHeight: 64,
                                ),
                                child: Image.asset(service[index], fit: BoxFit.cover),),
                            ),
                          ],),
                        ),
                      ));
                    }),
              ),
            ],
          ),
        ),
      ),

    );
  }
}