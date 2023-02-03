import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Hotelpackage extends StatelessWidget {
  const Hotelpackage({super.key,required this.image,required this.name,required this.rate});
   final String image;
  final String name;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
      
      child: Container(
        
        height: MediaQuery.of(context).size.height*0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("$image"),
                fit: BoxFit.cover,
                
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.black
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.black,
                      fontSize: 18),
                    ),
                    const Text(
                      "A 5 star hotel in kochi",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15,color: Colors.grey),
                    ),
                    Text(
                      "\$$rate/night"
                    ),
                    Wrap(spacing: 5,
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    children: const [Icon(Icons.train,color: Colors.blue,),
                    Icon(Icons.airport_shuttle_outlined,
                    color: Colors.blue,),
                    Icon(Icons.flight,
                    color: Colors.blue,),
                    ],)
                  ],
                ),)
              ],
            )),
            Container(alignment: Alignment.center,
            width: 50,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            
                
              ),
              height: 35,
              child: TextButton(onPressed: (){}, child: const Text("Book ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),)),
            )
          ],
        ),
      ),
    );
  }
}