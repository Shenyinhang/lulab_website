import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'About.dart';
import '../items/end_about.dart';

class LuLabPage extends StatefulWidget {
  const LuLabPage({Key? key}) : super(key: key);

  @override
  State<LuLabPage> createState() => _LuLabPageState();
}

class _LuLabPageState extends State<LuLabPage> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("res/images/video.mp4");
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9, // 设置视频的宽高比
      autoPlay: true,
      looping: true,
      showControls: false,
    );
    _controller.setVolume(0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 7.5,
                  child: Container(
                    color: Colors.black,
                    child: Chewie(
                      controller: _chewieController,
                    ),
                  ),
                ),
                Positioned(
                  top: 450,
                  child: Column(
                    children: [
                      const Text(
                        'The New Education',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'in AI age',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        '\nAll work and no play makes Jack a dull boy\n',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutPage()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: const Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ), // Add spacing between the video and the next widget
            const CustomWidget(),
            const LearnWidget(),
            ea() // Add your custom widget here
          ],
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 1200,
      child: Stack(
        children: [
          Positioned(
            top: 80,
            left: 400,
            child: Column(
              children: const [
                Text(
                  'Our Clubs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            left: 405,
            child: Column(
              children: const [
                Text(
                  '''
Clubs introduce
''',
                  style: TextStyle(fontSize: 25.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(50, 500, 50, 50),
                width: 1600,
                height: 1000,
                child: Container(
                    color: Colors.grey[800],
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                          width: 400,
                          height: 400,
                          child: Image.network("res/images/Metaverse.jpg"),
                        ),
                        Positioned(
                          top: 380,
                          left: 100,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '''
\nMetaverse Club
''',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  '''
It is an innovative social platform
for virtual reality experiences and
interactions.\n
''',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // 添加您的操作逻辑
                                  },
                                  child: const Text(
                                    '                      Read More',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(380, 50, 0, 0),
                          width: 400,
                          height: 400,
                          child: Image.network("res/images/roblox.jpeg"),
                        ),
                        Positioned(
                          top: 380,
                          left: 450, //
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '''
\nRoblox&ChatGPT Club
''',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  '''
It gives players unlimited 
creativity and freedom to become 
designers and developers of 
games.
''',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // 添加您的操作逻辑
                                  },
                                  child: const Text(
                                    '                      Read More',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(720, 50, 0, 0),
                          width: 400,
                          height: 400,
                          child: Image.network("res/images/demo1.png"),
                        ),
                        Positioned(
                          top: 380,
                          left: 810, //
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '''
\nDigitalTechnology Club
''',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  '''
It gives players unlimited 
creativity and freedom to become 
designers and developers of 
games.
''',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // 添加您的操作逻辑
                                  },
                                  child: const Text(
                                    '                      Read More',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(1080, 50, 0, 0),
                          width: 400,
                          height: 400,
                          child: Image.network("res/images/demo1.png"),
                        ),
                        Positioned(
                          top: 380,
                          left: 1170, //
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '''
\nLeadership Club
''',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  '''
It gives players unlimited 
creativity and freedom to become 
designers and developers of 
games.
''',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // 添加您的操作逻辑
                                  },
                                  child: const Text(
                                    '                      Read More',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LearnWidget extends StatelessWidget {
  const LearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [Image.asset("res/images/laa.png", fit: BoxFit.fill)]);
  }
}
