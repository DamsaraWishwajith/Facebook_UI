import 'package:fb_ui/models/model_story.dart';
import 'package:fb_ui/screens/widget/iconBar.dart';
import 'package:fb_ui/screens/widget/newPostBar.dart';
import 'package:fb_ui/screens/widget/postListView.dart';
import 'package:fb_ui/screens/widget/toolbar.dart';
import 'package:flutter/material.dart';

class FaceBookHome extends StatefulWidget {
  const FaceBookHome({super.key});

  @override
  State<FaceBookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FaceBookHome> {
  final pp =
      "https://www.lensmen.ie/wp-content/uploads/2015/02/Profile-Portrait-Photographer-in-Dublin-Ireland..jpg";
  final List<ModelStory> stories = [
    ModelStory(
      story:
          "https://tse4.mm.bing.net/th?id=OIP.HxV79tFMPfBAIo0BBF-sOgHaEy&pid=Api&P=0&h=220",
      uid: "99",
      userImage:
          "https://www.lensmen.ie/wp-content/uploads/2015/02/Profile-Portrait-Photographer-in-Dublin-Ireland..jpg",
      userName: "Kamala perera",
    ),
    ModelStory(
      story:
          "https://tse4.mm.bing.net/th?id=OIP.HxV79tFMPfBAIo0BBF-sOgHaEy&pid=Api&P=0&h=220",
      uid: "100",
      userImage:
          "https://i.pinimg.com/originals/83/10/ab/8310ab709f70727b92fa1a6917897c82.jpg",
      userName: "Kamala perera",
    ),
    ModelStory(
      story:
          "https://www.pixelstalk.net/wp-content/uploads/2016/07/Free-Amazing-Background-Images-Nature.jpg",
      uid: "101",
      userImage:
          "https://i.pinimg.com/originals/07/33/ba/0733ba760b29378474dea0fdbcb97107.png",
      userName: "Nimal Fonseka",
    ),
    ModelStory(
      story:
          "https://tse1.mm.bing.net/th?id=OIP.TYJqmFIrO3WDbgmf8QsAowHaE8&pid=Api&P=0&h=220",
      uid: "102",
      userImage:
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg",
      userName: "Nishadi Apsara",
    ),
    ModelStory(
      story:
          "https://www.pixelstalk.net/wp-content/uploads/2016/08/Free-Download-Wildlife-Image.jpg",
      uid: "103",
      userImage:
          "https://img.freepik.com/premium-photo/happy-man-ai-generated-portrait-user-profile_1119669-1.jpg?w=2000",
      userName: "John Steev",
    ),
    ModelStory(
      story:
          "https://www.powertrafic.fr/wp-content/uploads/2023/04/image-ia-exemple.png",
      uid: "104",
      userImage:
          "https://tse4.mm.bing.net/th?id=OIP.IyyAcWPpsSg7jD3Xyby5BwAAAA&pid=Api&P=0&h=220",
      userName: "Pahani Devindi",
    ),
    ModelStory(
      story:
          "https://tse1.mm.bing.net/th?id=OIP.vNpR-4DYMRCXEEpfrAzLXwHaE8&pid=Api&P=0&h=220",
      uid: "105",
      userImage:
          "https://tse3.mm.bing.net/th?id=OIP.jj-5SlQV7ZpVGM1WR8TD7wHaFj&pid=Api&P=0&h=220",
      userName: "Prabhu Deva",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          ToolBar(),
          IconBar(pp: pp),
          Divider(thickness: 0.5),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  NewPostBar(pp: pp),
                  Divider(thickness: 10, color: Colors.black38),
                  SizedBox(
                    height: 176,
                    child: ListView.builder(
                      itemCount: stories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade600,
                            ),
                            child:
                                index == 0
                                    ? Stack(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(pp),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 45,
                                          left: 1,
                                          right: 1,
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            'Create\nStory',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                    : Stack(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 160,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                stories[index].story.toString(),
                                              ),
                                              colorFilter: ColorFilter.mode(
                                                Colors.black.withOpacity(0.2),
                                                BlendMode.darken,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 5,
                                          left: 5,
                                          child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                stories[index].userImage
                                                    .toString(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 5,
                                            left: 5,
                                          ),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              stories[index].userName
                                                  .toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(thickness: 10, color: Colors.black38),
                  PostListView(pp: pp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
