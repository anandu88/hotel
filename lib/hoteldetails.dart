import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//appBar: AppBar(title: Text("details"),),
      body: CustomScrollView(
        slivers: [SliverToBoxAdapter(
          child: 
          Column(
            children: [
              Container(height: 270,
                decoration: BoxDecoration(
                  image:
                   DecorationImage(
                    image: 
                    NetworkImage(
                      "https://media.istockphoto.com/id/627892060/photo/hotel-room-suite-with-view.jpg?s=612x612&w=0&k=20&c=YBwxnGH3MkOLLpBKCvWAD8F__T-ypznRUJ_N13Zb1cU="),
                      fit: BoxFit.cover),
                      
                      
                ),
                child: Stack(children: [
                  Container(height: 270,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Center(child: Text("Details",
                          style: TextStyle(fontSize: 20,color: Colors.white),)),
                        )
                      ],
                    ),
                  )
                ],),
              )
            ],
          ),
        )

        ],
      ),
    );
  }
}