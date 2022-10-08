import 'package:flutter/material.dart';
class messenger extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: const [
              CircleAvatar(
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/e/e7/Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg',
              ),
        ),
              SizedBox(width: 20,),
              Text(
                  'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
            ],
          ),
        actions: [
          // Icon (Camera)
          IconButton(
              onPressed: (){
                print('Opened Camera');
              },
              icon: const CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 15,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
          ),
          //Icon edit
          IconButton(
              onPressed: (){},
              icon: const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 20,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Row Search
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black12,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                      print('Opened Search');
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: (){
                            print('Opened Search');
                          },
                          child: const Text(
                            'search',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            // Row Story
            Container(
              height: 90,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                            'Beautiful Flowers',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                            ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 15,),
                  itemCount: 10,
              ),
            ),
            const SizedBox(height: 20,),
            // Column Chat
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              bottom: 3,
                              end: 3,
                            ),
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              bottom: 3,
                              end: 3,
                            ),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beautiful Flowers',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'This is the second project built with framework flutter',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6,),
                                  child: CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Colors.blue,
                                  ),
                                ),
                                Text(
                                  '06:55 PM',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(height: 15,),
                  itemCount: 15,),
            ),
          ],
        ),
      ),
    );
  }
}
