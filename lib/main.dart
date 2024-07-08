import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      themeMode: ThemeMode.dark,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const SecondPage()));
        },
        child: const Text("sds"),
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String helloWorldString = "Hello World";
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//         appBar: AppBar(
//           // Here we take the value from the MyHomePage object that was created by
//           // the App.build method, and use it to set our appbar title.

//           title: Text(widget.title),
//         ),
//         bottomNavigationBar: NavigationBar(
//           selectedIndex: currentIndex,
//           onDestinationSelected: (int index) => {
//             setState(() {
//               currentIndex = index;
//             })
//           },
//           destinations: const [
//             NavigationDestination(
//                 icon: Icon(Icons.home_outlined), label: "Home"),
//             NavigationDestination(
//                 icon: Icon(Icons.settings_outlined), label: "Setting")
//           ],
//         ),
//         body: Center(
//             child: SizedBox(
//           width: double.infinity,
//           height: double.infinity,
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           helloWorldString = "Hello Bob";
//                         });
//                       },
//                       child: const Text("Press me")),
//                   ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           helloWorldString = "Hello Bob";
//                         });
//                       },
//                       child: const Text("Press me")),
//                 ],
//               ),
//               Image.network(
//                   "https://images.pexels.com/photos/15804651/pexels-photo-15804651/free-photo-of-people-together-on-motorcycle-on-road-in-mountains.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
//               SizedBox(
//                   width: 240,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 12.0),
//                     child: ElevatedButton(
//                         onPressed: () {}, child: const Text("Sign in")),
//                   ))
//             ],
//           ),
//         )));
//   }
// }
