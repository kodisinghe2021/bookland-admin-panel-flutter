import 'package:bookland_admin_panel_web/bloc/initilizing_bloc.dart';
import 'package:bookland_admin_panel_web/screen/home_screen.dart';
import 'package:bookland_admin_panel_web/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InitilizingBloc>(
          create: (context) =>
              InitilizingBloc()..add(StartRetrieveAllInitData()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<InitilizingBloc, InitilizingState>(
          builder: (context, state) {
            if (state is InitilizingDataRetrievingLoading) {
              return SplashScreen(
                rowcChild: const CupertinoActivityIndicator(),
              );
            }
            if (state is InitilizingDataRetrievingSuccess) {
              return HomeScreen();
            }
            if (state is InitilizingDataRetrievingFailed) {
              return SplashScreen(
                rowcChild: const Text("Failed"),
              );
            }

            return SplashScreen(
              rowcChild: const Text("Stay"),
            );
          },
        ),
      ),
    );
  }
}
