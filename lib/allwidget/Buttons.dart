import 'package:toggle_bar_button/toggle_bar_button.dart';
import 'package:slider_button/slider_button.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:like_button/like_button.dart';
import 'package:sign_button/sign_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Buttons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonsState();
  }
}

class ButtonsState extends State<Buttons> {
  String s = "";
  Color c = Colors.yellow,
      b = Colors.white;
  int r1 = 0,
      r2 = 0;
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  String ll = "1";
  List <String>_drop = ['1', '2', '3', '4', '5'];
  AuthButtonType? buttonType;
  AuthIconType? iconType;
  bool isLoading = false;
  bool darkMode = false;
  String _buttonClick = "click sign in button";
  ThemeMode get themeMode => darkMode ? ThemeMode.dark : ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: r2 == 1 ? Colors.brown : Colors.white,
            child: Column(
              children: <Widget>[
                Text(
                  "All Button ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  s,
                  style: TextStyle(
                    color: Colors.red,
                    backgroundColor: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      s = "flutter 1";
                      c = Colors.brown;
                    });
                  },
                  child: Text(
                    "click",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      c = Colors.blue;
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      s = "";
                    });
                  },
                  color: Colors.green,
                  highlightColor: Colors.brown,
                  child: Text("v"),
                  textColor: Colors.yellow,
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: null,
                  child: Text(
                    "FlatButton",
                    style: TextStyle(fontSize: 15),
                  ),
                  color: Color.fromRGBO(155, 200, 15, 1),
                  textColor: Colors.white10,
                  disabledColor: Colors.black,
                  disabledTextColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    //  borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.red, width: 3),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BackButton(
                  onPressed: null,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    setState(() {
                      c = Colors.blue;
                    });
                  },
                  label: Text("add"),
                  icon: Icon(Icons.add),
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      setState(() {
                        c = Colors.blueGrey;
                      }),
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonTheme(child: Text("fff")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    buildRow(1),
                    buildRow(3),
                    buildRow(4),
                    buildRow(44),
                    buildRow(33),
                    buildRow(2),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(value: b1, onChanged: (v) {
                          setState(() {
                            b1 = v as bool;
                          });
                        }),
                        Text("android"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: b2, onChanged: (v) {
                          setState(() {
                            b2 = v as bool;
                          });
                        }),
                        Text("flutter"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buildRadioListTile(1, "brown", "back"),
                buildRadioListTile(2, "white", "back"),
                SizedBox(
                  height: 10,
                ),
                CheckboxListTile(
                  value: b3,
                  onChanged: (vv) {
                    setState(() {
                      b3 = vv as bool;
                    });
                  },
                  title: Text("jave"),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Row(
                  children: [
                    Text("Select a number \t"),
                    DropdownButton(
                        value: ll,
                        onChanged: (String? v1) {
                          setState(() {
                            ll = v1!;
                          });
                        },
                        items: _drop.map((i) {
                          return DropdownMenuItem(
                              child: Text(i),
                              value:i);
                        }).toList()
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  title: Text("more info"),
                  children: [
                    Divider(color: Colors.red,),
                    ListTile(
                      title: Text("ConTact"),
                      subtitle: Text("contact as for more info" ),
                      onTap: (){
                        setState(() {
                          c=Colors.blue;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                AuthButtons(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LikeButton(
                      size: 50,
                      circleColor:
                      CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.home,
                          color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                          size: 50,
                        );
                      },
                      likeCount: 665,
                    ),
                    LikeButton(
                      size: 50,
                      circleColor:
                      CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.grey,
                          size: 50,
                        );
                      },
                      likeCount: 999,
                    ),
                    LikeButton(
                      size: 50,
                      circleColor:
                      CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.layers_rounded,
                          color: isLiked ? Colors.blue : Colors.grey,
                          size: 50,
                        );
                      },
                      likeCount: 700,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingButton(_buttonClick),
                SizedBox(
                  height: 10,
                ),
                SliderButton(
                  action: () {
                    ///Do something here OnSlide
                    print("working");
                  },
                  ///Put label over here
                  label: Text(
                    "Slide to cancel !",
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Center(
                      child: Icon(
                        Icons.power_settings_new,
                        color: Colors.white,
                        size: 40.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      )),

                  //Put BoxShadow here
                  boxShadow: BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                  ),

                  //Adjust effects such as shimmer and flag vibration here
                  shimmer: true,
                  vibrationFlag: true,

                  ///Change All the color and size from here.
                  width: 230,
                  radius: 10,
                  buttonColor: Color(0xffd60000),
                  backgroundColor: Color(0xff534bae),
                  highlightedColor: Colors.white,
                  baseColor: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }
  Widget _chooseButtonType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Auth Button Types',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('default'),
                  Radio<AuthButtonType?>(
                    value: null,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                  const Text('secondary'),
                  Radio<AuthButtonType>(
                    value: AuthButtonType.secondary,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                  const Text('icon'),
                  Radio<AuthButtonType>(
                    value: AuthButtonType.icon,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chooseIconType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Auth Icon Types',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('default'),
                  Radio<AuthIconType?>(
                    value: null,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                  const Text('outlined'),
                  Radio<AuthIconType?>(
                    value: AuthIconType.outlined,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                  const Text('secondary'),
                  Radio<AuthIconType?>(
                    value: AuthIconType.secondary,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget AuthButtons(){
    return SingleChildScrollView(
      child: Column(
        children: [
          _chooseButtonType(),
          _chooseIconType(),
          const SizedBox(height: 24),
          GoogleAuthButton(
            onPressed: () {
              // your implementation
              setState(() {
                isLoading = !isLoading;
              });
            },
            themeMode: themeMode,
            isLoading: isLoading,
            style: AuthButtonStyle(
              buttonType: buttonType,
              iconType: iconType,
              margin: const EdgeInsets.only(bottom: 18),
            ),
          ),
          AuthButtonGroup(
            style: AuthButtonStyle(
              width: 185,
              height: 38,
              progressIndicatorType: AuthIndicatorType.linear,
              buttonType: buttonType,
            ),
            buttons: [
              GoogleAuthButton(
                onPressed: () {
                  // your implementation
                  setState(() {
                    isLoading = !isLoading;
                  });
                },
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              AppleAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              FacebookAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              GithubAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              MicrosoftAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              TwitterAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              EmailAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              HuaweiAuthButton(
                onPressed: () {},
                themeMode: themeMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  RadioListTile<int> buildRadioListTile(val, t, st) {
    return RadioListTile(
      value: val,
      groupValue: r2,
      onChanged: (v) {
        setState(() {
          r2 = v.hashCode;
        });
      },
      title: Text(t),
      subtitle: Text(st),
      //controlAffinity :ListTileControlAffinity.platform,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }

  Row buildRow(int v) {
    return Row(
      children: [
        Radio(
            value: v,
            groupValue: r1,
            onChanged: (value) {
              setState(() {
                r1 = value.hashCode;
              });
            }),
        Text("$v"),
      ],
    );
  }

  Column SingButton(String _buttonClick){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$_buttonClick',
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          height: 5.0,
        ),
        SignInButton(
            buttonType: ButtonType.apple,
            onPressed: () {
              setState(() {
                _buttonClick = "apple";
              });
            }),
        SignInButton(
            buttonType: ButtonType.appleDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            onPressed: () {
              setState(() {
                _buttonClick = "appleDark";
              });
            }),
        SignInButton(
            buttonType: ButtonType.facebook,
            onPressed: () {
              setState(() {
                _buttonClick = "facebook";
              });
            }),
        SignInButton(
            buttonType: ButtonType.facebookDark,
            onPressed: () {
              setState(() {
                _buttonClick = "facebookDark";
              });
            }),
        SignInButton(
            buttonType: ButtonType.twitter,
            onPressed: () {
              setState(() {
                _buttonClick = "twitter";
              });
            }),
        SignInButton(
            buttonType: ButtonType.github,
            onPressed: () {
              setState(() {
                _buttonClick = "github";
              });
            }),
        SignInButton(
            buttonType: ButtonType.githubDark,
            onPressed: () {
              setState(() {
                _buttonClick = "githubDark";
              });
            }),
        SignInButton(
            buttonType: ButtonType.google,
            onPressed: () {
              setState(() {
                _buttonClick = "google";
              });
            }),
        SignInButton(
            buttonType: ButtonType.googleDark,
            onPressed: () {
              setState(() {
                _buttonClick = "googleDark";
              });
            }),
        SignInButton(
            buttonType: ButtonType.linkedin,
            onPressed: () {
              setState(() {
                _buttonClick = "linkedIn";
              });
            }),
        SignInButton(
            buttonType: ButtonType.youtube,
            onPressed: () {
              setState(() {
                _buttonClick = "youtube";
              });
            }),
        SignInButton(
            buttonType: ButtonType.microsoft,
            onPressed: () {
              setState(() {
                _buttonClick = "microsoft";
              });
            }),
        SignInButton(
            buttonType: ButtonType.tumblr,
            onPressed: () {
              setState(() {
                _buttonClick = "tumblr";
              });
            }),
        SignInButton(
            buttonType: ButtonType.pinterest,
            onPressed: () {
              setState(() {
                _buttonClick = "pinterest";
              });
            }),
        SignInButton(
            buttonType: ButtonType.mail,
            onPressed: () {
              setState(() {
                _buttonClick = "Mail";
              });
            }),
        SignInButton(
            buttonType: ButtonType.reddit,
            onPressed: () {
              setState(() {
                _buttonClick = "reddit";
              });
            }),
        SignInButton(
            buttonType: ButtonType.yahoo,
            onPressed: () {
              setState(() {
                _buttonClick = "yahoo";
              });
            }),
        SignInButton(
            buttonType: ButtonType.amazon,
            onPressed: () {
              setState(() {
                _buttonClick = "amazon";
              });
            }),
        SignInButton(
            buttonType: ButtonType.quora,
            onPressed: () {
              setState(() {
                _buttonClick = "quora";
              });
            }),
        SignInButton(
            buttonType: ButtonType.instagram,
            onPressed: () {
              setState(() {
                _buttonClick = "instagram";
              });
            }),
        //custom button
        SignInButton(
            buttonType: ButtonType.pinterest,
            imagePosition: ImagePosition.right,
            //[buttonSize] You can also use this in combination with [width]. Increases the font and icon size of the button.
            buttonSize: ButtonSize.large,
            btnTextColor: Colors.grey,
            btnColor: Colors.white,
            width: 140,
            //[width] Use if you change the text value.
            btnText: 'Pinterest',
            onPressed: () {
              setState(() {
                _buttonClick = "pinterest";
              });
            }),
        //disabled button
        SignInButton(
            buttonType: ButtonType.yahoo,
            //btnDisabledColor: Colors.grey,
            //btnDisabledTextColor: Colors.grey[700],
            onPressed: null),
        SignInButton.mini(
          buttonType: ButtonType.github,
          onPressed: () {},
        ),
        //disabled mini button
        SignInButton.mini(
          buttonType: ButtonType.github,
          //btnDisabledColor: Colors.grey,
          onPressed: null,
        ),
      ],
    );
  }
}
