import 'dart:async';

import 'package:flutter/material.dart';
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
                      'Cross platform app developer using flutter,\n get in touch because I love getting to know new people ',
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
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Text('About Me'),
                    Text(
                        'Currently persuing pharmaceutical studies in the university of contsantine 03'),
                    Text(
                        'Have experience as a front end developer using standard web technologies'),
                    Text(
                        'Here are some of the technologies that I have been using recently:'),
                    Text('Dart'),
                    Text('Flutter'),
                    Text('Git + GitHub'),
                    Text('Javascript + CSS3 + HTML5'),
                    Text('Firebase')
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
