// import 'package:coffee/coffee/models/cofee_model.dart';
// import 'package:coffee/coffee/services/coffee_service.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildBody(),
//     );
//   }

//   Widget _buildBody() {
//     return Container(
//       alignment: Alignment.center,
//       child: FutureBuilder<List<CoffeeModel>>(
//         future: CoffeeService.getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Center(child: Text("${snapshot.error}"));
//           }

//           if (snapshot.connectionState == ConnectionState.done) {
//             return _buildDisplay(snapshot.data);
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildDisplay(List<CoffeeModel>? items) {
//     if (items == null) {
//       return SizedBox();
//     }

//     return ListView.builder(
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return _buildItem(items[index]);
//       },
//     );
//   }

//   Widget _buildItem(CoffeeModel coffee) {
//     return Stack(
//       children: [
//         Card(
//           semanticContainer: true,
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           child: Image.network(
//             'https://upload.wikimedia.org/wikipedia/commons/e/ed/Wet_Cappuccino_with_heart_latte_art.jpg',
//             fit: BoxFit.fill,
//             width: 600,
//             height: 200,
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           elevation: 5,
//           margin: const EdgeInsets.all(8.0),
//         ),
//       ],
//     ); //Card
//   }
// }
