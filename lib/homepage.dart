import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatappui/setting.dart';
import 'package:whatappui/themechanger.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatApp"),
            centerTitle: false,
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
               Tab(
                 child: Icon(Icons.supervised_user_circle_rounded ),
               ),
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Call"),
                ),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(width: 30,),
              Icon(Icons.search),
              SizedBox(width: 20,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                  itemBuilder:(context )=> [
                    PopupMenuItem(
                       value: 1,
                        child: Text("New group"),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text("New broadcast"),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text("Linked device"),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text("Starred messages"),
                    ),
                    PopupMenuItem(
                      value: 5,
                      onTap: (){
                        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Settingpage(),));
                      },
                      child: Text("Settings"),
                    ),
                  ]
              ),

            ],
          ),
          body: TabBarView(
            children: [

             Expanded(
                 child: ListView.builder(
                     itemCount: 14,
                     itemBuilder: (context , index){
                       return ListTile(
                         leading: CircleAvatar(
                           backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                         ),
                         title: Text( index /2 == 1 ? "Flutter Community" : "Programmer Community "),
                         subtitle: Text(index /2 == 1 ?"Batter day by day   " : " Great affect  "),
                         //trailing: Text(index /2 == 1  ?"3:15 am":"2:10 pm"),
                       );
                     }),
             ),




              ListView.builder(
                itemCount: 8,
                  itemBuilder: (context , index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text( index /2 == 1 ? "Hassan" : "Zohaib "),
                      subtitle: Text(index /2 == 1 ?"Where are you boy?" : "What your plan about today"),
                      trailing: Text(index /2 == 1  ?"3:15 am":"2:10 pm"),
                    );
                  }),






        Text("Status"),

              ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context , index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1066176/pexels-photo-1066176.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text("Zohaib "),
                      subtitle: Text( index /2 == 0 ? "you missed audio call" : "you missed vedio call"),
                      trailing: Icon(index / 2 == 0 ? Icons.phone_callback : Icons.missed_video_call_rounded),
                    );
                  }),


            ],
          ),



          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Settingpage(),));
            },
            child:Icon(Icons.message_rounded),
            backgroundColor: Colors.teal,
          ),
        )
    );
  }
}


















































// import 'package:flutter/material.dart';
//
// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);
//
//   @override
//   State<homepage> createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("WhatApps"),
//             centerTitle: false,
//             bottom: TabBar(
//                 tabs:[
//                   Tab(
//                     child: Icon (Icons.camera_alt),
//                   ),
//
//                   Tab(
//                     child: Text("CHAT"),
//                   ),
//                   Tab(
//                     child: Text("STATUS"),
//                   ),
//                   Tab(
//                     child: Text("CALL"),
//                   ),
//                 ]
//             ),
//             actions: [
//               Icon(Icons.light_mode),
//               SizedBox(width: 20),
//               Icon(Icons.search),
//               SizedBox(width: 20),
//               PopupMenuButton(
//                   icon: Icon(Icons.more_vert),
//                   itemBuilder: (context)=>[
//                     PopupMenuItem(
//                         value: "1",
//                         child: Text("New group")),
//                     PopupMenuItem(
//                         value: "2",
//                         child: Text("New boradcast")),
//                     PopupMenuItem(
//                         value: "3",
//                         child: Text("Linked device")),
//                     PopupMenuItem(
//                         value: "4",
//                         child: Text("Started message")),
//                     PopupMenuItem(
//                         value: "5",
//                         child: Text("Setting")),
//                     PopupMenuItem(
//                         value: "5",
//                         child: Text("Log out")),
//
//                   ]),
//             ],
//           ),
//           body: TabBarView(
//             children: [
//               Text("CAMERA"),
//               ListView.builder(
//                 itemCount: 100,
//                   itemBuilder: (context,index){
//                     return ListTile(
//                       leading: CircleAvatar(
//                         backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
//                       ),
//                       title: Text("Hassan"),// is main name
//                       subtitle: Text("Where are you ?"),// is main message show kar wata hai
//                       trailing: Text("6:30 am"),
//
//                     );
//                   }),
//
//
//
//
//               ListView.builder(
//                   itemCount: 100,
//                   itemBuilder: (context,index){
//                      if(index==0){
//                        return Column(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                          CircleAvatar(
//                            backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
//                           ),
//                            SizedBox(
//                              width: 10,
//                              height: 10,
//                            ),
//                            Text("View update"),
//                          ],
//                        );
//                        // return CircleAvatar(
//                        //   backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
//                        // );
//                      }else{
//                           return Padding(
//                          padding: EdgeInsets.symmetric(vertical: 5),
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              // Text("Veiw updata"),
//                              ListTile(
//                                leading: Container(
//                                  decoration: BoxDecoration(
//                                    shape: BoxShape.circle,
//                                    border: Border.all(
//                                        color: Colors.green,
//                                        width:3
//                                    ),
//                                  ),
//                                  child: CircleAvatar(
//                                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
//                                  ),
//                                ),
//                                title: Text("Hassan"),
//                                subtitle: Text("12:10 am"),
//                              ),
//                            ],
//                          ),
//
//                        );
//                      }
//
//
//                     // ListTile(
//                     //   leading: CircleAvatar(
//                     //     backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
//                     //   ),
//                     //   title: Text("Hassan"),// is main name
//                     //   subtitle: Text("Where are you ?"),// is main message show kar wata hai
//                     //   trailing: Text("6:30 am"),
//                     //
//                     // );
//                   }),
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//               ListView.builder(
//                   itemCount: 100,
//                   itemBuilder: (context,index){
//                     return ListTile(
//                       leading:  const CircleAvatar(
//                         backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=600'),
//                       ),
//                       title: Text("Hassan"),// is main name
//                       subtitle: Text(index /2 == 0 ? "You missed audio" : "12:20 pm"),
//                       trailing: Icon(index /2 == 0 ? Icons.phone : Icons.missed_video_call),
//
//                     );
// 