import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
                elevation: 2.0,
                child: Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3712370234.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2950789201.
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Center(
                    child: Text(
                      'Food Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(top:20, left: 20, right: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2.0,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                    // Suggested code may be subject to a license. Learn more: ~LicenseLog:2911986220.
                            height: 70,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text('2')),
                          ),
                          SizedBox(width: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset('assets/images/food.jpg', height: 60, width: 60, fit: BoxFit.cover,)),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Text('Burger', style: TextStyle(fontWeight: FontWeight.bold)),
                                
                                Text('\$100')
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4180645395.
                Padding(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:56535436.
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Harga', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('\$100', style: TextStyle(fontWeight: FontWeight.bold)),
                      
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
