import 'package:all/3d_ball/ball.dart';
import 'package:all/Custom_Paint/Custom_Clipper.dart';
import 'package:all/bottomNavigation/allbottomNavigation.dart';
import 'package:all/drawer/Drawer.dart';
import 'package:all/views/Alarm.dart';
import 'package:all/views/ProgressBarIndicator.dart';
import 'package:all/views/dark.dart';
import 'package:all/views/figma_squircle.dart';
import 'package:all/views/mailer_send.dart';
import 'package:all/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:io';
import 'package:all/Animation/MainAnimation.dart';
import 'package:all/Clock/Clock.dart';
import 'package:all/Date/maindate.dart';
import 'package:all/Dialog/maindialof.dart';
import 'package:all/views/Dismissible.dart';
import 'package:all/SharedPreferences/shared_preferences.dart';
import 'package:all/views/SliverAppBar.dart';
import 'package:all/views/camera.dart';
import 'package:all/views/ios.dart';
import 'package:all/notifications/all_not.dart';
import 'package:all/notifications/mainnotifications.dart';
import 'package:all/views/sizw.dart';
import 'package:all/timer/timer.dart';
import 'package:all/views/url%20launcher.dart';
import 'package:all/views/ExpandableListView.dart';
import 'package:all/images/ImageSilder.dart';
import 'package:all/views/Marquee.dart';
import 'package:all/views/PageView.dart';
import 'package:all/allwidget/Widget.dart';
import 'package:all/views/animated_list.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'AsyncProgramming/asyncprogramming.dart';
import 'Provider/mainprovider.dart';
import 'bloc/Bloc.dart';
import 'dark/dark.dart';
import 'images/images.dart';
import 'timer/maintimer.dart';
import 'views/GridView.dart';
import 'views/ListWheelScrollView.dart';
import 'views/card_swiper/card_swiper.dart';
import 'views/listview.dart';
import 'views/tabbar.dart';
import 'views/table.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // try {
  //   cameras = await availableCameras();
  // } on CameraException catch (e) {
  //   print('${e.code} : ${e.description}');
  // }
  runApp(MyApp());
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) =>  MyApp(),
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: Brightness.light,
      builder: (BuildContext context, Brightness brightness) {
        return MaterialApp(
          builder: (c, w) {
            return ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(c, w!),
                maxWidth: 1200,
                minWidth: 400,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(450, name: MOBILE),
                  const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                  const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                  const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                ],
                background: Container(color: const Color(0xFFF5F5F5)));
          },
          debugShowCheckedModeBanner: false,
          home: Myhome(),
        );
      },
    );
  }
}

class Myhome extends StatefulWidget {
  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  final _x = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _x,
      appBar: AppBar(
        title: Text("All Widget"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ThemeBuilder.of(context)?.changeTheme();
              },
              icon: Icon(Icons.dark_mode)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: const Text(
                        "Drawer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return DrawerPage();
                        }));
                      },
                    ),
                    RaisedButton(
                      child: const Text(
                        "Bottom Navigation",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return BottomNavigation();
                        }));
                      },
                    ),
                    RaisedButton(
                      child: const Text(
                        "Tab Bar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return TabBarPage();
                        }));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: const Text(
                        "Date picker",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return MainDate();
                        }));
                      },
                    ),
                    RaisedButton(
                      child: const Text(
                        "Expandable ListView",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return ExpandableListView();
                        }));
                      },
                    ),
                    ElevatedButton(
                      child: const Text('All Widget'),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return AllWidget();
                        }));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Bottom Sheet'),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.amber,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text('Modal allwidget'),
                                    ElevatedButton(
                                      child: const Text('Close allwidget'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Date",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2021),
                            lastDate: DateTime.now(),
                          );
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Dialog",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Dialog(context);
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Snack Bar",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          final SnackBar sbar = SnackBar(
                            content: Text("hi snack bar"),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            action: SnackBarAction(
                              label: "Undo",
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          );
                          _x.currentState!.showSnackBar(sbar);
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Flush Bar",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Flushbar(
                            title: "Flush Bar",
                            message: "this is test to flush bar",
                            backgroundColor: Colors.red,
                            flushbarPosition: FlushbarPosition.BOTTOM,
                            messageText: Text(
                              "mmmmmmmmmmmm",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            duration: Duration(seconds: 4),
                            icon: Icon(Icons.backpack),
                            mainButton: FlatButton(
                              child: Text("Undo"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ).show(context);
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Image Slider",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return ImageSlider();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "List Wheel",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return ListWheel();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Page View",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return PageViewPage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Dismissible",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return DismissiblePage();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Grid View",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return GridViewPage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "List View",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return ListViewPage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Marquee",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return MarqueePage();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Date Time Picker",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return GridViewPage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Table",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return TablePage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Dialog",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return MainDialog();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Splash Screen",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Splash();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Notifications",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return MainNotifications();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Shared Preferences",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return SharedPreferencesPage();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Provider",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return MainProvider();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Async Programming",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return AsyncProgramming();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Image Picker",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return PickImages();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Timer",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return MainTimer();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Bloc",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return BlocPage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Dark Mode",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Dark();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Card Swiper",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return card_swiper();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Figma Squircle",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return figma_squircle();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Sliver AppBar",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Sliver_App_Bar();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "url launcher",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return urllauncher();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "url launcher2",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return urllauncher2();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "mailer send",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return mailer_send();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Set Alarm",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Alarm();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Set Alarm",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Alarm2();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Clock",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Clock();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Animated_List",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Animated_List();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "IOS",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return IOS();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Animation",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return MainAnimation();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "AllNotifications",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          final NotificationAppLaunchDetails?
                              notificationAppLaunchDetails =
                              !kIsWeb && Platform.isLinux
                                  ? null
                                  : await flutterLocalNotificationsPlugin
                                      .getNotificationAppLaunchDetails();
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return AllNotifications(
                                notificationAppLaunchDetails);
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Screen size",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return SizePage();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Screen size 2",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return SizePage2();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "web view",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          WebView(
                            initialUrl: 'https://www.imdb.com/?ref_=nv_home',
                          );
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "camera",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return CameraApp();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Progress Bar Indicator ",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return IndicatorPage();
                          }));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "CustomClipper",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return WaveClipper();
                          }));
                        }),
                    RaisedButton(
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          "Ball 3D",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return Ball3D();
                          }));
                        }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      //drawerScrimColor: Colors.blueGrey.withOpacity(0.6),
    );
  }

  void Dialog(BuildContext context) {
    final AlertDialog a = AlertDialog(
      title: Text("Dialog"),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Divider(color: Colors.black),
            Text("Hi test AlertDialog"),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext c) {
          return a;
        },
        barrierDismissible: false);
  }
}
