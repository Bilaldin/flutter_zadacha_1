import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class ZadachaApp extends StatelessWidget {
  const ZadachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (_) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              );
            },
          ),
        ),
        child: const Text(
          'Skip',
          style: TextStyle(fontSize: 25),
        ),
      ),
      // child: TextButton(
      //   child: Text('Skip'),
      //   onPressed: () {},
      //   style: ButtonStyle(
      //     shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
      //       return RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20));
      //     }),
      //   ),
      // ),
    );
    return Scaffold(
      backgroundColor: Color(0xff36B8B8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [sizedBox],
        titleTextStyle: TextStyle(),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset(
              'assets/images/billol.png',
              // height: 500,
            ),
            //     child: ColorFiltered(
            //   // colorFilter:
            //       // const ColorFilter.mode(Color(0xff36B8B8), BlendMode.color),

            //
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            """
           Welcome to chatboat,
           a great friend to chat 
                 with you
""",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 95,
          ),
          SizedBox(
            width: 320,
            height: 55,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.redAccent; //<-- SEE HERE
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}
//fsdsfgasfdsdvafdbbafndihjfdjh