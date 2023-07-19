import 'package:flutter/material.dart';

class messanger extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar (
          titleSpacing: 20,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/01/15/85/23/360_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg'),
              ),
              SizedBox(
                  width:15
              ),
              Text(
                'Chats',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue ,
                  child:Icon(
                    size : 16,
                    Icons.camera_alt,
                    color: Colors.white,
                  )
              ),
              color: Colors.white,
              onPressed: (){},
            ),
            IconButton(
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue ,
                  child:Icon(
                    size : 16,
                    Icons.edit,
                    color: Colors.white,
                  )
              ),
              color: Colors.white,
              onPressed: (){},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(7)
                  ),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Search',
                        style: TextStyle(
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => omarStory(),
                      separatorBuilder:(context, index) => SizedBox(
                        height: 10,
                      ),
                      itemCount: 1),
                ),
                ListView.separated(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>omarChats()
                    , separatorBuilder: (context, index) => SizedBox(
                  height: 10,

                )
                    , itemCount: 15)
              ],
            ),
          ),
        )
    );
  }
  Widget omarChats() => Expanded(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 60,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    Text(
                      'Omar M.abdelhamed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          'Omar M.abdelhamed',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'hello my king how are yousdfdsafsdfsdfasdfasdfasdf',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 7,
                                height: 7,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text(
                                '12:15 PM'
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
  Widget omarStory() => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              Text(
                'Omar M.abdelhamed',
                maxLines: 2,
                overflow: TextOverflow.ellipsis ,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              Text(
                'Omar M.abdelhamed',
                maxLines: 2,
                overflow: TextOverflow.ellipsis ,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              Text(
                'Omar M.abdelhamed',
                maxLines: 2,
                overflow: TextOverflow.ellipsis ,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              Text(
                'Omar M.abdelhamed',
                maxLines: 2,
                overflow: TextOverflow.ellipsis ,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/243199182_3002968283352846_2967079981718833595_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEnI15i7v5fjC3KyusYe6xMztkTEL6a7kfO2RMQvpruR8Sp1EZ5u6fBJ68MGjIQNLOhPsb9FtGxL-sTC3w-Z7s3&_nc_ohc=rgkl6btw4_sAX-jVqnG&_nc_ht=scontent.fcai20-6.fna&oh=00_AfDO_qjNil8wNwG58C_65BLnQnFtuDVFI1GQsdloIdS6TA&oe=64BA32FD'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              Text(
                'Omar M.abdelhamed',
                maxLines: 2,
                overflow: TextOverflow.ellipsis ,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
