import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:googlesign/archi.dart';
import 'package:googlesign/bottom.dart';
import 'package:googlesign/demo.dart';


class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {


  final List<String> categories = [
    'Architecture',
    'Land Promoters',
    'Engineers',
    'Real Estate Consultant',
    'Builder',
    'Contractors',
    'Registration Services',
    'Bank Loans (NBFC/PVT)'
  ];
  List imagess=[
    'assets/arc1.png',
    'assets/land.png',
    'assets/eng.png',
    'assets/real.png',
    'assets/build.png',
    'assets/cont.png',
    'assets/reg.png',
    'assets/bank.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>bot()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        title: Text("Categories",style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.purple),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.purple,size: 30,),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.red.shade300
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        child: ListTile(
                          style: ListTileStyle.list,
                          leading:
                          ConstrainedBox(constraints: BoxConstraints(
                            minHeight: 44,
                            minWidth: 44,
                            maxHeight: 64,
                            maxWidth: 64,
                          ),child: Image(image: AssetImage(imagess[index]),fit: BoxFit.contain,),),
                          title: Text(categories[index],style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: (){
                            switch (categories[index]) {
                              case 'Architecture':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => architecture()));
                                break;
                              case 'Land Promoters':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => demo()));
                                break;

                              default:
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Coming Soon...')));
                            }

                          },
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}