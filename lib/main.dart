import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:app/widget.dart';

import 'package:flutter_calendar/flutter_calendar.dart';

//import 'updatedPages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        //home: MyHomePage(title: 'Welcome to Organ'),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => MyHomePage(title: 'Welcome to Organ'),
          '/updatesPage': (BuildContext context) => UpdatesPage(),
          '/medicationsPage': (BuildContext context) => MedicationsPage(),
          '/calendarPage': (BuildContext context) => CalendarPage(),
          '/symptomsPage': (BuildContext context) => SymptomsPage(),
          '/appointmentsPage': (BuildContext context) => AppointmentsPage(),
          '/dailyPage': (BuildContext context) => DailyPage(),
          '/profilePage': (BuildContext context) => ProfilePage(),
          '/userProfilePage': (BuildContext context) => UserProfilePage(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
         body: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/organ.png',
                width: 480.0,
                height: 180.0,
              ),
              Container(
                height: 100,
                child: Text(
                    " Good Morning, Hemi",
                    style: TextStyle(
                    fontSize: 43.0,
                    fontFamily: 'Arial',
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                    height: 1.0,
                  ),textAlign: TextAlign.center,
                ),
              ),
             Container(
                height: 80,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text("Medication: take one pill of prozac,\n\n 1h ago",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                    new Icon(Icons.notification_important,
                          color: Colors.blue,
                          size: 30.0,
                    )
                  ]
              ),
             ),
             Container(
                height: 80,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text("Medication: take one pill of prozac,\n\n 1h ago",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                    new Icon(Icons.notification_important,
                          color: Colors.blue,
                          size: 30.0,
                    )
                  ]
              ),
             ),
             Container(
                height: 80,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text("Medication: take one pill of prozac,\n\n 1h ago",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                    new Icon(Icons.notification_important,
                          color: Colors.blue,
                          size: 30.0,
                    )
                  ]
              ),
             ),
            ],
          ),

        bottomNavigationBar: ReusableWidgets.getAppBar(context));
  }
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Directory"),
        ),
         body: Column(
            children: <Widget>[
              Container(
                height: 130,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/organ.png',
                      width: 200.0,
                      height: 100.0,
                    ),
                    new Text("Files Directory",
                    style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Arial',
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ],
              ),
             ),
             Container(
               height: 48,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: TextField(
                  decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 15),
                  hintText: 'Advil  ',
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            Container(
                height: 55,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("TOP HITS",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                  ],
                ),
            ),
            Container(
                height: 18,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.arrow_right,
                          color: Colors.blue,
                          size: 25.0,
                    ),
                    new Text("Period",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 18,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.arrow_right,
                          color: Colors.blue,
                          size: 25.0,
                    ),
                    new Text("Back Pain",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 18,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.arrow_right,
                          color: Colors.blue,
                          size: 25.0,
                    ),
                    new Text("Arthritis",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 55,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Documents",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                  ],
                ),
            ),
            Container(
                height: 30,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.folder,
                          color: Colors.blue,
                          size: 21.0,
                    ),
                    new Text("Jaw Surgery",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 30,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.folder,
                          color: Colors.blue,
                          size: 21.0,
                    ),
                    new Text("High Blood Pressure",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 30,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.folder,
                          color: Colors.blue,
                          size: 21.0,
                    ),
                    new Text("Period",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 30,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.folder,
                          color: Colors.blue,
                          size: 21.0,
                    ),
                    new Text("Kidney Removl Surgery",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            Container(
                height: 30,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Icon(Icons.folder,
                          color: Colors.blue,
                          size: 21.0,
                    ),
                    new Text("Back Pain",
                    style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                  ]
                ),
            ),
            ],
         ),
        bottomNavigationBar: ReusableWidgets.getAppBar(context));

  }
}
class UpdatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Updates Page'),
        ),
        body:
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Image.asset(
                'assets/images/organ.png',
                width: 150.0,
                height: 100.0,
              ),
            new Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    RaisedButton.icon(
                      icon: Icon(Icons.local_pharmacy, 
                      size: 40.0,
                      color: Colors.white
                    ),
                      label: Text("Medications",
                      style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Arial',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      ),
                    ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.pushNamed(context, '/medicationsPage');
                      },
                    ),
                    RaisedButton.icon(
                        icon: Icon(Icons.calendar_today, size: 40.0),
                        label: Text("Appointments",
                        style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Arial',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        ),
                       ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/appointmentsPage');
                        }),
                    RaisedButton.icon(
                        icon: Icon(Icons.trending_down, size: 40.0,),
                        label: Text("Symptoms",
                        style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Arial',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        ),
                      ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/symptomsPage');
                        }),
                    RaisedButton.icon(
                        icon: Icon(Icons.wb_sunny, 
                        size: 40.0,
                        color: Colors.white
                      ),
                        label: Text("Daily Routine",
                        style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Arial',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        ),
                      ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/dailyPage');
                        }),
                  ],
                ),
                ),
          ],
        ),
        bottomNavigationBar: ReusableWidgets.getAppBar(context));
  }
}

class UserProfilePage extends StatefulWidget {
  UserProfilePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Profile"),
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit,
            size: 30.0),
            onPressed: () {
            },
          ),
        ],
        ),
         body: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/hemi.png',
                width: 400.0,
                height: 150.0,
              ),
              Divider(),
              Container(
                height: 60,
                child: Text(
                    "Welcome, Hemi",
                    style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'Arial',
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                  ),textAlign: TextAlign.center,
                ),
              ),
            IntrinsicHeight(
            child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('27\nAge',
              style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Arial',
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              ), textAlign: TextAlign.center),
              VerticalDivider(color: Colors.black,
                    thickness: 2, width: 20,),
              Text('Female\nGender',
              style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Arial',
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              ),textAlign: TextAlign.center),
              VerticalDivider(color: Colors.black,
                    thickness: 2, width: 20,),
              Text('AB+\nBlood Group',
              style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Arial',
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              ),textAlign: TextAlign.center),
            ],
          )),
          Divider(),
          Divider(
              color: Colors.black,
              thickness: 2, height: 2, endIndent: 20.0, indent: 20.0
          ),
          Container(
                height: 40,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Food Allergies",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                  ],
                ),
            ),
            Container(
                height: 20,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Peanut, Dairy, Tomato, Egg, Chicken, Onion, Rice",
                    style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Arial',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
                ),
            ),
            Divider(),
            Container(
                height: 40,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Family History",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                  ],
                ),
            ),
            Container(
                height: 40,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Diabetes: ",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                new Text("Father has diabetes at age of 37",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
            ),
            Container(
                height: 40,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Gout: ",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                new Text("Mother has problem ",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
            ),
            
            Container(
                height: 40,
                width: 370,
                child: new Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [ new Text("Cancer: ",
                    style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                new Text("My aunt has at age of 35",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Arial',
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
            ),
          ],
          ),
          
    bottomNavigationBar: ReusableWidgets.getAppBar(context));
  }
}


class MedicationsPage extends StatefulWidget {
  MedicationsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MedicationsPageState createState() => new _MedicationsPageState();
}

class _MedicationsPageState extends State<MedicationsPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Medications"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt,
            size: 30.0),
            onPressed: () {
            },
          ),
        ],
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Text(""),
                  Text(" ",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Arial',
                          color: Colors.green,
                          fontWeight: FontWeight.w600)),
                  new TextFormField(
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.healing),
                      hintText: 'Ibuprofen',
                      labelText: 'Medication Name',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.accessibility),
                      //hintText: '10:30 AM',
                      labelText: 'Prescription Number (optional)',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.access_time),
                      hintText: '500 mg',
                      labelText: 'Dosage',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                      decoration: const InputDecoration(
                        //icon: const Icon(Icons.speaker_notes),
                        hintText: '30',
                        labelText: 'Remaining number of pills',
                      ),
                      keyboardType: TextInputType.datetime),
                  new TextFormField(
                      decoration: const InputDecoration(
                        //icon: const Icon(Icons.speaker_notes),
                        hintText: 'Febuary 29, 2020',
                        labelText: 'Medication Expiration Date',
                      ),
                      keyboardType: TextInputType.text),
                  new Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Icon(Icons.arrow_forward),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}

class SymptomsPage extends StatefulWidget {
  SymptomsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SymptomsPageState createState() => new _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _color = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Symptoms"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt,
            size: 30.0),
            onPressed: () {
            },
          ),
        ],
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Text(""),
                  Text("What are you feeling?",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Arial',
                          color: Colors.green,
                          fontWeight: FontWeight.w600)),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.healing),
                      hintText: 'Do you feel any pain? Coughing?',
                      labelText: 'Symptom',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.accessibility),
                      hintText: 'General area',
                      labelText: 'Area of Concern',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.access_time),
                      hintText: 'When did you notice these symptoms?',
                      labelText: 'Time',
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.speaker_notes),
                      hintText: 'Is there anything else you\'d like to add?',
                      labelText: 'Notes',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Icon(Icons.arrow_forward),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}

class AppointmentsPage extends StatefulWidget {
  AppointmentsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AppointmentsPageState createState() => new _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Appointment Updates"),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Text(""),
                  Text("When is your Appointment?",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Arial',
                          color: Colors.green,
                          fontWeight: FontWeight.w600)),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.date_range),
                      hintText: 'August 29, 2019',
                      labelText: 'Date',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.access_time),
                      hintText: '10:30 AM',
                      labelText: 'Time',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.zoom_in),
                      hintText: 'General checkup',
                      labelText: 'Reason',
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.speaker_notes),
                      hintText:
                          'What do you think about using an alternative method?',
                      labelText: 'Notes',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Icon(Icons.arrow_forward),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calendar"),
      ),
      body: new SafeArea(
        top:false,
        bottom:false,
        child: new ListView(
          shrinkWrap:true,
          children:<Widget>[
            new Calendar(
              isExpandable: true,
            )
          ]
          )
      ),
      bottomNavigationBar: ReusableWidgets.getAppBar(context)
    );
  }
}

class DailyPage extends StatefulWidget {
  DailyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DailyPageState createState() => new _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _color = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Daily Updates"),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Text(""),
                  Text("How are you doing today?",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Arial',
                          color: Colors.green,
                          fontWeight: FontWeight.w600)),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.insert_emoticon),
                      hintText: 'How were you feeling today?',
                      labelText: 'Mood',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.directions_run),
                      hintText: 'How many hours of exercise did you do today?',
                      labelText: 'Exercise',
                    ),
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.local_drink),
                      hintText: 'How many glasses of water?',
                      labelText: 'Water Intake',
                    ),
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.local_hotel),
                      hintText: 'How many hours of sleep did you get?',
                      labelText: 'Sleep',
                    ),
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Icon(Icons.arrow_forward),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}