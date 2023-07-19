import 'package:flutter/material.dart';

class login extends StatelessWidget {
  var email = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Omar   Login   page',
            style: TextStyle(
                fontFamily: 'Monoton'
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image(
             fit: BoxFit.cover,
              height: 1000,
              image: NetworkImage('https://i.pinimg.com/564x/12/47/a5/1247a52ac88de28a17c47d47c2b5f44d.jpg')
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child:  Text(
                            'Login',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                             // fontFamily: 'Monoton',
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                     TextFormField(
                       controller: email,
                       keyboardType : TextInputType.emailAddress,
                        onFieldSubmitted:(String value){
                         print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email_rounded,
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_rounded,
                          ),
                          labelText: 'Password',
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 200,
                      child: FloatingActionButton.extended(
                        backgroundColor: Colors.teal,
                            icon: Icon(
                               Icons.login_rounded
                            ),
                            onPressed: (){
                            print(email.text);
                            print(pass.text);
                            },
                            label: Text(
                                'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),
                            ),
                        ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?'),
                          TextButton(
                  onPressed: (){},
                          child: Text('Register Now!')),
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
