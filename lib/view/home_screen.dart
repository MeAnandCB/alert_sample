import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void myalrt() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Exit Conformation"),
        content: Text("Do you want to exit?"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Text("Yes")),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: myalrt, child: Text("Alert")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 4),
                      content: Text("flutter"),
                      action: SnackBarAction(label: "Undo", onPressed: () {}),
                    ),
                  );
                },
                child: Text("Snack")),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Color.fromARGB(255, 163, 174, 175),
                    context: context,
                    builder: (context) => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Text("Bottom Sheet")),
          ],
        ),
      ),
    );
  }
}
