import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../main.dart';

class NoInternetView {

  NoInternetView();
  showMyDialog() {
    return showDialog(
      barrierDismissible: false,
      context: navigatorKey.currentContext!,
      builder: (ctx) => AlertDialog(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
        title: const Text("No Internet Connection"),
        content: Wrap(
          children: [
            lottieImageView(),
            const Text("Please check your Internet Connection settings"),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text("Okay", style: Theme.of(navigatorKey.currentContext!).textTheme.subtitle1!.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  lottieImageView() {
    return Container(
      // height: height / 3.5,
      child: Lottie.asset('assets/no_internet.json', repeat: true),
    );
  }
}

// class NoInternetView extends StatefulWidget {
//   final BuildContext buildContext;
//   const NoInternetView({ Key? key, required this.buildContext }) : super(key: key);

//   @override
//   _NoInternetViewState createState() => _NoInternetViewState();
// }

// class _NoInternetViewState extends State<NoInternetView> {
//   late double width, height;

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return StreamBuilder(
//       builder: showMyDialog(context));
//   }

//   showMyDialog(BuildContext context) {
//   return showDialog(
//     context: context,
//     builder: (ctx) => AlertDialog(
//       shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(16))),
//       title: Text("No Internet Connection"),
//       content: Text("Please check your Internet Connection settings"),
//       actions: <Widget>[
//         ElevatedButton(
//           onPressed: () {
//             Navigator.of(ctx).pop();
//           },
//           child: Text("Okay", style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white)),
//         ),
//       ],
//     ),
//   );
// }

// lottieImageView() {
//     return Container(
//       height: height / 3.5,
//       child: Lottie.asset('assets/animations/no_internet.json', repeat: false),
//     );
//   }
// }