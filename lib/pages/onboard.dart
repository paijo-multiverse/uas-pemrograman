import 'package:flutter/material.dart';
import 'package:myapp/pages/sign_up.dart';
import 'package:myapp/widget/content_model.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

// Suggested code may be subject to a license. Learn more: ~LicenseLog:20305996.
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                      child: Column(
                        children: [
                          Image.asset(contents[i].image,
                              height: 300,
                              width: MediaQuery.of(context).size.width / 1.5,
                              fit: BoxFit.fill),
            // Suggested code may be subject to a license. Learn more: ~LicenseLog:2782359894.
            // Suggested code may be subject to a license. Learn more: ~LicenseLog:2204438462.
                          SizedBox(height: 20),
                          Text(contents[i].title,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Text(contents[i].description,
                              textAlign: TextAlign.center),
                        ],
                      ),
                      padding: EdgeInsets.all(20));
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length, (index) => buildDot(index, context)),
            ),
          ),
          GestureDetector(
              onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                height: 60,
                margin: EdgeInsets.all(40),
                width: double.infinity,
                child: Center(
                  child: Text(
                    currentIndex == contents.length - 1 ? 'Get Started' : 'Next',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2922317116.
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3957183853.
      width: currentIndex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentIndex == index ? Colors.blue : Colors.grey),
    );
  }
}
