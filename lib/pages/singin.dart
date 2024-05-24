import 'package:flutter/material.dart';
import 'package:learn1/pages/Singup.dart';
import 'package:learn1/pages/home.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              child: CircleAvatar(
                // ignore: sort_child_properties_last
                child: Image.asset("images/logo.png"),
                radius: 80,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Enter Email",
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.blue[900],
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 3, 62, 110), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 116, 177, 228),
                              width: 2),
                        ),
                        border: InputBorder.none),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        icon: Icon(
                          Icons.password,
                          color: Colors.blue[900],
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 3, 62, 110), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 116, 177, 228),
                              width: 2),
                        ),
                        border: InputBorder.none),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Are you don't have account ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 3, 62, 110),
                            fontSize: 16),
                      ),
                      InkWell(
                        child: Text(
                          "Singup",
                          style: TextStyle(
                              color: Colors.red[800],
                              fontStyle: FontStyle.italic,
                              fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) {
                            return const Singup();
                          })));
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: ((context) {
                        return const Home();
                      })));
                    },
                    // ignore: sort_child_properties_last
                    child: const Text("Singin"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.only(left: 35, right: 35)),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
