import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample"),
        ),
        body: const Center(
            child: UserProfile()
        )
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Avatar(name: "hironytic", icon: "images/avatar.png"),
          Star(count: 42)
        ],
      ),
    );
  }
}

class Star extends StatelessWidget {
  final int count;
  
  const Star({ Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("⭐", style: TextStyle(fontSize: 24)),
          Text("$count", style: const TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final String name;
  final String icon;

  const Avatar({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(icon) 
                )
              )
          ),
          Text("@$name", style: const TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}