import 'package:flutter/material.dart';

class Listmakanancard extends StatelessWidget {
  final String namaMakanan;
  final String hargaMakanan;

  const Listmakanancard ({super.key, required this.namaMakanan, required this.hargaMakanan});

  @override
  Widget build(BuildContext context) {
    return Card(
       elevation: 10,
           child:Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Text(namaMakanan, style: TextStyle(fontSize: 20, )),
                Text("Rp. "+hargaMakanan,style: TextStyle(fontSize: 20, color: Colors.blue)),
              ]
            )
           ),
    );
  }
}