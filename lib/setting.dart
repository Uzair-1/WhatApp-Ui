import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatappui/themechanger.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({Key? key}) : super(key: key);

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {

  @override

  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/709143/pexels-photo-709143.jpeg?auto=compress&cs=tinysrgb&w=600",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  ListTile(
                    onTap: (){},
                    title: Text("Account ",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Security notifications, change \n number "),
                    trailing: Icon(Icons.manage_accounts_rounded),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  ListTile(
                    onTap: (){},
                    title: Text("Privacy ",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Block contacts, disappearing \n message "),
                    trailing: Icon(Icons.privacy_tip),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  ListTile(
                    onTap: (){},
                    title: Text("Avatar ",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Create,edit, profile picture "),
                    trailing: Icon(Icons.edit_sharp),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  ListTile(
                    onTap: (){},
                    title: Text("Notifications ",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Message,group & call "),
                    trailing: Icon(Icons.circle_notifications),
                  ),
                ],
              ),
              Column(
                children: [
                  RadioListTile<ThemeMode>(
                    title: Text("Light Mode  "),
                      value: ThemeMode.light,
                      groupValue: themeChanger.themeMode,
                      onChanged: themeChanger.setTheme,
                  ),

                  RadioListTile<ThemeMode>(
                    title: Text("Dark Mode "),
                    value: ThemeMode.dark,
                    groupValue: themeChanger.themeMode,
                    onChanged: themeChanger.setTheme,
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

