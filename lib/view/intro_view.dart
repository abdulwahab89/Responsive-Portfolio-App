// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:responsive_portfolio_app/components/custom_image_widget.dart';
// import 'package:responsive_portfolio_app/components/header_body.dart';
// class IntroView extends StatefulWidget {
//   const IntroView({super.key});
//
//   @override
//   State<IntroView> createState() => _IntroViewState();
// }
//
// class _IntroViewState extends State<IntroView> {
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth=MediaQuery.of(context).size.width;
//     double screenHeight=MediaQuery.of(context).size.height;
//     return Column(
//       children: [
//         Expanded(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(flex: 2,
//                 child: SizedBox(
//                     height:screenHeight*0.5,
//                     width: screenWidth*0.1,
//                     child: HeaderBody(header: "Hi, I'm Wahab ", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
//
//               ),
//               Expanded(
//                   child: Padding(
//                       padding: EdgeInsets.only(top: screenHeight*0.1),
//                       child: const CustomImageWidget())),],
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.only(left: screenWidth*0.045),
//             child:   Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10.h),
//                   child:  Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const Icon(Icons.location_on_outlined,
//                       ),
//                       Text(" Hyderabad,PK",
//                         style: Theme.of(context).textTheme.bodySmall,
//                       ),
//
//                     ],),
//                 ),
//
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//
//                     //     Lottie.asset('animations/live_blink.json')
//                     // ,    Text(" Available for projects",
//                     //
//                     //     style: Theme.of(context).textTheme.bodySmall,
//                     //     ),
//
//                   ],),
//                 Padding(
//                   padding:  EdgeInsets.symmetric(vertical:screenHeight*0.05,horizontal: screenWidth*0.01),
//                   child: Row(children: [
//                     IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.github)),
//                     IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter)),
//                     IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.whatsapp)),
//
//
//
//
//                   ],),
//                 )
//               ],
//             ),
//           ),
//         )
//
//       ],
//     );
//   }
// }
