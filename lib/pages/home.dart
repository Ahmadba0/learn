import 'package:flutter/material.dart';
import 'package:learn1/function/addNote.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List notes = [
    {"note": "hello 1 ", "photo": "logo.png"},
    {"note": "hello 2 ", "photo": "logo.png"},
    {"note": "hello 3 ", "photo": "logo.png"},
    {"note": "hello 4 ", "photo": "logo.png"}
  ];
  @override
  Widget build(BuildContext context) {
    //double widthMedia = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 35, 63),
        title: const Text(
          "Notes",
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // ignore: sort_child_properties_last
        child: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: const Color.fromARGB(255, 1, 35, 63),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Dismissible(
              key: Key("$index"),
              child: ListNotes(
                notes: notes[index],
              ));
        },
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final notes;

  const ListNotes({
    super.key,
    this.notes,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: CircleAvatar(
                child: Image.asset("images/logo.png"),
              )),
          Expanded(
            flex: 5,
            child: ListTile(
              title: const Text(
                "title",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 1, 35, 63)),
              ),
              subtitle: Text(
                "${notes['note']}",
                style: const TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 12, 62, 104)),
              ),

              //  trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              // leading: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const AddNote();
                  })));
                },
                icon: const Icon(Icons.edit)),
          )
        ],
      ),
    );
  }
}
