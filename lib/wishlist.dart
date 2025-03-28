import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {

  List architectureprofile = [

    'assets/arc10.png',


  ];

  List names =[
    'Ashok',
    'Ramesh',
    'Divahar',
    'Sakthivel',
    'Anbarasu',
    'Sathish'
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Wishlist",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){

            return
              GestureDetector(
                onTap: (){
                  switch (architectureprofile[index]) {
                    case 'assets/category7.png':

                      break;
                    case 'assets/category8.png':
                     ;
                      break;

                    default:
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Coming Soon...')));
                  }

                },

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    width: 370,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(image: AssetImage(architectureprofile[index]))
                                ),
                              ),
                              SizedBox(height: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(names[index],style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.purple),),
                                  Row(
                                    children: [
                                      Icon(Icons.handshake,size: 10,),SizedBox(width: 5,),
                                      Text('Architechture',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded,size: 10,),SizedBox(width: 1,),
                                      Text('Coimbatore, Tamil Nadu',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                                    ],
                                  ),
                                ],)

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('SRI VISHAKHA FIELDS',style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.purple),),
                                  SizedBox(width: 8,),
                                  Icon(Icons.favorite,color: Colors.red,size: 20,),
                                  Icon(Icons.arrow_outward,size: 20,)
                                ],
                              ),
                              Text('Verified Listing',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                              Text('05 Years in Business',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,),),

                              Text('Property Serviced',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.purple),),
                              Text('Real Estate Development, Construction',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),
                              Text('Plotted Development',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: (){}, child:  Text('Call Now',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.purple)),style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.purple),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      minimumSize: Size(100, 30),
                                    ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: (){}, child:  Text('Whatsapp',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white)),style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      minimumSize: Size(100, 30),

                                    ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],),
                    decoration: BoxDecoration(
                        color: Colors.white,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5,   // Blur radius
                            offset: Offset(0, 3), // Offset in x and y
                          ),
                        ],

                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              );
          }),
    );
  }
}