import 'package:flutter/material.dart';
class CashCard extends StatefulWidget {
  const CashCard({Key? key}) : super(key: key);

  @override
  State<CashCard> createState() => _CashCardState();
}

class _CashCardState extends State<CashCard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(
            "Cash card",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_circle_outlined,size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child:   Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF343232),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.remove_red_eye,color: Colors.white,),
                              ],
                            ),
                            Spacer(),


                            Row(
                              children: [
                                Text("Cash Card Locked",style: TextStyle(fontSize: 18,color: Colors.white),),
                                Spacer(),
                                Text("Visa",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Colors.white),)
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[900]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(

                          children: [
                            CircleAvatar(
                              radius: 20, // adjust the size of the avatar as needed
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqC1MkjLsfLEo05TQoBzUU7gcprOb8hBXmmincooccRQ&s'),
                            ),
                            CircleAvatar(
                              radius: 20, // adjust the size of the avatar as needed
                              backgroundImage: NetworkImage('https://s3.amazonaws.com/www-inside-design/uploads/2018/04/walmart-square.jpg',),
                            ),
                            CircleAvatar(
                              radius: 20, // adjust the size of the avatar as needed
                              backgroundImage: NetworkImage('https://scontent.flhe13-1.fna.fbcdn.net/v/t1.6435-9/96519186_10157106921142665_1739823554335080448_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=ekwQCyUxd94AX9DHfN9&_nc_ht=scontent.flhe13-1.fna&oh=00_AfDgDgy2POLK7FYj9_4C311ssjiJ2_Osf6Jb5CajRHa1Sg&oe=6469C038'),
                            ),
                            Spacer(),
                            Column(
                              children: [


                                Text("Explore Boosts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
                                Text("Instant saving",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.grey[900],
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.lock,color: Colors.white,),
                              title: Text("Lock card",style: TextStyle(fontSize: 18,color: Colors.white),),
                              trailing: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Colors.orange,
                                activeColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15,),
                            ListTile(
                                leading: Icon(Icons.redo_outlined,color: Colors.white,),
                                title: Text("Round ups",style: TextStyle(fontSize: 18,color: Colors.white),),
                                trailing:Icon(Icons.arrow_upward_outlined,size: 18,color: Colors.grey,)
                            ),
                            SizedBox(height: 15,),
                            ListTile(
                                leading: Icon(Icons.atm,color: Colors.white,),
                                title: Text("FInd an Atm",style: TextStyle(fontSize: 18,color: Colors.white),),
                                trailing:Icon(Icons.arrow_forward_ios_sharp,size: 18,color: Colors.grey,)
                            ),
                            SizedBox(height: 15,),
                            ListTile(
                                leading: Icon(Icons.piano,color: Colors.white,),
                                title: Text("Change PIn",style: TextStyle(fontSize: 18,color: Colors.white),),
                                trailing:Icon(Icons.arrow_forward_ios_sharp,size: 18,color: Colors.grey,)
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    )
    );
}
}