import 'package:flutter/material.dart';
import 'home_screen.dart';

class MissionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.5,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: 50.0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/Login header BG.png"),
                    ),
                  ),
                  child: Image.asset("assets/images/OUR MISSION.png"),
                ),
                Positioned(
                  bottom: 0,
                  left: 20.0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 270.0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0.0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 100.0,
                    child: Row(
                      children: [
                        Spacer(),
                        Image.asset(
                          "assets/images/image 3 for our mission floating image tab.png",
                        ),
                        Spacer(),
                        Image.asset(
                            "assets/images/Image 2 for Our mission floating image tab.png"),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'VIRAAN is a propitious ecosystem aimed at impacting lives of millions. We encourage low wage workers to join our ecosystem and help us pick up segregated waste from users. We have partnered with NGOs who offer meals and education to their kids, thus aiming at reducing hunger disparity and child labor.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'The volunteers as we fondly address our employees, pick up segregated waste sold by our users and sell them directly to our vendor. They keep 80% of the earnings and 20% is reported back to the us. Our volunteers drive on least fuel consuming roads to reduce their carbon footprint to a minimum.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Nunito'),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'We encourage the users to segregate their at home waste using our in-built ML model, which identifies the waste into the categories of plastic, glass, paper, metal and kitchen waste, consequently advising the users on ways of reducing their waste and encouraging a zero waste living.'
              'The users receive coins as a token of reward from us towards saving the environment and generating employment. The coins can be later redeemed to avail offers provided by us.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Nunito'),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'VIRAAN is an ecosystem that is actively fighting several social issues and the fuel of this ecosystem is you, our users. Come, join us, become part of our ecosystem, leave your legacy and change lives of millions.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Nunito', fontSize: 15.0),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/WhatsApp Image 2021-05-06 at 16.53.29.jpeg'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/WhatsApp Image 2021-05-04 at 18.32.49.jpeg'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/headshot.jpeg'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ques.jpg'),
                  radius: 40.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
