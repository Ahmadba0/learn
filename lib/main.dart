import 'package:flutter/material.dart';
import 'package:learn1/pages/singin.dart';
import 'package:learn1/test.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exam18(),
      routes: {},
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: const Text(
        "Ahmad Barakat",
        style: TextStyle(
          fontSize: 25,
          backgroundColor: Colors.black,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 5,
          wordSpacing: 2.5,
          decoration: TextDecoration.underline,
          shadows: [
            Shadow(color: Colors.red, blurRadius: 3, offset: Offset(10, 10))
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey[500],
        width: double.infinity,
        height: double.infinity,
        child: Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.only(top: 75, bottom: 75),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 13, 9),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child: Container(
            width: 25,
            height: 25,
            margin:
                const EdgeInsets.only(top: 45, bottom: 40, left: 25, right: 25),
            decoration: const BoxDecoration(
                color: Colors.black,
                border: Border(
                  left: BorderSide(color: Colors.white, width: 10),
                  right: BorderSide(color: Colors.white, width: 10),
                  top: BorderSide(color: Colors.white, width: 10),
                  bottom: BorderSide(color: Colors.white, width: 10),
                ),
                // borderRadius: BorderRadius.circular(50)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("images/Screenshot_20221023_055748.png"),
                    //repeat: ImageRepeat.repeatX
                    //repeat: ImageRepeat.repeatY
                    repeat: ImageRepeat.repeat),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Ahmad Barkat",
                style: TextStyle(fontSize: 30),
                //textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//55555555
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Container(
          margin:
              const EdgeInsets.only(top: 100, bottom: 300, left: 15, right: 15),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 70, 66, 66),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          padding: const EdgeInsets.only(top: 10),
          child: const Text(
            "Welcom",
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class Example1 extends StatelessWidget {
  const Example1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    color: const Color.fromARGB(255, 36, 6, 145), width: 5)),
            alignment: Alignment.center,
            child: const Text(
              "Ahmad Tehsen Barakat",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            alignment: Alignment.center,
            child: const Text(
              "aaaaa aa a aaaaa aaaaaa aa aaa aaaaaaaaaa aaa aaaa aaaaa aaa aaaa aa a aaaaa bbbbbb",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 5)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 15),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 15),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.grey, size: 15),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.grey, size: 15),
                        )),
                    Expanded(
                      flex: 7,
                      child: Container(),
                    ),
                    Expanded(
                        // ignore: avoid_unnecessary_containers
                        flex: 4,
                        // ignore: avoid_unnecessary_containers
                        child: Container(child: const Text("17 reviw"))),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue[300],
                border: Border.all(
                    color: const Color.fromARGB(255, 1, 33, 59), width: 2)),
            child: const Text(
              "ahmad tehseen barakat",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          const Divider(
            height: 10,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              child: const Text(
                "aaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaa aaaaaaaa aaaaaaaaaaaa",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, height: 1.2),
              )),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 30),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.yellow, size: 30),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.grey, size: 30),
                        )),
                    Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Icon(Icons.star,
                              color: Colors.grey, size: 30),
                        )),
                    Expanded(
                      flex: 7,
                      child: Container(),
                    ),
                    Expanded(
                        // ignore: avoid_unnecessary_containers
                        flex: 4,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                            child: const Text(
                          "17 reviw",
                          style: TextStyle(fontSize: 20),
                        ))),
                  ],
                ),
              ),
              const Divider(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //ممكن بدلا من mainaccessaligment استخدم بين كل عمود والثاني expanded فارغ او  spacer
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.add_alarm,
                          size: 50,
                          color: Colors.green,
                        ),
                        Text("aa"),
                        Text("11")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.add_alarm,
                          size: 50,
                          color: Colors.green,
                        ),
                        Text("aa"),
                        Text("11")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.add_alarm,
                          size: 50,
                          color: Colors.green,
                        ),
                        Text("aa"),
                        Text("11")
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.photo,
                        size: 35,
                        color: Colors.red,
                      ),
                      Text("Photo")
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(
                        Icons.pageview_sharp,
                        size: 35,
                        color: Colors.red,
                      ),
                      Text("search")
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(
                        Icons.access_alarm_sharp,
                        size: 35,
                        color: Colors.red,
                      ),
                      Text("alert")
                    ],
                  )
                ],
              )),
          Container(
            height: 150,
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          border: Border.all(width: 2, color: Colors.black)),
                      child: const Text("AAAA"),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 30,
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          border: Border.all(width: 2, color: Colors.black)),
                      child: const Text("AAAA"),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.music_note),
                        Icon(Icons.music_note),
                        Icon(Icons.music_note),
                      ],
                    ),
                    const Divider(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                  child: Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                            "images/Screenshot_20221023_055748.png")),
                    const Spacer(),
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                            "images/Screenshot_20221023_055748.png")),
                    const Spacer(),
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                            "images/Screenshot_20221023_055748.png")),
                  ],
                ),
              ))
            ],
          )
        ]),
      ),
    );
  }
}

class Example4 extends StatelessWidget {
  const Example4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          ),
          Container(
            color: Colors.red[900],
            height: 90,
            width: 90,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
          )
        ],
      ),
    );
  }
}

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              ),
              Container(
                color: Colors.red[900],
                height: 90,
                width: 90,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
              )
            ],
          )),
    );
  }
}

class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: 130,
                child: Image.asset(
                  "images/1.jpg",
                ),
              ),
            ),
            Container(
              height: 200,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              //  child: Text("a"),
            ),
            Container(
              width: 300,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Text(
                      "Signin",
                      style: TextStyle(color: Colors.red),
                    ),
                    style: ElevatedButton.styleFrom(
                      //primary
                      backgroundColor: Colors.grey,
                      elevation: 15,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      //textStyle: TextStyle(color: Colors.red)
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.location_city),
                    label: const Text("location"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      elevation: 15,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      //textStyle: TextStyle(color: Colors.red)
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Text("singup"),
                    color: Colors.grey,
                    elevation: 15,
                    splashColor: Colors.red[900],
                    height: 25,
                    minWidth: 40,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  TextButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Text("OK"),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
