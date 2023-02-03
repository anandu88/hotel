import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/hotelpackage.dart';

class Hotel1 extends StatelessWidget {
   Hotel1({super.key,});
  static final imags=[
    "https://thumbs.dreamstime.com/b/hotel-room-beautiful-orange-sofa-included-43642330.jpg",
    "https://www.seleqtionshotels.com/content/dam/seleqtions/Connaugth/TCPD_PremiumBedroom4_1235.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg",
    "https://cf.bstatic.com/xdata/images/hotel/max1280x900/327310216.jpg?k=38d43548f6946dc00d63fa6f57a89dfe37216c08ee60da9421cf2508c514aa3c&o=&hp=1",
    "https://cf.bstatic.com/xdata/images/hotel/max1280x900/327310204.jpg?k=d1998a29922848d97619951d0007160d22930b892028996cd6c83f860e231c32&o=&hp=1",
    "https://www.eroshotels.co.in/wp-content/uploads/2018/04/606x368.jpg",
  ];
  static final names=[
     'Crown Plaza',
    'Hotel Taj',
    'Grand Hyat',
    'Presidency',
    'Columbus',
    'Kayaloram',
  ];
  static final rate=[
     '1200',
    '1500',
    '1700',
    '2000',
    '2500',
    '1000',
  ];
   int currentIndex = 0; 
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
              [const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text("hello @ Denji",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
                  subtitle: Text("find u r favourite hotel ",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://www.looper.com/img/gallery/chainsaw-man-fans-cant-get-over-denjis-highly-anticipated-transformation-scene-in-episode-1/l-intro-1665616296.jpg"),
    
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(hintText: "search for hotels",
                  prefixIcon: Icon(Icons.search),
                  alignLabelWithHint: true,
                  border: InputBorder.none,

                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50))
                ),
                  
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20,left: 20),
                height:MediaQuery.of(context).size.height*.38 ,

                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    

                    children: [
                      Container(
                        height: 210,
                        width: 160,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                          )],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(image: 
                                NetworkImage("https://thumbs.dreamstime.com/b/hotel-bed-room-21064950.jpg"),
                                fit: BoxFit.cover,
                                
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),

                                )
                              ),
                              height: 100,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10,left: 10),
                              child: Text(
                                "Crown plaza",
                                style: TextStyle(color: Colors.black,fontSize: 17),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(
                              top: 5,left: 10,right: 3
                              
                            ),
                            child: Text("A 5 star Hotel in Kochi",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 15,color: Colors.grey),

                            ),
                            ),
                            Padding(padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                            child: Row(
                              children: [
                                Text("\$1000/Night",style: TextStyle(color: Colors.blue),),
                                Spacer(flex: 1,),
                                Text("4.5",style: TextStyle(color: Colors.blue),),
                                Icon(Icons.star,color: Colors.blue,size: 17,),
                              
                              ],
                            ),)

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 210,
                          width: 160,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: 
                                  NetworkImage("https://media.istockphoto.com/id/185113199/photo/shangri-la-hotel-room-in-new-delhi.jpg?s=1024x1024&w=is&k=20&c=UI6raxRnJzt1qxiYpZK_CyeOxHslAel5VqVp82swblE="),

                                  fit: BoxFit.cover,
                                  
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),

                                  )
                                ),
                                height: 100,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10,left: 10),
                                child: Text(
                                  "Hotel Hyat",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(
                                top: 5,left: 10,right: 3
                                
                              ),
                              child: Text("A 5 star Hotel in Edapally",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 15,color: Colors.grey),

                              ),
                              ),
                              Padding(padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                              child: Row(
                                children: [
                                  Text("\$1500/Night",style: TextStyle(color: Colors.blue),),
                                  Spacer(flex: 1,),
                                  Text("4.5",style: TextStyle(color: Colors.blue),),
                                  Icon(Icons.star,color: Colors.blue,size: 17,),
                                
                                ],
                              ),)

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 210,
                          width: 160,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: 
                                  NetworkImage("https://media.istockphoto.com/id/901386340/photo/smart-screen-with-smart-home-with-modern-bedroom.jpg?s=1024x1024&w=is&k=20&c=U3ai9igzbYjomGd2wBvNpUkaUFGiwoh4OIUHiae02EY="),

                                  fit: BoxFit.cover,
                                  
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),

                                  )
                                ),
                                height: 100,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10,left: 10),
                                child: Text(
                                  "Hotel presidency",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(
                                top: 5,left: 10,right: 3
                                
                              ),
                              child: Text("A 5 star Hotel in Vytila",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 15,color: Colors.grey),

                              ),
                              ),
                              Padding(padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                              child: Row(
                                children: [
                                  Text("\$1200/Night",style: TextStyle(color: Colors.blue),),
                                  Spacer(flex: 1,),
                                  Text("4.5",style: TextStyle(color: Colors.blue),),
                                  Icon(Icons.star,color: Colors.blue,size: 17,),
                                
                                ],
                              ),)

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 210,
                        width: 160,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                          )],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(image: 
                                NetworkImage("https://thumbs.dreamstime.com/b/hotel-bed-room-21064950.jpg"),
                                fit: BoxFit.cover,
                                
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),

                                )
                              ),
                              height: 100,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10,left: 10),
                              child: Text(
                                "Lemaritime",
                                style: TextStyle(color: Colors.black,fontSize: 17),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(
                              top: 5,left: 10,right: 3
                              
                            ),
                            child: Text("A 5 star Hotel in Kochi",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 15,color: Colors.grey),

                            ),
                            ),
                            Padding(padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                            child: Row(
                              children: [
                                Text("\$1300/Night",style: TextStyle(color: Colors.blue),),
                                Spacer(flex: 1,),
                                Text("4.5",style: TextStyle(color: Colors.blue),),
                                Icon(Icons.star,color: Colors.blue,size: 17,),
                              
                              ],
                            ),)

                          ],
                        ),
                      ),
                      
                      
                      
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text("Hotel packages",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w500),),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text("view more"))
                ],
              ),
              ListView.builder(shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              itemCount: imags.length,
              itemBuilder: ((context, index) {
                return Hotelpackage(
                  image: imags[index],
                   name: names[index],
                    rate: rate[index]);
              }))
             
                
              ]
            )
            ),
            
    
          ],
          
        ),
        bottomNavigationBar:BottomNavigationBar(elevation: 0,
        
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),

        ]) ,
      ),
    );
  }
}