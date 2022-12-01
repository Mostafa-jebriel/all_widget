import 'package:all/allwidget/AnimatedNeumorphic.dart';
import 'package:all/allwidget/Buttons.dart';
import 'package:all/allwidget/Slider.dart';
import 'package:all/allwidget/dropdownplus.dart';
import 'package:all/allwidget/flutter_neumorphic.dart';
import 'package:all/allwidget/phone_field.dart';
import 'package:all/allwidget/text.dart';
import 'package:all/allwidget/textform.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class AllWidget extends StatelessWidget {
  final Shader c=LinearGradient(
      colors:<Color>[Colors.purple,Colors.red],
  ).createShader(Rect.fromLTRB(20.0, 40.0, 170.0, 90.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widget"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MaterialButton(
                  child: Text(
                    "Buttons",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Buttons();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Text",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return TextPage();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Text Form",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return TextFormPage();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Slider",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return SliderPage();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "dropdown plus",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return dropdown_plus();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "flutter neumorphic",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return neumorphic();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Animated Neumorphic",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return AnimatedNeumorphic();
                    }));
                  },
                ),
                MaterialButton(
                  child: Text(
                    "phone field ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return phone();
                    }));
                  },
                ),
                DottedBorder(
                  strokeWidth: 2,
                  color: Colors.black,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(24),
                  dashPattern: [5, 4],
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                         Icon(Icons.add),
                          SizedBox(height: 8),
                          Text(
                            'Add Alarm',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'avenir'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Mostafa',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader=c,
                ),),
                SizedBox(height: 10,),
                ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
                SizedBox(height: 10,),
                Text(
                  'You have pushed the button this many times:',
                  style: GoogleFonts.alike(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
