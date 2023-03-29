import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotView extends StatelessWidget {
  const NotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(),
          noteitem(),
        ],
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        serchIcon()
      ],
    );
  }
}

class serchIcon extends StatelessWidget {
  const serchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)),
      child: Icon(Icons.search),
    );
  }
}

class noteitem extends StatelessWidget {
  const noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 174, 24),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(children: [
        ListTile(
          title: Text(
            "flutter app",
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.black54,
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "me,34,2001",
            style: TextStyle(color: Colors.black12),
          ),
        )
      ]),
    );
  }
}
