import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Font Change Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         textTheme: GoogleFonts.robotoTextTheme(
//           bodyText1: TextStyle(
//             fontSize: 16.0,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class GoogleFonts {
//   static robotoTextTheme({required TextStyle bodyText1}) {}
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _selectedFont = 'Roboto';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Font Change Demo'),
//       ),
//       body: Center(
//         child: DropdownButton<String>(
//           value: _selectedFont,
//           items: [
//             DropdownMenuItem(
//               child: Text('Roboto'),
//               value: 'Roboto',
//             ),
//             DropdownMenuItem(
//               child: Text('Open Sans'),
//               value: 'Open Sans',
//             ),
//             DropdownMenuItem(
//               child: Text('Lato'),
//               value: 'Lato',
//             ),
//           ],
//           onChanged: (String? newValue) {
//             setState(() {
//               _selectedFont = newValue ?? 'Roboto';
//             });
//           },
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Fonts',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.undo),
                label: const Text(''),
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Colors.deepPurple, width: 1.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.redo),
                label: const Text(''),
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.deepPurple,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 250),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                const DropdownMenuItem(child: Text('data'));
                setState(() {});
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'New Text',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
