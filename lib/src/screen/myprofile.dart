import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final String g = 'https://github.com/yousif-kamal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/top.jpg"),
                    fit: BoxFit.cover)),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/xom.jpg"),
                    radius: 90,
                  ),
                ),

                // Container(
                //   width: 200,
                //   height: 200,
                //   decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(100),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Yousif Kamal",
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          Text(
            'Mobile App Developer | Flutter',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 8,
            color: const Color.fromARGB(255, 5, 119, 213),
            endIndent: 15,
            indent: 15,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: ElevatedButton.icon(
              onPressed: () {
                _launchURL("https://web.facebook.com/yousif.kamal.s");
              },
              icon: FaIcon(FontAwesomeIcons.facebook),
              label: Text("facebook"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            child: ElevatedButton.icon(
                onPressed: () {
                  _launchURL("https://www.instagram.com/yousif__kamal/");
                },
                icon: FaIcon(FontAwesomeIcons.instagram),
                label: Text("Instagram")),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            child: ElevatedButton.icon(
                onPressed: () {
                  _launchURL("https://github.com/yousif-kamal");
                },
                icon: FaIcon(FontAwesomeIcons.github),
                label: Text("github")),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            child: ElevatedButton.icon(
                onPressed: () {
                  _launchURL(
                      "https://www.linkedin.com/in/yousif-kamal-6b90b8237/");
                },
                icon: FaIcon(FontAwesomeIcons.linkedin),
                label: Text("linkedin")),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 0,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }

// function
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw "cannot lunch ";
    }
    // await launchUrl(uri.toString() as Uri);
  }
}
