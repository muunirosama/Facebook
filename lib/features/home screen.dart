import 'package:flutter/material.dart';

import '../cores/themes/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
              child:
                Scaffold(
                      backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title:Text(
                          "Facebook",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                    actions: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.black,
                          child: Icon(Icons.add, color: Colors.white)
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 13,
                        backgroundImage: AssetImage("assets/images/img_6.png"),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.white,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.home,
                                  color:Colors.blue,
                              size: 35,
                              ),
                              Icon(Icons.ondemand_video_outlined,
                                  color: Colors.grey,
                                size: 35,
                              ),
                              Icon(Icons.storefront_outlined,
                                  color: Colors.grey,
                                size: 35,
                              ),
                              Icon(Icons.account_circle_outlined,
                                  color: Colors.grey,
                                size: 35,),
                              Icon(Icons.notifications_outlined,
                                  color:Colors.grey,
                                size: 35,
                              ),
                              CircleAvatar(
                                radius: 18,
                                backgroundImage: AssetImage("assets/images/img_2.png"),
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1),
                    
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/img_2.png"),
                          ),
                          title: TextField(
                            decoration: InputDecoration(
                              hintText: "What's in Your Mind?",
                              border: InputBorder.none,
                            ),
                          ),
                          trailing: Icon(Icons.photo, color: Colors.green),
                        ),
                        SizedBox(height: 10,),
                        const Divider(height: 1.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 12),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset("assets/images/img_2.png",
                                        height: 188,
                                      width: 130,
                                      fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                Container(
                                  color: Colors.white,
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                  child: const Text("Create a story",
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ) ,
                                  )
                                ),
                                Positioned(
                                  bottom: 50,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white, width: 3),
                                    ),

                                    child: FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: AppColors.primaryColor,
                                      mini: true,
                                      child: Icon(Icons.add, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded (
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset("assets/images/img_4.png",
                                      height: 178,
                                      width: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/img_7.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset("assets/images/img_3.png",
                                      height: 178,
                                      width: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/img_5.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                        const Divider(height: 2),
                        SizedBox(height: 12,),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/images/img.png"),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text("Route",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  Row(
                                    children: [
                                      Text("8h .",
                                      style: TextStyle(
                                      color: Color(0xff898F9C),
                                      ),
                                      ),
                                      Icon(
                                        Icons.public,
                                        color: Color(0xff898F9C),
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Image.asset("assets/images/Rectangle 10 (1).png"),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite_border_outlined
                              ),
                              SizedBox(width: 8,),
                              Icon(
                                  Icons.insert_comment_rounded
                              ),
                              SizedBox(width: 8,),
                              Icon(
                                  Icons.send_rounded
                              ),
                              Spacer(),
                              Icon(
                                Icons.bookmark_border_rounded
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 12,),
                        const Divider(height: 1.5),
                        SizedBox(height: 12,),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/images/img.png"),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text("Route",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("8h .",
                                        style: TextStyle(
                                          color: Color(0xff898F9C),
                                        ),
                                      ),
                                      Icon(
                                        Icons.public,
                                        color: Color(0xff898F9C),
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Image.asset("assets/images/Rectangle 10 (1).png"),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Icon(
                                  Icons.favorite_border_outlined
                              ),
                              SizedBox(width: 8,),
                              Icon(
                                  Icons.insert_comment_rounded
                              ),
                              SizedBox(width: 8,),
                              Icon(
                                  Icons.send_rounded
                              ),
                              Spacer(),
                              Icon(
                                  Icons.bookmark_border_rounded
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
    );
  }
}