import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';

void main() async{

  runApp( MyApp());
  await AndroidAlarmManager.initialize();
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool IOS=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Transform.scale(
            scale: 2,
            child: Switch(
              value: IOS,
              onChanged: (value){
                setState((){
                  IOS=value;
                });
                if(IOS==true){
                  AndroidAlarmManager.periodic(Duration(seconds: 2), 0, (){
                    print('********************XDNklnPKMCOKmomxcCMIKmiocmIOKCMIK');
                    print('mahmoud_________________________________eid');
                  });
                }
                else{
                  AndroidAlarmManager.cancel(0);
                }
              },

            ),
          ),
        )
    );
  }
}

