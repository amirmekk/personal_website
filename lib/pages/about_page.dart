import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;
import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  CarouselController buttonCarouselController = CarouselController();
  bool up = false;
  Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        Duration(milliseconds: 500),
        (Timer t) => setState(() {
              up = !up;
            }));
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isTooSmall = MediaQuery.of(context).size.width < 470;
    return CarouselSlider(
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        enableInfiniteScroll: false,
        initialPage: 0,
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1,
        pageSnapping: true,
      ),
      items: [
        Container(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(Assets.avatar),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Amir Mekkaoui',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Cross-platform app developer,\n get in touch because I love getting to know new people',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          onPressed: () {
                            html.window
                                .open(Constants.twitter_url, 'Amir on twitter');
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.twitter),
                          ),
                          label: Text('Twitter'),
                        ),
                        FlatButton.icon(
                          onPressed: () {
                            html.window.open(Constants.stackoverflow_url,
                                'Amir on stackoverflow');
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.stackoverflow),
                          ),
                          label: Text('stackoverflow'),
                        ),
                        FlatButton.icon(
                          onPressed: () {
                            html.window.open(
                                Constants.linkedin_url, 'Amir on linkedin');
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.linkedin),
                          ),
                          label: Text('linkedin'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton.icon(
                          onPressed: () {
                            html.window
                                .open(Constants.youtube_url, 'Amir on youtube');
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.youtube),
                          ),
                          label: Text('youtube'),
                        ),
                        FlatButton.icon(
                          onPressed: () {
                            html.window
                                .open(Constants.github_url, 'Amir on github');
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.github),
                          ),
                          label: Text('github'),
                        ),
                        FlatButton.icon(
                          onPressed: () {
                            html.window.open(
                                Constants.instagram_url, 'Amir on instagram');
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(Assets.instagram),
                          ),
                          label: Text('instagram'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedContainer(
                        padding: EdgeInsets.all(10.0),
                        duration:
                            Duration(milliseconds: 350), // Animation speed
                        transform: Transform.translate(
                          offset: Offset(
                              0,
                              up == true
                                  ? -7
                                  : 0), // Change -100 for the y offset
                        ).transform,
                        child: GestureDetector(
                          onTap: () {
                            buttonCarouselController.nextPage();
                          },
                          child: Container(
                            height: 50.0,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 50,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * 0.1),
                            child: Text(
                              'About Me',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          isTooSmall
                              ? Padding(
                                  padding: EdgeInsets.only(bottom: 16.0),
                                  child: Center(
                                    child: CircleAvatar(
                                      radius: 100,
                                      backgroundImage:
                                          AssetImage(Assets.avatar),
                                    ),
                                  ),
                                )
                              : Text(''),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'I\'m a 21 years old Algerian freelancer who uses flutter SDK to build android, IOS, and  web apps, I’ve been using the flutter SDK since its early beta days.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'Used to work as a front-end web developer.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'Currently pursuing pharmaceutical studies at the University of Constantine.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'I like traveling to new places, gaming and reading about tech stuff.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'Although my native language is Arabic, I am very good at English and French.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'I have worked with many international clients check out some of my previous work in the projects tab below.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'Contact me if you’re interested in my services or you want to collaborate on some interesting project or you just want to say hi.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'Here are some of the technologies that I have been using recently:',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  isTooSmall
                                      ? '· Dart\n· Flutter\n· Javascript + CSS3 + HTML5\n· Git + GitHub\n· Firebase'
                                      : '· Dart\n· Flutter\n· Javascript + CSS3 + HTML5',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              isTooSmall
                                  ? Text('')
                                  : Text(
                                      '· Git + GitHub\n· Firebase',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  isTooSmall
                      ? Text('')
                      : Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 100,
                                  backgroundImage: AssetImage(Assets.avatar),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
