import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
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
                      'Wallet',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/wallet.jpg',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3161903163.
                  SizedBox(width: 40),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Wallet',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text('\$1000', style: TextStyle(color: Colors.grey)),
                      ])
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Add money to your wallet',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2685871346.
                  child: Text('\$100'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2685871346.
                  child: Text('\$200'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2685871346.
                  child: Text('\$500'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2685871346.
                  child: Text('\$1000'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350,35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
                ),
                backgroundColor: Color(0xff008080)
              ),
              onPressed: (){}, child: Text('Add money', style: TextStyle(color: Colors.white),)))
          ],
        ),
      ),
    );
  }
}
