// Suggested code may be subject to a license. Learn more: ~LicenseLog:1171186571.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3277447132.

import 'package:flutter/material.dart';
import 'package:myapp/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, burger = false, salad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 50, left: 5, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Asep',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.shopping_cart)
                ],
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Delicious Food',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Discover good and great food',
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(height: 10),
              showItem(),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Details(),
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/pizza2.jpg',
                                  width: 150,
                                  height: 150,
                                ),
                                const Text(
                                  'Cheese pizza',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Fresh and baked',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black38),
                                ),
                                const SizedBox(height: 5),
                                const Text('\$12.99')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/salad2.jpg',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                'Vegie Salad',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Fresh and baked',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black38),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                '\$12.99',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Material(
              //   elevation: 10,
              //   borderRadius: BorderRadius.circular(20),
              //   child: Container(
              //     padding: EdgeInsets.all(5),
              //     child: Row(
              //       children: [
              //         Image.asset(
              //           'assets/images/salad2.jpg',
              //           height: 120,
              //           width: 120,
              //           fit: BoxFit.cover,
              //         ),
              //         SizedBox(width: 15),
              //         Column(
              //           children: [
              //             Container(
              //               width: MediaQuery.of(context).size.width * 0.5,
              //               child: Text(
              //                 'Mixed potato Salad with chicken parmesan',
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Container(
              //               width: MediaQuery.of(context).size.width * 0.5,
              //               child: Text('Fresh vegetable',
              //                   style: TextStyle(color: Colors.black38, fontSize: 11)),
              //             ),
              //             Container(
              //               width: MediaQuery.of(context).size.width * 0.5,
              //               child: Text('\$6.99', style: TextStyle(fontWeight: FontWeight.bold)),
              //             )
              //           ],
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          )),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = !icecream;
            });
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: icecream ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/ice-cream.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: icecream ? Colors.white : Colors.black,
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              burger = !burger;
            });
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: burger ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/burger.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: burger ? Colors.white : Colors.black,
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              pizza = !pizza;
            });
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: pizza ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/pizza.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: pizza ? Colors.white : Colors.black,
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              salad = !salad;
            });
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: salad ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/salad.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: salad ? Colors.white : Colors.black,
                ),
              )),
        ),
      ],
    );
  }
}
