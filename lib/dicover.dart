import 'package:flutter/material.dart';
class discover extends StatefulWidget {
  const discover({Key? key}) : super(key: key);

  @override
  State<discover> createState() => _discoverState();
}

class _discoverState extends State<discover> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body:SafeArea(
          child: SingleChildScrollView(
            child: Container(color: Colors.black87,padding: EdgeInsets.only(left: 10,right: 10),
              child: Column(

                children: [
                  Padding(padding: EdgeInsets.only(top: 20),
                    child:   Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                      Text("Discover",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.w500 ),),

                      Icon(Icons.person,color: Colors.white,size: 25,)





                    ],),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      hintText: 'Search People or bussiness',
                      hintStyle: TextStyle(color: Colors.white54),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.white54),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30, // adjust the size of the avatar as needed
                                backgroundImage: NetworkImage('https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0='), // replace with your image URL
                              ),
                              SizedBox(height: 10,),
                              Text("Shante",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30, // adjust the size of the avatar as needed
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiGrFTQPiwKbjJYJMiLt12bmuvKZ-2IHNJsbV9A4myqnT6xJIkjtooLWNdTzCkAKgITLs&usqp=CAU'), // replace with your image URL
                              ),
                              SizedBox(height: 10,),
                              Text("Timo",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30, // adjust the size of the avatar as needed
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQnd9go4GvKTf4zMqS1d0r_jtUL6BUFLvDIBndhEILZaw4ez9gLeSom6DkWQo2pC2MiDo&usqp=CAU'), // replace with your image URL
                              ),
                              SizedBox(height: 10,),
                              Text("Thomas",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30, // adjust the size of the avatar as needed
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3tjYLy7T0go7Lf6sgPWyDSEgfznonMmKa79s93s62f1hP8bQvXkCNL07LvTY3GafsEGE&usqp=CAU'), // replace with your image URL
                              ),
                              SizedBox(height: 10,),
                              Text("Grande",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30, // adjust the size of the avatar as needed
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5mEITjnY33bKQZIV3Ew6e0KSpWbSUNwcaYA&usqp=CAU'), // replace with your image URL
                              ),
                              SizedBox(height: 10,),
                              Text("Ashley",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30, // adjust the size of the avatar as needed
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5mEITjnY33bKQZIV3Ew6e0KSpWbSUNwcaYA&usqp=CAU'), // replace with your image URL
                              ),
                              SizedBox(height: 10,),
                              Text("Timo",style: TextStyle(color: Colors.white),),
                            ],
                          ),

                        ]
                    ),
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text("Instant discounts with Card Cash",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                    SizedBox(height: 10,),
                    Padding(padding:EdgeInsets.only(right: 40) ,
                        child: Text("Add a Boost and swap it out anytime.",style: TextStyle(color: Colors.white54,fontSize: 13),)),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 200,width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 5,top: 20,bottom: 30),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                CircleAvatar(
                                  radius: 20, // adjust the size of the avatar as needed
                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqC1MkjLsfLEo05TQoBzUU7gcprOb8hBXmmincooccRQ&s'),
                                ),
                                Spacer(), // add some spacing between the avatar and the text
                                Text(
                                  '99% off one in-app order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5), // add some spacing between the name and the job title
                                Text(
                                  'Discord', // replace with the person's job title
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(height: 200,width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 5,top: 20,bottom: 30),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                CircleAvatar(
                                  radius: 20, // adjust the size of the avatar as needed
                                  backgroundImage: NetworkImage('https://scontent.flhe13-1.fna.fbcdn.net/v/t1.6435-9/96519186_10157106921142665_1739823554335080448_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=ekwQCyUxd94AX9DHfN9&_nc_ht=scontent.flhe13-1.fna&oh=00_AfDgDgy2POLK7FYj9_4C311ssjiJ2_Osf6Jb5CajRHa1Sg&oe=6469C038'),
                                ),
                                Spacer(),// add some spacing between the avatar and the text
                                Text(
                                  '10% of each order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5,),

                                Text(
                                  'white Castle', // replace with the person's job title
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 200,width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 5,top: 20,bottom: 30),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                CircleAvatar(
                                  radius: 20, // adjust the size of the avatar as needed
                                  backgroundImage: NetworkImage('https://s3.amazonaws.com/www-inside-design/uploads/2018/04/walmart-square.jpg',),
                                ),
                                Spacer(),// add some spacing between the avatar and the text
                                Text(
                                  '2% off each in-app order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5), // add some spacing between the name and the job title
                                Text(
                                  'Walmart', // replace with the person's job title
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(height: 200,width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 5,top: 20,bottom: 18),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                CircleAvatar(
                                  radius: 20, // adjust the size of the avatar as needed
                                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/4/40/Gopuff_New_Logo_2021_Rebrand.jpg'),
                                ),
                               Spacer(), // add some spacing between the avatar and the text
                                Text(
                                  '25% off on one online order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5), // add some spacing between the name and the job title
                                Padding(padding: EdgeInsets.only(left: 10,),
                                  child: Text(
                                    'GoPuff', // replace with the person's job title
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 200,width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 5,top: 20,bottom: 30),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqC1MkjLsfLEo05TQoBzUU7gcprOb8hBXmmincooccRQ&s'),
                                ),
                               Spacer(),
                                Text(
                                  '99% off one in-app order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5), // add some spacing between the name and the job title
                                Text(
                                  'Discord', // replace with the person's job title
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(height: 200,width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),

                          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Padding(padding: EdgeInsets.only(top: 20,left: 10),
                                child: CircleAvatar(
                                  radius: 20, // adjust the size of the avatar as needed
                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqC1MkjLsfLEo05TQoBzUU7gcprOb8hBXmmincooccRQ&s'),
                                ),
                              ),
                              SizedBox(height: 70), // add some spacing between the avatar and the text
                              Padding(padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '99% off one in-app order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5), // add some spacing between the name and the job title
                              Padding(padding: EdgeInsets.only(left: 10,),
                                child: Text(
                                  'Discord', // replace with the person's job title
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),







                      ],
                    ),
                  ],
                ),




                ],
              ),
            ),
          ),
        )



    );
  }
}
