import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'IEEESBM Events',
    home: MyApp(),
  ));
}

class Event {
  final int id;
  final String title;
  final String date;
  final String description;
  final String imglink;
  const Event({this.id, this.title, this.date, this.description, this.imglink});
}

List<Event> eventList = const <Event>[
  const Event(
      id: 1,
      title: 'Event 1',
      date: 'date',
      description: '  description ',
      imglink:
          'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  const Event(
      id: 2,
      title: 'Event 2',
      date: 'date',
      description: '  description ',
      imglink:
          'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  const Event(
      id: 3,
      title: 'Event 3',
      date: 'date',
      description: '  description ',
      imglink:
          'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  const Event(
      id: 4,
      title: 'Event 4',
      date: 'date',
      description: '  description ',
      imglink:
          'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IEEESBM Events'),
        ),
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: List.generate(eventList.length, (index) {
              return Center(
                child:
                    EventCard(event: eventList[index], item: eventList[index]),
              );
            })));
  }
}

class EventCard extends StatelessWidget {
  final Event event;
  final VoidCallback onTap;
  final Event item;
  final bool tapped;

  const EventCard(
      {Key key,
      this.event,
      this.onTap,
      @required this.item,
      this.tapped: false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    if (tapped)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return FlatButton(
      onPressed: () {
        // event detail page
      },
      child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(event.imglink)),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(event.title,
                        style: Theme.of(context).textTheme.headline6),
                    Text(event.date,
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    Text(event.description),
                  ],
                ),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}

class EventCardRead extends StatelessWidget {
  const EventCardRead({Key key, this.eve}) : super(key: key);
  final Event eve;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(eve.imglink)),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(eve.title,
                          style: Theme.of(context).textTheme.headline6),
                      Text(eve.date,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                      Text(eve.description),
                    ],
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
      ),
    );
  }
}
