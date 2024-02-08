import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  bool check2 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/cof.png",
                        height: 100,
                        width: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const [
                      Text("Welcome back",
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                Column(
                  children: const [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            size: 15,
                          ),
                          hintText: "Email/Phone Number",
                          hintStyle: TextStyle(fontSize: 10)),
                    ),
                    TextField(
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 15,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 10)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Container(
                          child: Expanded(
                            child: Transform.scale(
                              alignment: Alignment.bottomLeft,
                              scale: 0.9,
                              child: CheckboxListTile(
                                contentPadding:
                                    const EdgeInsets.only(right: 20.0),
                                activeColor: Colors.pinkAccent,
                                checkboxShape: const CircleBorder(
                                  side: BorderSide.none,
                                ),
                                side:
                                    const BorderSide(color: Colors.pinkAccent),
                                value: check2,
                                controlAffinity: ListTileControlAffinity
                                    .leading, //checkbox at left
                                onChanged: (bool? value) {
                                  setState(() {
                                    check2 = value!;
                                  });
                                },
                                title: const Text("Remember me",
                                    style: TextStyle(
                                        color: Colors.pinkAccent, fontSize: 10),
                                    textAlign: TextAlign.left),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Forget Password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.pinkAccent, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          minimumSize: const Size.fromHeight(40),
                          backgroundColor: Colors.pinkAccent),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "Or Login with",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tab(
                        icon: Image.asset(
                      "assets/images/FB2.png",
                      height: 40,
                    )),
                    Tab(
                        icon: Image.asset(
                      "assets/images/insta.png",
                      height: 40,
                    )),
                    Tab(
                        icon: Image.asset(
                      "assets/images/in2.png",
                      height: 40,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have account?",
                      style: TextStyle(color: Colors.black87, fontSize: 10),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
