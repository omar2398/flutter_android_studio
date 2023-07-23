import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resturant extends StatelessWidget {
  const resturant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child:AppBar(
        elevation: 2 ,
        backgroundColor: Colors.red[900],
        title: Container(
          alignment: Alignment.topRight,
          child: Text(
            'الملف الشخصي',
            style: TextStyle(
              fontFamily: "Cairo",
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: ImageIcon(
              AssetImage("assets/images/menu.png"),
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
            vertical: 20,
      ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/243199182_3002968283352846_2967079981718833595_n.jpg") ,
                radius: 50,
              ),
            ),
          ),
          Text(
            'omarmoham',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'الاسماعيلية ,المملكة العربية السعودية',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.location_on_sharp,
                color: Colors.grey,
                size: 20,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: Row(
              children: [
                //---------------{followers}--------------
                Text(
                  'متابع',
                  style: TextStyle(
                    color: Colors.red[900],
                    fontFamily: 'Cairo',
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  " 0 ",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    color: Colors.red[900],
                  ),
                ),
                ImageIcon(
                  AssetImage("assets/images/users-svgrepo-com.png"),
                  color: Colors.red[900],
                  size: 20,
                ),
                //-------------------{noqtet walla}-----------
                SizedBox(
                  width: 40,
                ),
                Text(
                  'نقطة ولاء',
                  style: TextStyle(
                    color: Colors.red[900],
                    fontFamily: 'Cairo',
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  " 453 ",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    color: Colors.red[900],
                  ),
                ),
                ImageIcon(
                  AssetImage("assets/images/coins-svgrepo-com.png"),
                  color: Colors.red[900],
                  size: 20,
                ),
                //---------------------{comments}--------------
                SizedBox(
                  width: 40,
                ),
                Text(
                  'تعليقا',
                  style: TextStyle(
                    color: Colors.red[900],
                    fontFamily: 'Cairo',
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  " 1 ",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    color: Colors.red[900],
                  ),
                ),
                Icon(
                  Icons.star_border_sharp,
                  color: Colors.red[900],
                  size: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15
            ),
            child: Container(
              height: 40,
              child: Row(
                children: [
              Expanded(
                child: Container(
                  height: 40,
                  child: OutlinedButton.icon(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.grey,
                            width: 0.7,
                            style: BorderStyle.solid))),
                          label: Text(
                          'تعديل الملف الشخصي',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Cairo",
                            ),
                          ),
                      onPressed: (){},
                      icon: ImageIcon
                        (
                      AssetImage('assets/images/setting-svgrepo-com.png'),
                        color: Colors.grey,
                      ),
                      ),
                ),
              )
                ],
              ),
            ),
          ),
      SizedBox(
        height: 5,
      ),
      Container(
        color: Colors.grey[200],
        height: 70,
        width: double.infinity,
        child:
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Row(
                children: [
                  Text(
                    'النقاش',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Cairo",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'تتابع',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Cairo",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'المتابعين',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Cairo",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'التعليقات',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Cairo",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'الكولكشنات',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Cairo",
                      fontSize: 15,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
          SizedBox(
            height: 8,
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 15
              ),
              child: Container(
                height: 50,
                child: OutlinedButton.icon(
                  style: ButtonStyle(
                    alignment: Alignment.centerRight
                  ),
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                    onPressed: (){},
                label: Text(
                  'اضافة مجموعة جديدة',
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
            width: double.infinity,
            child: Row(
              children: [
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 15,
            ),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'المفضلة',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Cairo",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ImageIcon(
                    AssetImage("assets/images/heart-like-svgrepo-com.png"),
                    color: Colors.red[900],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
            width: double.infinity,
            child: Row(
              children: [
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 15,
            ),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'زرتها من قبل',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Cairo",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ImageIcon(
                    AssetImage("assets/images/location-information-4-svgrepo-com.png"),
                    color: Colors.red[900],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
            width: double.infinity,
            child: Row(
              children: [
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 15,
            ),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'أرغب في زيارتها',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Cairo",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ImageIcon(
                    AssetImage("assets/images/player-teleport-svgrepo-com.png"),
                    color: Colors.red[900],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
            width: double.infinity,
            child: Row(
              children: [
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 15,
            ),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'مطاعم قناويه',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Cairo",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ImageIcon(
                    AssetImage("assets/images/saved-svgrepo-com.png"),
                    color: Colors.red[900],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
            width: double.infinity,
            child: Row(
              children: [
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 15,
            ),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'مطاعم قنا',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Cairo",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ImageIcon(
                    AssetImage("assets/images/saved-svgrepo-com.png"),
                    color: Colors.red[900],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
            width: double.infinity,
            child: Row(
              children: [
              ],
            ),
          ),
        ]
    ),
    );
  }
}
