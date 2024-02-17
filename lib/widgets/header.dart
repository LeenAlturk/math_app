// import 'package:flutter/material.dart';

// class tabbb extends StatefulWidget {
//   const tabbb({Key? key}) : super(key: key);

//   @override
//   State<tabbb> createState() => _tabbbState();
// }

// class _tabbbState extends State<tabbb> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter TabBar Example - Customized"),
//         ),
//         body: Column(
//           children: [
//             Container(
//               height: 50.0, // Adjust the height as needed
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               child: TabBar(
//                 indicator: BoxDecoration(
//                   color: Colors.green[300],
//                   borderRadius: BorderRadius.circular(25.0),
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.black,
//                 tabs: const [
//                   Tab(text: 'Chats'),
//                   Tab(text: 'Status'),
//                   Tab(text: 'Calls'),
//                   Tab(text: 'Settings'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: const TabBarView(
//                   children: [
//                     Center(
//                       child: Text("Chats Pages"),
//                     ),
//                     Center(
//                       child: Text("Status Pages"),
//                     ),
//                     Center(
//                       child: Text('Calls Page'),
//                     ),
//                     Center(
//                       child: Text('Settings Page'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: tabbb(),
//   ));
// }
