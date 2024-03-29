import 'package:flutter/material.dart';

class HomeFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return YYNavigatorDemo();
  }
}

class YYNavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('push'),
              onPressed: null,
            ),
            FlatButton(
              // color: Colors.orange,
              child: Text('About'),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context)=>PageDemo(title: '关于',)
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class PageDemo extends StatelessWidget {
  final String title;
  PageDemo({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}

class YYColumDemo extends StatelessWidget {
  // const YYColumDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconBageW(
          Icons.pool,
          size: 70,
        ),
        SizedBox(
          height: 10,
        ),
        IconBageW(
          Icons.beach_access,
          size: 100,
        ),
        SizedBox(
          height: 10,
        ),
        IconBageW(
          Icons.airplanemode_active,
          size: 70,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.orange[50],
              child: Text(
                '我是AspectRatio的demo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class IconBageW extends StatelessWidget {
  final IconData _iconData;
  final double size;
  IconBageW(this._iconData, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        _iconData,
        color: Colors.white,
      ),
      width: size + 32,
      height: size + 32,
      color: Colors.orange[200],
    );
  }
}
