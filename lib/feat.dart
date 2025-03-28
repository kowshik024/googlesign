import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class feat extends StatefulWidget {
  @override
  State<feat> createState() => _Features_ScreenState();
}

class _Features_ScreenState extends State<feat> {
  final List<Map<String, dynamic>> features = [
    {"title": "BUSINESS LISTING"},
    {"title": "MINI WEBSITE"},
    {"title": "SOCIAL MEDIA PROMOTIONS"},
    {"title": "BUSINESS SEO"},
    {"title": "SPECIAL DAY POSTERS"},
    {"title": "DIGITAL BUSINESS CARD"},
    {"title": "LEAD & ENQUIRY GENERATION"},
  ];
  List images =[
    "assets/reg.png",
    "assets/web.png",
    "assets/face.png",
    "assets/seo.png",
    "assets/nov.png",
    "assets/digital.png",
    "assets/lead.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),color: Color(0xff742B88)),
          actions: [
            Row(children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Color(0xff742B88)),
              IconButton(onPressed: (){}, icon: Icon(Icons.support_agent_outlined),color: Color(0xff742B88))
            ],)
          ],
          title: Text("Features",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 16,color: Colors.black)),),
          backgroundColor: Color(0xffFBF8F8),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffFFFFFF),
                      Color(0xffF2A4A4),]
                )
            ),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "List of Features",
                        style: GoogleFonts.lato(textStyle: TextStyle(fontSize:16,color: Colors.black)),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: features.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(height: 50,width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 44,
                                      minHeight: 44,
                                      maxWidth: 64,
                                      maxHeight: 64,
                                    ),
                                    child: Image.asset(images[index], fit: BoxFit.cover),
                                  ),
                                  title: Text(features[index]["title"],
                                    style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                                  ),
                                ),
                              ),
                            );

                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 90),
                        child: Text(
                          "Testimonial",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                            border: Border.all(color:Color(0xff8F8F8F)),
                            borderRadius:BorderRadius.circular(8)
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image(image: AssetImage("assets/hari.png")),
                                  ),

                                  SizedBox(width: 10),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 60),
                                    child: Icon(Icons.more_vert, color: Colors.grey),
                                  ),
                                ],
                              ),



                              SizedBox(height: 8),
                              Text("02 Review",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),),
                              Text(
                                "“I had a great experience with srkvishahafelekits. They completed my home renovation on time and exceeded my expectations. Highly professional and transparent in their pricing!”",
                                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Category: Builders",
                                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                              ),
                              Text(
                                "Date: December 10, 2024",
                                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                              ),
                            ]
                          ),
                        ),
                      )
                    ]
                )
            ))
    );
  }
}