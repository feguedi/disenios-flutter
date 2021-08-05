import 'package:flutter/material.dart';

class BasicDesignView extends StatelessWidget {
  const BasicDesignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          Title(),
          IconsSection(),
          Container(
              margin: EdgeInsets.all(35),
              // padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                  'Mollit dolore qui ex ut esse commodo officia. Eu magna adipisicing nostrud ea dolore anim nisi consectetur cupidatat fugiat dolor cupidatat veniam et. Eiusmod quis Lorem ad laboris esse duis. Enim velit do qui amet nisi voluptate Lorem voluptate sunt quis nisi excepteur.')),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Grassland scenary by Shi Yuejun',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Deepin wallpapers',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class IconsSection extends StatelessWidget {
  const IconsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _customIcon('call', Icons.phone),
          _customIcon('route', Icons.near_me),
          _customIcon('share', Icons.share),
        ],
      ),
    );
  }

  Column _customIcon(String txt, IconData icn) {
    return Column(
      children: [
        Icon(
          icn,
          color: Colors.blue,
          size: 28,
        ),
        SizedBox(height: 5),
        Text(
          txt.toUpperCase(),
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
