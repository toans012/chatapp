import 'package:chatapp/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: kBackgroundColor,
        title: Text(
          'Chats',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context,'/profile'),
            child: CircleAvatar(
              backgroundImage: Image(
                image: AssetImage('assets/user.png'),
              ).image,
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
                onTap: ()=> Navigator.pushNamed(context,'/chat'),
                leading: Stack(
                  children: [CircleAvatar(
                      backgroundImage: Image(
                    image: AssetImage('assets/user.png'),
                  ).image
                  ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: CircleAvatar(radius: 6,backgroundColor: Colors.green,))
                  ]
                ),
                title: Text('Other User'),
            subtitle: Text('xin chao'),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 10,
                  child: Text('10',style: TextStyle(fontSize: 11,color: Colors.white),),
                ),
                SizedBox(height: 8),
                Text('10:10')
              ],
            ),
              )),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add)),
    );
  }
}
