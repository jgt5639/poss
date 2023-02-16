import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int quantity1 = 0,
    quantity2 = 0,
    quantity3 = 0,
    quantity4 = 0,
    quantity5 = 0,
    quantity6 = 0;

int total = 0, grandtotal = 0, givenmoney = 0;

int counter1 = 0,
    counter2 = 0,
    counter3 = 0,
    counter4 = 0,
    counter5 = 0,
    counter6 = 0;

class _MyHomePageState extends State<MyHomePage> {
  bool sele = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Money Made: $grandtotal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fajita Taco Counter: $counter1",
                style: const TextStyle(
                  fontSize: 20.0,
                )),
            Text("Hotdog Counter: $counter2",
                style: const TextStyle(
                  fontSize: 20.0,
                )),
            Text("Wrap Counter: $counter3",
                style: const TextStyle(
                  fontSize: 20.0,
                )),
            Text("Monster Counter: $counter4",
                style: const TextStyle(
                  fontSize: 20.0,
                )),
            Text("Coke Counter: $counter5",
                style: const TextStyle(
                  fontSize: 20.0,
                )),
            Text("Water Counter: $counter6",
                style: const TextStyle(
                  fontSize: 20.0,
                )),
            const SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Scrollbar(
                    child: Column(children: [
                  ListTile(
                    horizontalTitleGap: 50,
                    dense: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 2)),
                    leading: Image.asset('assets/FajitaTaco.jpg'),
                    title: const Text(
                      "Taco",
                      style: TextStyle(fontSize: 35),
                    ),
                    subtitle:
                        const Text(' \$8.00', style: TextStyle(fontSize: 25)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quantity1 < 0 || quantity1 == 0) {
                                quantity1 = 0;
                              } else {
                                quantity1--;
                              }
                            });
                          },
                        ),
                        Text(quantity1.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity1++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                      horizontalTitleGap: 50,
                      dense: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 2)),
                      leading: Image.asset(
                        'assets/Hotdog.jpg',
                        width: 80,
                      ),
                      title: const Text(
                        "Hotdog",
                        style: TextStyle(fontSize: 35),
                      ),
                      subtitle:
                          const Text('\$5.00', style: TextStyle(fontSize: 25)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity2 < 0 || quantity2 == 0) {
                                  quantity2 = 0;
                                } else {
                                  quantity2--;
                                }
                              });
                            },
                          ),
                          Text(quantity2.toString()),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity2++;
                              });
                            },
                          ),
                        ],
                      )),
                  ListTile(
                      horizontalTitleGap: 50,
                      dense: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 2)),
                      leading: Image.asset(
                        'assets/SausageWrap.jpg',
                        width: 80,
                      ),
                      title: const Text(
                        "Wrap",
                        style: TextStyle(fontSize: 35),
                      ),
                      subtitle:
                          const Text('\$7.00', style: TextStyle(fontSize: 25)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity6 < 0 || quantity6 == 0) {
                                  quantity6 = 0;
                                } else {
                                  quantity6--;
                                }
                              });
                            },
                          ),
                          Text(quantity6.toString()),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity6++;
                              });
                            },
                          ),
                        ],
                      )),
                  ListTile(
                      horizontalTitleGap: 50,
                      dense: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 2)),
                      leading: Image.asset('assets/Monster.jpg', width: 80),
                      title: const Text(
                        "Monster",
                        style: TextStyle(fontSize: 35),
                      ),
                      subtitle:
                          const Text('\$4.00', style: TextStyle(fontSize: 25)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity5 < 0 || quantity5 == 0) {
                                  quantity5 = 0;
                                } else {
                                  quantity5--;
                                }
                              });
                            },
                          ),
                          Text(quantity5.toString()),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity5++;
                              });
                            },
                          ),
                        ],
                      )),
                  ListTile(
                      horizontalTitleGap: 50,
                      dense: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 2)),
                      leading: Image.asset('assets/Coke.jpg', width: 80),
                      title: const Text(
                        "Coke",
                        style: TextStyle(fontSize: 35),
                      ),
                      subtitle:
                          const Text('\$2.00', style: TextStyle(fontSize: 25)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity3 < 0 || quantity3 == 0) {
                                  quantity3 = 0;
                                } else {
                                  quantity3--;
                                }
                              });
                            },
                          ),
                          Text(quantity3.toString()),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity3++;
                              });
                            },
                          ),
                        ],
                      )),
                  ListTile(
                      horizontalTitleGap: 50,
                      dense: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 2)),
                      leading: Image.asset('assets/Water.jpg', width: 80),
                      title: const Text(
                        "Water",
                        style: TextStyle(fontSize: 35),
                      ),
                      subtitle:
                          const Text('\$2.00', style: TextStyle(fontSize: 25)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity4 < 0 || quantity4 == 0) {
                                  quantity4 = 0;
                                } else {
                                  quantity4--;
                                }
                              });
                            },
                          ),
                          Text(quantity4.toString()),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity4++;
                              });
                            },
                          ),
                        ],
                      ))
                ])),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Text("Reset")),
                    const SizedBox(width: 50),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text("Next"),
                      onPressed: () {
                        total = (quantity1 * 8) +
                            (quantity2 * 5) +
                            (quantity3 * 2) +
                            (quantity4 * 2) +
                            (quantity5 * 4) +
                            (quantity6 * 7);

                        counter1 += quantity1;
                        counter2 += quantity2;
                        counter3 += quantity6;
                        counter4 += quantity5;
                        counter5 += quantity3;
                        counter6 += quantity4;

                        grandtotal += total;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TotalScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TotalScreen extends StatefulWidget {
  @override
  State<TotalScreen> createState() => _TotalScreenState();
}

class _TotalScreenState extends State<TotalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Total Screen"),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                "Your total is:",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "\$ $total",
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("Cash Recieved: ",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
              const SizedBox(
                height: 25,
              ),
              Text("\$ $givenmoney",
                  style: const TextStyle(
                    fontSize: 30.0,
                  )),
              const SizedBox(
                height: 25,
              ),
              const Text("Change: ",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
              const SizedBox(
                height: 25,
              ),
              Text("\$ ${givenmoney - total}",
                  style: const TextStyle(
                    fontSize: 30.0,
                  )),
              SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 1;
                            });
                          },
                          child: const Text("\$1"),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          )),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 5;
                            });
                          },
                          child: const Text("\$5"),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          )),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 10;
                            });
                          },
                          child: const Text("\$10"),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          )),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 20;
                            });
                          },
                          child: const Text("\$20"),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          )),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 50;
                            });
                          },
                          child: const Text("\$50"),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          )),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 100;
                            });
                          },
                          child: const Text("\$100"),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ))
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      givenmoney = 0;
                      _resetValues();
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("Done"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        givenmoney = 0;
                      });
                    },
                    icon: const Icon(Icons.restart_alt),
                    label: const Text("Reset Cash"),
                  ),
                ],
              ),
            ]),
      ),
    );
  }

  void _resetValues() {
    setState(() {
      quantity1 = 0;
      quantity2 = 0;
      quantity3 = 0;
      quantity4 = 0;
      quantity5 = 0;
      quantity6 = 0;
      total = 0;
      setState(() {});
    });
    setState(() {});
  }
}
