import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire/constants.dart';
import 'package:flutter_fire/screens/home_page.dart';
import 'package:flutter_fire/screens/login_page.dart';
import 'package:flutter_fire/state/state_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context,watch,child){
          AsyncValue<FirebaseApp> fbApp = watch(providerFbInitialize);
          return fbApp.when(
            data: (data) => Center(
              child: LoginPage(),
            ),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            error: (err, starck) =>Center(child: Text('${err.toString()}',
              style: Constants.regularHeading,
            ),),
          );
        },
      ),
    );
  }
}


/*class LandingPage extends ConsumerWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<FirebaseApp> fbApp = watch(providerFbInitialize);
    return Scaffold(
      body: fbApp.when(
        data: (data) => Center(
          child: Text('${data}'),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        error: (err, starck) =>Center(child: Text('${err.toString()}'),),
  ),
);
  }

}*/
