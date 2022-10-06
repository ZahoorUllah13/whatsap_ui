import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatSapp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('chats'),
              ),
              Tab(
                child: Text('status'),
              ),
              Tab(
                child: Text('call'),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            const SizedBox(
              width: 1,
            ),
            PopupMenuButton(
              icon:Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('new Group'),
                      ),const PopupMenuItem(
                        value: 2,
                        child: Text('new broadcast'),
                      ),const PopupMenuItem(
                        value: 3,
                        child: Text('linked device'),
                      ),const PopupMenuItem(
                        value: 3,
                        child: Text('setting'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('camera'),
            ListView.builder(
              itemCount: 50,
                itemBuilder:(context,index){
             return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000'),
                ),
                title: Text('shahbaz'),
                subtitle: Text('chrta y'),
                trailing: Text('4:35 pm'),
              );
            }
            ),
            ListView.builder(
                itemCount: 50,
                itemBuilder:(context,index){
                  return ListTile(
                    leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3
                          )
                        ),
                        child: const CircleAvatar(
                          backgroundImage:NetworkImage('https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000') ,)),
                    title: const Text('shahbaz'),
                    subtitle: const Text('49 minuts ago'),
                  );
                }
            ),
            ListView.builder(
                itemCount: 50,
                itemBuilder:(context,index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage:NetworkImage('https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000')
                    ),
                    title: Text('shahbaz'),
                    subtitle: Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(Icons.phone_callback,color: Colors.red,),
                    ),
                    trailing: Text('4:35 pm'),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
