

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class omarm {
  final int id;
  final String name;
  final String number;
  omarm({
    required this.id,
    required this.name,
    required this.number
  });
}
class userScreen extends StatelessWidget {
 List<omarm> mm = [
   omarm(
         id : 1,
         name :'omar moahemd ahmed',
         number : '+201014023938'
        ),
   omarm(
       id : 2,
       name :'moahme sdfas dsaf sdfas',
       number : '+201054654512'
   ),
   omarm(
       id : 3,
       name :'omar ahmed moahemd ',
       number : '+201014234938'
   ),omarm(
       id : 4,
       name :'omar moahemd ahmed',
       number : '+201014023938'
   ),
   omarm(
       id : 5,
       name :'moahme sdfas dsaf sdfas',
       number : '+201054654512'
   ),
   omarm(
       id : 6,
       name :'omar ahmed moahemd ',
       number : '+201014234938'
   ),omarm(
       id : 7,
       name :'omar mjkhjmd ahmed',
       number : '+201014023938'
   ),
   omarm(
       id : 8,
       name :'moafj sdfas dsaf sdfas',
       number : '+201054654512'
   ),
   omarm(
       id : 9,
       name :'ojhkr ghkd moahemd ',
       number : '+201014234938'
   ),omarm(
       id : 10,
       name :'omar moahemd ahmed',
       number : '+201014023938'
   ),
   omarm(
       id : 11,
       name :'moahmhjk fas dsaf sdfas',
       number : '+201054654512'
   ),
   omarm(
       id : 12,
       name :'omar ahmed moahemd ',
       number : '+201014234938'
   )
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Contacts',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            itemBuilder: (context, index) => omar(mm[index]),
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: 1.5,
                color: Colors.grey,
              ),
            ),
            itemCount: mm.length)
      )
    );
  }
}
Widget omar(omarm mm) => Column(
  children: [
    Row(
      children: [
        CircleAvatar(
            radius: 30,
            child:
            Text(
                '${mm.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )

            )
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${mm.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${mm.number}'
                  '',
            )
          ],
        )
      ],
    ),
  ],
);
