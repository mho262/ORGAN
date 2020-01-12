import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:app/widget.dart';

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
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
        body: Center(
          child: const Text(
            " Good Morning, Noshin",
            style: TextStyle(
              fontSize: 45.0,
              fontFamily: 'Arial',
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
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
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.local_pharmacy),
              label: Text("Medications"),
              onPressed: () {
                Navigator.pushNamed(context, '/medicationsPage');
              },
            ),
            RaisedButton.icon(
                icon: Icon(Icons.calendar_today),
                label: Text("Appointments"),
                onPressed: () {
                  Navigator.pushNamed(context, '/appointmentsPage');
                }),
            RaisedButton.icon(
                icon: Icon(Icons.trending_down),
                label: Text("Symptoms"),
                onPressed: () {
                  Navigator.pushNamed(context, '/symptomsPage');
                }),
            RaisedButton.icon(
                icon: Icon(Icons.wb_sunny),
                label: Text("Daily Routine"),
                onPressed: () {
                  Navigator.pushNamed(context, '/dailyPage');
                }),
            Text("Update your health manager here",
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Arial',
                    color: Colors.green,
                    fontWeight: FontWeight.w400))
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
        title: new Text("Medication Updates"),
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
        title: new Text("Status Updates"),
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
