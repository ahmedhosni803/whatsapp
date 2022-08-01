import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Row(
          children: const [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Person",
              style: TextStyle(
                  fontSize: 25, color: Color.fromRGBO(221, 221, 221, 1.0)),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(23, 26, 36, 1.0),
        titleSpacing: .5,
        actions: const [
          Icon(
            Icons.videocam,
            color: Color.fromRGBO(221, 221, 221, 1.0),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.call,
            color: Color.fromRGBO(221, 221, 221, 1.0),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.drag_indicator_rounded,
            color: Color.fromRGBO(221, 221, 221, 1.0),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/images/person1.jpg",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Container(
                                  margin: EdgeInsetsDirectional.all(15),
                                  child: Text(
                                    'This my first message',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25,
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                      height: 50,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsetsDirectional.all(15),
                                    child: Text(
                                      'This is second message',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/person2.jpg",
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.emoji_emotions_rounded,
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(
                            Icons.attach_file,
                            color: Colors.white,
                          ),
                          hintText: 'Type the message',
                          hintStyle:
                              TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.mic,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
