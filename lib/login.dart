 import 'package:flutter/material.dart';
 import './home.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        width: screenWidht,
        child: Column(
          children: <Widget>[
            Container(
              height: screenHeight * 0.45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Pattern2.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                  Colors.purple.shade200.withOpacity(0.5),
                    BlendMode.dstATop
                  )
                  )
              ),
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35),
              height: screenHeight * 0.46,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Colors.purple.shade300,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11),
                    width: screenWidht * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: 'Username',
                        hintText: 'Enter Your Username or Email Here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                          fontStyle: FontStyle.italic
                        ),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple.shade200,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          }, 
                          icon: Icon(
                            _isObscured ? Icons.visibility_off : Icons.visibility
                          )
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: 'Password',
                        hintText: 'Enter Your Password Here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                          fontStyle: FontStyle.italic
                        ),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple.shade200,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.purple.shade300,
                        fontWeight: FontWeight.w900,
                        fontSize: 16
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return homePage();
                          }
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple.shade200,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Container(
                        width: screenWidht * 0.27,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 1,
                        color: Colors.black,
                       ),
                       Text(
                        'Sign In With'
                       ),
                       Container(
                        width: screenWidht * 0.27,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 1,
                        color: Colors.black,
                       )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/google.png',
                              fit: BoxFit.fill,
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/apple.png',
                              fit: BoxFit.fill,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/fb.png',
                              fit: BoxFit.fill,
                              height: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/twt.png',
                              fit: BoxFit.fill,
                              height: 30,
                            ),
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
      ),
      )
    );
  }
}