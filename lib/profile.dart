import 'package:flutter/material.dart';
import 'package:uas_project/home.dart';
import 'package:uas_project/search2.dart';
import 'package:uas_project/write1.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp,
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
            onTap: () {
              
            },
            child: Image.asset(
              'assets/Sliders.png',
              ),
          ),
          )
        ],
       ),
       body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/profile2.png'
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Gladdyzzz_',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Gladis Clarissa Yang'
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    '1051',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Followers'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    '3 Draft',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Your Story',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                        color: colorApp,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.attach_money_rounded,
                              size: 20,
                            ),
                            Container(
                              child: Text(
                                '250 Coin',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                            Text(
                              '+',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 2,
                color: Colors.black.withOpacity(0.09),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: screenWidht,
                    color: Colors.black.withOpacity(0.09),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      'Ketuk disini untuk menambahkan daily harianmu...',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                      'Cerita olehmu',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                      ),
                    ),
                    ),
                    InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) {
                  //       return write2Page();
                  //     }
                  //   ),
                  //   );
                },
                child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/tsbB.png'
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            width: 230,
                            child: Text(
                              "The Sky Blues : Touch Her is Possible",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            color: Colors.black.withOpacity(0.1),
                            margin: EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 3),
                                  child: Text(
                                    '5 bagian dipublikasi'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              '25 Draft'
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Followers',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
       ),
       bottomNavigationBar: Container(
        height: 70,
        width: screenWidht,
        decoration: BoxDecoration(
          color: colorApp
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return homePage();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return search2Page();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.stacked_bar_chart,
                size: 28,
              ),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return write1Page();
                  }
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}