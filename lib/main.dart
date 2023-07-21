import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          dialogBackgroundColor: Color(0xFF333239),
          scaffoldBackgroundColor: const Color(0xFF222127)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i-button'),
        actions: [
          TooltipButton(),
        ],
      ),
      body: const Center(
        child: Text(
          'Tap the "i" button for details',
          style: TextStyle(fontSize: 20,color: Colors.white),
        ),
      ),
    );
  }
}

class TooltipButton extends StatefulWidget {
  @override
  _TooltipButtonState createState() => _TooltipButtonState();
}

class _TooltipButtonState extends State<TooltipButton> {
// mxnnn
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Tap this button to check all the details',
      showDuration: const Duration(minutes: 1),
      triggerMode: TooltipTriggerMode.tap,
      decoration: BoxDecoration(color: const Color(0xFFFF8784)),
      child: GestureDetector(
        child: const Icon(Icons.info),
      ),
    );
  }
}

// class DetailsDialogBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text(
//         'Prompt Details',
//         style: TextStyle(color: Colors.white),
//       ),
//       content: SizedBox(
//         width: double.maxFinite,
//         child: ListView(
//           shrinkWrap: true,
//           children: const [
//             ListTile(
//               leading: Icon(Icons.adjust,color: Colors.white,),
//               title: Text(
//                   'You can work around to text, filter and params section and crate a custom prompt text',style: TextStyle(color: Colors.white),),
//               tileColor: Color(0xFFFF8784),
//             ),
//             SizedBox(
//               height: 2,
//             ),
//             ListTile(
//               leading: Icon(Icons.star_border_purple500_rounded,color: Colors.white,),
//               title: Text(
//                 'Under text section, you can add words related to the desired outcome you want',style: TextStyle(color: Colors.white),
//               ),
//               tileColor: Color(0xFFFF8784),
//             ),
//             SizedBox(
//               height: 2,
//             ),
//             ListTile(
//               leading: Icon(Icons.fiber_manual_record,color: Colors.white,),
//               title: Text(
//                   'Under filters section, you can choose multiple prompts from more than 1000 prompts under different categories',style: TextStyle(color: Colors.white),),
//               tileColor: Color(0xFFFF8784),
//             ),
//           ],
//         ),
//       ),
//       actions: [
//         ElevatedButton(
//           onPressed: () => Navigator.of(context).pop(),
//           child: const Text('Done',style: TextStyle(color: Colors.white),),
//           style: ElevatedButton.styleFrom(
//               backgroundColor: const Color(0xFFFF8784)),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:super_tooltip/super_tooltip.dart';

// void main() => runApp(const MainApp());

// class MainApp extends StatelessWidget {
//   const MainApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Super Tooltip Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ExamplePage(),
//     );
//   }
// }

// class ExamplePage extends StatefulWidget {
//   const ExamplePage({
//     Key? key,
//   }) : super(key: key);
//   @override
//   State createState() => _ExamplePageState();
// }

// class _ExamplePageState extends State<ExamplePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Color(0xFF333239),
//       body: Center(child: TargetWidget()),
//     );
//   }
// }

// class TargetWidget extends StatefulWidget {
//   const TargetWidget({Key? key}) : super(key: key);

//   @override
//   State createState() => _TargetWidgetState();
// }

// class _TargetWidgetState extends State<TargetWidget> {
//   final _controller = SuperTooltipController();
//   Future<bool> _willPopCallback() async {
//     // If the tooltip is open we don't pop the page on a backbutton press
//     // but close the ToolTip
//     if (_controller.isVisible) {
//       await _controller.hideTooltip();
//       return false;
//     }
//     return true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: _willPopCallback,
//       child: GestureDetector(
//         onTap: () async {
//           // await _controller.showTooltip();
//           await makeTooltip();
//         },
//         child: SuperTooltip(
//           showBarrier: true,
//           controller: _controller,
//           popupDirection: TooltipDirection.down,
//           backgroundColor: const Color(0xE6FF8784),
//           // backgroundColor: Color(0xff2f2d2f),
//           // left: 30,
//           // right: 30,
//           arrowTipDistance: 15.0,
//           arrowBaseWidth: 20.0,
//           arrowLength: 20.0,
//           borderWidth: 2.0,
//           constraints: const BoxConstraints(
//             minHeight: 0.0,
//             maxHeight: 100,
//             minWidth: 0.0,
//             maxWidth: 100,
//           ),
//           showCloseButton: ShowCloseButton.none,
//           touchThroughAreaShape: ClipAreaShape.rectangle,
//           touchThroughAreaCornerRadius: 30,
//           barrierColor: Colors.transparent,
//           content: const Text(
//             "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
//             "sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, "
//             "sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ",
//             softWrap: true,
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           child: const Icon(
//               Icons.info_outline_rounded,
//               color: Colors.white,
//             ),
//         ),
//       ),
//     );
//   }

//   Future<void> makeTooltip() async {
//     _controller.showTooltip();
//   }
// }
