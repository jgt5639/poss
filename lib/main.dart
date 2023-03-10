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

bool isChecked = false;

int quantity1 = 0,
    quantity2 = 0,
    quantity3 = 0,
    quantity4 = 0,
    quantity5 = 0,
    quantity6 = 0,
    quantitychips = 0,
    quantityHotChoco = 0,
    quantityTea = 0;

int total = 0, grandtotal = 0, givenmoney = 0;

class _MyHomePageState extends State<MyHomePage> {
  bool sele = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Money Made: $grandtotal"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Scrollbar(
            thumbVisibility: true,
            child: ListView(
              shrinkWrap: true,
              children: [
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
                        iconSize: 30,
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
                      Text(quantity1.toString(),
                          style: TextStyle(fontSize: 35)),
                      IconButton(
                        iconSize: 30,
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
                          iconSize: 30,
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
                        Text(quantity2.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
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
                          iconSize: 30,
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
                        Text(quantity6.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
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
                    leading: Image.asset('assets/Chips.jpg', width: 80),
                    title: const Text(
                      "Chips",
                      style: TextStyle(fontSize: 35),
                    ),
                    subtitle:
                        const Text('\$2.00', style: TextStyle(fontSize: 25)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quantitychips < 0 || quantitychips == 0) {
                                quantitychips = 0;
                              } else {
                                quantitychips--;
                              }
                            });
                          },
                        ),
                        Text(quantitychips.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantitychips++;
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
                          iconSize: 30,
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
                        Text(quantity5.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
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
                    leading: Image.asset('assets/HotChocolate.jpg', width: 80),
                    title: const Text(
                      "Hot Chocolate",
                      style: TextStyle(fontSize: 35),
                    ),
                    subtitle:
                        const Text('\$4.00', style: TextStyle(fontSize: 25)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quantityHotChoco < 0 ||
                                  quantityHotChoco == 0) {
                                quantityHotChoco = 0;
                              } else {
                                quantityHotChoco--;
                              }
                            });
                          },
                        ),
                        Text(quantityHotChoco.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantityHotChoco++;
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
                    leading: Image.asset('assets/Tea.jpg', width: 80),
                    title: const Text(
                      "Tea",
                      style: TextStyle(fontSize: 35),
                    ),
                    subtitle:
                        const Text('\$3.00', style: TextStyle(fontSize: 25)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quantityTea < 0 || quantityTea == 0) {
                                quantityTea = 0;
                              } else {
                                quantityTea--;
                              }
                            });
                          },
                        ),
                        Text(quantityTea.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantityTea++;
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
                          iconSize: 30,
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
                        Text(quantity3.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
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
                          iconSize: 30,
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
                        Text(quantity4.toString(),
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity4++;
                            });
                          },
                        ),
                      ],
                    )),
                const SizedBox(height: 30),
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
                            (quantity6 * 7) +
                            (quantitychips * 2) +
                            (quantityHotChoco * 4) +
                            (quantityTea * 3);

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
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
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
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text("\$1")),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 5;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text("\$5")),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 10;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text("\$10")),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 20;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text("\$20")),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 50;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text("\$50")),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              givenmoney += 100;
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text("\$100"))
                    ],
                  )),
              Text(
                  "Card Total: \$${(total + ((total * .026) + (total * .015) + .10)).toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20.0,
                  )),
              const SizedBox(height: 25),
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
      quantitychips = 0;
      quantityHotChoco = 0;
      quantityTea = 0;
      total = 0;
      setState(() {});
    });
    setState(() {});
  }
}
