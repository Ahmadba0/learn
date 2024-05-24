// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 35, 63),
        title: const Text(
          "Notes",
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  maxLength: 50,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "Title: ",
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 116, 177, 228)),
                      prefixIcon: const Icon(
                        Icons.title,
                        color: Color.fromARGB(255, 116, 177, 228),
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
                  height: 12,
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 4,
                  maxLength: 200,
                  decoration: InputDecoration(
                      labelText: "Content: ",
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 116, 177, 228)),
                      prefixIcon: const Icon(
                        Icons.abc,
                        color: Color.fromARGB(255, 116, 177, 228),
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
                )
              ],
            )),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton.icon(
              onPressed: () {
                showBottomShet();
              },
              icon: const Icon(Icons.image),
              label: const Text("Add Image"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(left: 35, right: 35)),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save_alt_rounded),
              label: const Text("Add "),
              style: ElevatedButton.styleFrom(
                  elevation: 30,
                  shadowColor: Colors.blue[800],
                  backgroundColor: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(left: 50, right: 50)),
            ),
          ],
        ),
      ),
    );
  }

  showBottomShet() {
    return showModalBottomSheet(
        context: context,
        builder: ((context) {
          return Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.blue[900]),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Choose Image ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo_size_select_actual_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Text(
                          "Gallery",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onTap: () {
                          print("aa");
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Text(
                          "Camera ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onTap: () {
                          print("aa");
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }
}
