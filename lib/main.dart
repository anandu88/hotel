import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/hotelui.dart';

 void main() {runApp(
  MaterialApp(home: Hotel1(),
  debugShowCheckedModeBanner: false,)
 );
  
}
class HotelHome extends StatelessWidget {
  const HotelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            backgroundColor: Colors.blueGrey,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined))
            ],
            floating: true,
            flexibleSpace: ListView(children: [const SizedBox(height: 30,),
              //
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "type u r location",
                    border: InputBorder.none,
                    icon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                  ),
                ),

              )
            ],),
          )
        ],
      ),
    );
  }
}