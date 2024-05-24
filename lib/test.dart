// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search2/dropdown_search2.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jiffy/jiffy.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Exam1 extends StatefulWidget {
  const Exam1({super.key});

  @override
  State<Exam1> createState() => _Exam1State();
}

class _Exam1State extends State<Exam1> {
  var text = "ahmad";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: unnecessary_string_interpolations
              Text("$text"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = "ahmad barakat";
                    });
                  },
                  child: const Text("chane name "))
            ],
          ),
        ),
      ),
    );
  }
}

class Exam3 extends StatefulWidget {
  const Exam3({super.key});

  @override
  State<Exam3> createState() => _Exam3State();
}

class _Exam3State extends State<Exam3> {
  var selectedName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(35)),
          child: DropdownButton(
            hint: const Text(
              "choose your name",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
            ),
            underline: const Divider(),
            icon: const Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 25,
            ),
            elevation: 40,
            items: ["ahmad", "mhd", "ali"]
                .map((e) => DropdownMenuItem(
                      // ignore: sort_child_properties_last
                      child: Text(
                        e,
                        style: const TextStyle(color: Colors.white),
                      ),
                      value: e,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedName = value;
              });
            },
            value: selectedName,
          ),
        ),
      ),
    );
  }
}

class Exam2 extends StatefulWidget {
  const Exam2({super.key});

  @override
  State<Exam2> createState() => _Exam2State();
}

class _Exam2State extends State<Exam2> {
  bool usa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            const Text("choose country"),
            Row(
              children: [
                const Text("USA"),
                Checkbox(
                    activeColor: Colors.black,
                    checkColor: Colors.grey,
                    value: usa,
                    onChanged: (val) {
                      setState(() {
                        usa = val!;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Exam4 extends StatefulWidget {
  const Exam4({super.key});

  @override
  State<Exam4> createState() => _Exam4State();
}

class _Exam4State extends State<Exam4> {
  var selected_day;
  var selected_char;
  bool usa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            child: DropdownButton(
              icon: const Icon(
                Icons.numbers,
                color: Colors.white,
              ),
              hint: const Text(
                "Day",
                style: TextStyle(color: Colors.white),
              ),
              underline: const Divider(),
              items: ["1", "2", "3"]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selected_day = val;
                });
              },
              value: selected_day,
            ),
          ),
          const Divider(),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.black)),
            child: CheckboxListTile(
              value: usa,
              onChanged: (value) {
                setState(() {
                  usa = value!;
                });
              },
              title: const Text("USA"),
              subtitle: const Text("america"),
              secondary: const Icon(Icons.star),
              activeColor: Colors.black,
              checkColor: Colors.grey,
            ),
          ),
          const Divider(),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.black)),
            child: CheckboxListTile(
              value: usa,
              onChanged: (value) {
                setState(() {
                  usa = value!;
                });
              },
              title: const Text("USA"),
              subtitle: const Text("america"),
              secondary: const Icon(Icons.star),
              activeColor: Colors.black,
              checkColor: Colors.grey,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          const Divider(),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.black)),
            child: Row(
              children: [
                const Expanded(flex: 1, child: Icon(Icons.person)),
                const Expanded(
                  flex: 3,
                  child: Text(
                    "usa",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Checkbox(
                    value: usa,
                    onChanged: ((value) {
                      usa = value!;
                    }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            child: DropdownButton(
              items: ["a", "b", "c"]
                  .map((e) => DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selected_char = value;
                });
              },
              value: selected_char,
            ),
          )
        ]),
      ),
    );
  }
}

//check box list title
class Exam5 extends StatefulWidget {
  const Exam5({super.key});

  @override
  State<Exam5> createState() => _Exam5State();
}

class _Exam5State extends State<Exam5> {
  bool bmw = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
          child: Column(
        children: [
          CheckboxListTile(
            value: bmw,
            onChanged: (val) {
              setState(() {
                bmw = val!;
              });
            },
            title: const Text("BMW"),
            subtitle: const Text("german"),
            secondary: const Icon(Icons.car_crash),
            activeColor: Colors.black,
            checkColor: Colors.grey,
            controlAffinity: ListTileControlAffinity.trailing,
          )
        ],
      )),
    );
  }
}

//Radio List Tile
class Exam6 extends StatefulWidget {
  const Exam6({super.key});

  @override
  State<Exam6> createState() => _Exam6State();
}

class _Exam6State extends State<Exam6> {
  String? car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                RadioListTile(
                  value: "bmw",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val;
                    });
                  },
                  title: const Text("BMW"),
                  subtitle: const Text("German"),
                  secondary: const Icon(Icons.car_crash),
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: Colors.black,
                ),
                RadioListTile(
                  value: "mercedes",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val;
                    });
                  },
                  title: const Text("MARCEDES"),
                  subtitle: const Text("BRITCH"),
                  secondary: const Icon(Icons.car_crash),
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: Colors.black,
                  selected: car == "mercedes" ? true : false,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Switch List Tile
class Exam7 extends StatefulWidget {
  const Exam7({super.key});

  @override
  State<Exam7> createState() => _Exam7State();
}

class _Exam7State extends State<Exam7> {
  bool noty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              value: noty,
              onChanged: (val) {
                setState(() {
                  noty = val;
                });
              },
              title: const Text("notification"),
              activeColor: Colors.grey,
              activeTrackColor: Colors.black,
              inactiveTrackColor: Colors.red[900],
              inactiveThumbColor: Colors.red[200],
            )
          ],
        ),
      ),
    );
  }
}

//List Tile and Alet Dialog
class Exam8 extends StatefulWidget {
  const Exam8({super.key});

  @override
  State<Exam8> createState() => _Exam8State();
}

class _Exam8State extends State<Exam8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListTile(
          title: const Text("Samsung A50"),
          subtitle: const Text("Galaxy"),
          leading: const Icon(Icons.mobile_friendly),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("MOBILE"),
                    content: const Text("Open Mobile"),
                    titlePadding: const EdgeInsets.all(20),
                    contentPadding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    actions: [
                      MaterialButton(
                        onPressed: () {},
                        child: const Text("OK"),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancel"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

//circle avatar
class Exam9 extends StatefulWidget {
  const Exam9({super.key});

  @override
  State<Exam9> createState() => _Exam9State();
}

class _Exam9State extends State<Exam9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const CircleAvatar(
          backgroundImage: AssetImage("images/1.jpg"),
          radius: 40,
          //child: Text(""),
          //backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
//snack bar

class Exam10 extends StatefulWidget {
  const Exam10({super.key});

  @override
  State<Exam10> createState() => _Exam10State();
}

class _Exam10State extends State<Exam10> {
  // ignore: unnecessary_new
  GlobalKey scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //1
                  content: const Text("Hello This is FlutterCampus"),
                  //2
                  backgroundColor: Colors.redAccent,
                  //2
                  elevation: 10, //shadow
                  //3
                  duration: const Duration(seconds: 2),
                  //4
                  padding: const EdgeInsets.all(20),
                  //5
                  behavior: SnackBarBehavior.floating,
                  //6
                  margin: const EdgeInsets.all(30),
                  //7
                  onVisible: () {
                    // ignore: avoid_print
                    print("hello");
                  },
                  //8
                  action: SnackBarAction(
                    label: "Close",
                    onPressed: () {
                      // ignore: avoid_print
                      print("Close");
                    },
                    textColor: Colors.red[900],
                  ),
                ));
              },
              child: const Text("snack bar")),
        ),
      ),
    );
  }
}

class Exam11 extends StatefulWidget {
  const Exam11({super.key});

  @override
  State<Exam11> createState() => _Exam11State();
}

class _Exam11State extends State<Exam11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: const EdgeInsets.all(20),
        // margin: EdgeInsets.all(5),
        child: ListView(
            //reverse: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: 200,
                color: Colors.red[100],
              ),
              Container(
                height: 200,
                color: Colors.red[200],
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 240,
                child:
                    ListView(physics: const BouncingScrollPhysics(), children: [
                  Container(
                    height: 200,
                    color: Colors.blue[100],
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue[200],
                  ),
                ]),
              ),
              Container(
                height: 200,
                color: Colors.red[300],
              )
            ]),
      ),
    );
  }
}

class Exam12 extends StatefulWidget {
  const Exam12({super.key});

  @override
  State<Exam12> createState() => _Exam12State();
}

class _Exam12State extends State<Exam12> {
  List mobiles = [
    {"name": "S20 Ultra", "Screen": "6.2 ", "c": " 8i"},
    {"name": "S20 Ultra", "Screen": "6.2 ", "c": " 8i"},
    {"name": "S20 Ultra", "Screen": "6.2 ", "c": " 8i"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        /* child: ListView.builder(
            itemCount: mobiles.length,
            itemBuilder: ((context, i) {
              return ListTile(
                title: Text("${mobiles[i]["name"]}"),
                subtitle: Text("${mobiles[i]['Screen']}"),
                trailing: Text("${mobiles[i]["c"]}"),
              );
            })),*/
        child: ListView.separated(
            itemBuilder: ((context, index) {
              return ListTile(title: Text("${mobiles[index]['name']}"));
            }),
            separatorBuilder: ((context, index) {
              return Divider(
                color: Colors.red[400],
                thickness: 4,
              );
            }),
            itemCount: mobiles.length),
      ),
    );
  }
}

class Exam13 extends StatefulWidget {
  const Exam13({super.key});

  @override
  State<Exam13> createState() => _Exam13State();
}

class _Exam13State extends State<Exam13> {
  List mobiles = [
    {"name": "S20 Ultra", "Screen": "6.2 ", "c": " 8i"},
    {"name": "S20 Ultra", "Screen": "6.2 ", "c": " 8i"},
    {"name": "S20 Ultra", "Screen": "6.2 ", "c": " 8i"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: GridView.builder(
          itemCount: mobiles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 50, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${mobiles[index]['name']}"),
            );
          },
        ),
      ),
    );
  }
}

class Exam14 extends StatefulWidget {
  const Exam14({super.key});

  @override
  State<Exam14> createState() => _Exam14State();
}

class _Exam14State extends State<Exam14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children: [
            Container(
              width: 50,
              color: Colors.red[200],
            ),
            Container(
              width: 50,
              color: Colors.red[200],
            )
          ],
        ),
      ),
    );
  }
}

class FullExam extends StatefulWidget {
  const FullExam({super.key});

  @override
  State<FullExam> createState() => _FullExamState();
}

class _FullExamState extends State<FullExam> {
  List items = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31
  ];
  List items1 = [
    "كانون الثاني",
    "شباط",
    "اذار",
    "نيسان",
    "ايار",
    "حزيرات",
    "تموز",
    "اب",
    "تشرين الاول",
    "تشرين الثاني",
    "كانون الاول",
    ""
  ];
  bool footBall = false;
  bool bascketBall = false;
  bool gym = false;
  bool run = false;
  List items2 = [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003];
  var selectedDay;
  var selectedMonth;
  var selectedYear;
  String? noGender;
  List car = [
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
    {"name": "BMW", "cc": "4000", "color": "black"},
  ];
  // ignore: unnecessary_new
  GlobalKey scaffolKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffolKey,
      appBar: AppBar(
        title: const Text("                            Example"),
      ),
      body: Container(
          padding: const EdgeInsets.all(5),
          color: const Color.fromARGB(255, 2, 27, 48),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    // margin: EdgeInsets.only(bottom: 70),
                    height: 200,
                    width: 385,

                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 63, 112),
                        borderRadius: BorderRadius.circular(35)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(left: 10, right: 10),
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 98, 175),
                              borderRadius: BorderRadius.circular(35)),
                          child: DropdownButton(
                            hint: const Center(
                              child: Text(
                                "  Day",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            items: items
                                .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      "  $e",
                                      style:
                                          const TextStyle(color: Colors.white),
                                      textDirection: TextDirection.ltr,
                                    )))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedDay = value;
                              });
                            },
                            value: selectedDay,
                            icon: const Icon(
                              Icons.view_day_outlined,
                              color: Colors.white,
                            ),
                            dropdownColor: Colors.blue[400],
                            isExpanded: false,
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(left: 10, right: 10),
                          width: 100,

                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 98, 175),
                              borderRadius: BorderRadius.circular(35)),
                          child: DropdownButton(
                            hint: const Text(
                              "   Month",
                              style: TextStyle(color: Colors.white),
                            ),
                            items: items1
                                .map((e) => DropdownMenuItem(
                                    // ignore: sort_child_properties_last
                                    child: Text(
                                      e,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    value: e))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedMonth = value;
                              });
                            },
                            value: selectedMonth,
                            dropdownColor: Colors.blue[400],
                            isExpanded: false,
                            icon: const Icon(
                              Icons.date_range,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          //   padding: EdgeInsets.only(left: 10, right: 10),
                          width: 75,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 98, 175),
                              borderRadius: BorderRadius.circular(35)),
                          child: DropdownButton(
                            hint: const Text(
                              "   Year",
                              style: TextStyle(color: Colors.white),
                            ),
                            items: items2
                                .map((e) => DropdownMenuItem(
                                      // ignore: sort_child_properties_last
                                      child: Text(
                                        "$e",
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedYear = value;
                              });
                            },
                            value: selectedYear,
                            dropdownColor: Colors.blue[400],
                            isExpanded: false,
                            icon: const Icon(
                              Icons.date_range,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("AHMAD BARAKAT"),
                            backgroundColor: Colors.blue[200],
                            duration: const Duration(seconds: 2),
                            padding: const EdgeInsets.all(10),
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: "Close",
                              onPressed: () {},
                              textColor: Colors.red[800],
                            ),
                          ));
                        },
                        // ignore: sort_child_properties_last
                        child: const Text("Elevated Button"),
                        style: ElevatedButton.styleFrom(
                            //primary =backgroundcolor
                            backgroundColor:
                                const Color.fromARGB(255, 3, 63, 112),
                            elevation: 100,
                            shadowColor: Colors.white,
                            //  padding: EdgeInsets.only(left: 50, right: 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35))),
                      ),
                      MaterialButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Ahmad Barakat"),
                                content: const Text("Flutter"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                backgroundColor: Colors.blue[200],
                                actions: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.flutter_dash),
                                    label: const Text("Ok"),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                        backgroundColor: Colors.blue[800]),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text("Material Button"),
                        color: const Color.fromARGB(255, 3, 63, 112),
                        textColor: Colors.white,
                        elevation: 100,
                        //  padding: EdgeInsets.only(left: 50, right: 50),
                        splashColor: Colors.blue[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 63, 112),
                        borderRadius: BorderRadius.circular(35)),
                    child: ListView(
                      // ignore: sort_child_properties_last
                      children: [
                        CheckboxListTile(
                          value: footBall,
                          onChanged: (value) {
                            setState(() {
                              footBall = value!;
                            });
                          },
                          title: const Text(
                            "football",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: Colors.blue[200],
                          secondary: const Icon(
                            Icons.sports_football,
                            color: Colors.white,
                          ),
                        ),
                        CheckboxListTile(
                          value: bascketBall,
                          onChanged: (value) {
                            setState(() {
                              bascketBall = value!;
                            });
                          },
                          title: const Text(
                            "bascketball",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: Colors.blue[200],
                          secondary: const Icon(
                            Icons.sports_football,
                            color: Colors.white,
                          ),
                        ),
                        CheckboxListTile(
                          value: gym,
                          onChanged: (value) {
                            setState(() {
                              gym = value!;
                            });
                          },
                          title: const Text(
                            "gym",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: Colors.blue[200],
                          secondary: const Icon(
                            Icons.sports_gymnastics,
                            color: Colors.white,
                          ),
                        ),
                        CheckboxListTile(
                          value: run,
                          onChanged: (value) {
                            setState(() {
                              run = value!;
                            });
                          },
                          title: const Text(
                            "run",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: Colors.blue[200],
                          secondary: const Icon(
                            Icons.sports_football,
                            color: Colors.white,
                          ),
                        ),
                        CheckboxListTile(
                          value: footBall,
                          onChanged: (value) {
                            setState(() {
                              footBall = value!;
                            });
                          },
                          title: const Text(
                            "football",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: Colors.blue[200],
                          secondary: const Icon(
                            Icons.sports_football,
                            color: Colors.white,
                          ),
                        )
                      ],
                      padding: const EdgeInsets.all(10),
                      physics: const BouncingScrollPhysics(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 3, 63, 112),
                              borderRadius: BorderRadius.circular(35)),
                          child: const Text(
                            "This Is A INKWELL Button",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 63, 112),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        RadioListTile(
                          value: "male",
                          groupValue: noGender,
                          onChanged: (value) {
                            setState(() {
                              noGender = value;
                            });
                          },
                          title: const Text(
                            "MALE",
                            style: TextStyle(color: Colors.white),
                          ),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.blue[200],
                          selected: noGender == "male" ? true : false,
                        ),
                        RadioListTile(
                          value: "female",
                          groupValue: noGender,
                          onChanged: (value) {
                            setState(() {
                              noGender = value;
                            });
                          },
                          title: const Text(
                            "FEMALE",
                            style: TextStyle(color: Colors.white),
                          ),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.blue[200],
                          //selected: noGender == "male" ? true : false,
                          //selectedTileColor: Colors.white,
                        ),
                        RadioListTile(
                          value: "nogender",
                          groupValue: noGender,
                          onChanged: (value) {
                            setState(() {
                              noGender = value;
                            });
                          },
                          title: const Text(
                            "NO GENDER",
                            style: TextStyle(color: Colors.white),
                          ),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.blue[200],
                          //  selected: noGender == "male" ? true : false,
                          //selectedTileColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 63, 112),
                                  borderRadius: BorderRadius.circular(35)),
                              child: const Text(
                                "TEXT BUTTON",
                                style: TextStyle(color: Colors.white),
                              ))),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 3, 63, 112),
                              borderRadius: BorderRadius.circular(35)),
                          child: const Text(
                            "Gesture Detector",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 63, 112),
                        borderRadius: BorderRadius.circular(35)),
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: car.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            "${car[index]['name']}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "${car[index]['cc']}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.flutter_dash),
                        label: const Text("Elevated Button Icon"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 3, 63, 112),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35))),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5, top: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color.fromARGB(255, 3, 63, 112),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.flutter_dash),
                          color: Colors.white,
                          style: IconButton.styleFrom(
                              //shadowColor: Color.fromARGB(255, 3, 63, 112),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}

//app bar and drawer and tabbar
class Exam15 extends StatefulWidget {
  const Exam15({super.key});

  @override
  State<Exam15> createState() => _Exam15State();
}

class _Exam15State extends State<Exam15> {
  // ignore: unnecessary_new
  GlobalKey scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 36, 63),
          title: const Text(
            "Flutter",
            style: TextStyle(color: Color.fromARGB(255, 7, 92, 161)),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          elevation: 20,
          shadowColor: const Color.fromARGB(255, 7, 92, 161),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.flutter_dash,
                  color: Color.fromARGB(255, 7, 92, 161),
                )),

            // ignore: deprecated_member_use
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                // ignore: sort_child_properties_last
                child: Text("page1"),
                icon: Icon(Icons.home),
              ),
              Tab(
                // ignore: sort_child_properties_last
                child: Text("page2"),
                icon: Icon(Icons.person_off_outlined),
              )
            ],
            //1
            //isScrollable: true,
            //2
            indicatorColor: Color.fromARGB(255, 9, 124, 218),
            //3
            //indicatorPadding: EdgeInsets.all(10),
            //4
            labelColor: Color.fromARGB(255, 119, 182, 233),

            ///5
            //onTap: (value) {},
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        drawer: Drawer(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("Ahmad Barakat"),
                accountEmail: Text("ahmad@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: AssetImage("images/1.jpg")),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 7, 92, 161)),
              ),
              ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 7, 92, 161),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: ,
        body: TabBarView(children: [
          Container(
            color: const Color.fromARGB(255, 7, 92, 161),
            width: double.infinity,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue[300],
          )
        ]),
      ),
    );
  }
}

//bottom navigator bar
class Exam16 extends StatefulWidget {
  const Exam16({super.key});

  @override
  State<Exam16> createState() => _Exam16State();
}

class _Exam16State extends State<Exam16> {
  List pages = [
    Container(
      color: const Color.fromARGB(255, 7, 92, 161),
      width: double.infinity,
    ),
    Container(
      width: double.infinity,
      color: Colors.blue[300],
    )
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 36, 63),
        title: const Text(
          "Flutter",
          style: TextStyle(color: Color.fromARGB(255, 7, 92, 161)),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        elevation: 20,
        shadowColor: const Color.fromARGB(255, 7, 92, 161),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flutter_dash,
                color: Color.fromARGB(255, 7, 92, 161),
              )),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 7, 92, 161)),
              label: "a"),
          BottomNavigationBarItem(
              label: "aa",
              icon: Icon(Icons.flutter_dash,
                  color: Color.fromARGB(255, 7, 92, 161)))
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 2, 36, 63),
        selectedItemColor: Colors.white,
        selectedFontSize: 15,
        selectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}

class Exam17 extends StatefulWidget {
  const Exam17({super.key});

  @override
  State<Exam17> createState() => _Exam17State();
}

class _Exam17State extends State<Exam17> {
  String selectedCountry = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItems: true,
              items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              label: "Menu mode",
              // ignore: deprecated_member_use
              hint: "country in menu mode",
              popupItemDisabled: (String s) => s.startsWith('I'),
              onChanged: (val) {},
              selectedItem: selectedCountry,
              popupBarrierColor: Colors.red,
              popupBackgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

//geolocator and geocoding
class Exam18 extends StatefulWidget {
  const Exam18({super.key});

  @override
  State<Exam18> createState() => _Exam18State();
}

class _Exam18State extends State<Exam18> {
  late Position cl;
  Future getPosition() async {
    bool services;
    services = await Geolocator.isLocationServiceEnabled();
    print("$services");
    print("==================");
    /* if (services == false) {
      AwesomeDialog(context: context, title: "aa", body: Text("not enable"))
        ..show();
    }*/
    LocationPermission per;
    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
      if (per == LocationPermission.always) {
        getLatAndLong();
      }
    }
  }

  getLatAndLong() async {
    return await Geolocator.getCurrentPosition().then((value) => value);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(70),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      cl = await getLatAndLong();
                      print("============");
                      print(cl.latitude);
                      print("============");
                      print(cl.longitude);
                      print("============");
                    },
                    child: Text("get lat and long")),
                ElevatedButton(
                    onPressed: () async {
                      // cl = await getLatAndLong();
                      List<Placemark> placemarks =
                          await placemarkFromCoordinates(52.2165157, 6.9437819);
                    },
                    child: Text("location"))
              ],
            ),
          )),
    );
  }
}

///////////////////////////////////////
///
//
class E20 extends StatefulWidget {
  const E20({super.key});
  @override
  _E20State createState() => _E20State();
}

class _E20State extends State<E20> {
  //final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  late Position _currentPosition;
  String? _currentAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentPosition != null) Text(_currentAddress!),
            ElevatedButton(
              child: Text("Get location"),
              onPressed: () {
                _getCurrentLocation();
              },
            ),
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
            "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}

class Exam19 extends StatefulWidget {
  const Exam19({super.key});

  @override
  State<Exam19> createState() => _Exam19State();
}

class _Exam19State extends State<Exam19> {
  DateTime date1 = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: ElevatedButton(
            child: Text("date time"),
            onPressed: () {
              print(Jiffy(date1).E);
            }),
      ),
    ));
  }
}

class Exam20 extends StatefulWidget {
  const Exam20({super.key});

  @override
  State<Exam20> createState() => _Exam20State();
}

class _Exam20State extends State<Exam20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "ahmad barakat",
        style: TextStyle(fontSize: 50, fontFamily: "YeonSung-Regular"),
      )),
    );
  }
}
/*
class Exam21 extends StatefulWidget {
  const Exam21({super.key});

  @override
  State<Exam21> createState() => _Exam21State();
}

class _Exam21State extends State<Exam21> {
  File? image;
  final ImagePicker imagePicker = ImagePicker();
  uploadImage() async {
    final pickImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickImage != null) {
      setState(() {
        image = File(pickImage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
                child: ElevatedButton(
                    onPressed: uploadImage, child: Text("Upload Image"))),
            image == null ? Text("noo") : Image.file(image!)
          ],
        ),
      ),
    );
  }
}*/

class Exam22 extends StatefulWidget {
  const Exam22({super.key});

  @override
  State<Exam22> createState() => _Exam22State();
}

class _Exam22State extends State<Exam22> {
  List posts = [];
  getPost() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts?id=14");
    var responce = await http.get(url);
    var respocebody = jsonDecode(responce.body);
    setState(() {
      posts.addAll(respocebody);
      //print(posts);
    });
  }

  addPosts() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.post(
      url,
      body: {"title": 'foo', "body": 'bar', "userId": '1'},
      // headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    var responsebode = jsonDecode(response.body);
    print(responsebode);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  addPosts();
                },
                child: Text("add")),
            posts == null || posts.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: posts.length,
                        itemBuilder: ((context, index) {
                          return Container(
                              margin: EdgeInsets.all(10),
                              child: Text("${posts[index]['title']}"));
                        })),
                  ),
          ],
        ));
  }
}

//future builder with ListView.builder and api
class Exam23 extends StatefulWidget {
  const Exam23({super.key});

  @override
  State<Exam23> createState() => _Exam23State();
}

class _Exam23State extends State<Exam23> {
  getpost() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);
    var responsebode = jsonDecode(response.body);
    return responsebode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: getpost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, i) {
                  return Container(
                    child: Text(
                      "${snapshot.data!} ",
                    ),
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ));
  }
}
