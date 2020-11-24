import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  'Flutter, Football, Books, Phd in pharmaceuticals.\n Introvert',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontSize: 23,
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
                        html.window
                            .open(Constants.linkedin_url, 'Amir on linkedin');
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
                        html.window.open(Constants.stackoverflow_url,
                            'Amir on stackoverflow');
                      },
                      icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.stackoverflow),
                      ),
                      label: Text('stack-overflow'),
                    ),
                    FlatButton.icon(
                      onPressed: () {
                        html.window
                            .open(Constants.instagram_url, 'Amir on instagram');
                      },
                      icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram),
                      ),
                      label: Text('instagram'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
