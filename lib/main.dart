import 'package:basketball_counter_app/component/elevation_button.dart';
import 'package:basketball_counter_app/component/teams.dart';
import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Basketball Counter',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.orangeAccent,
              elevation: 0.0,
            ),
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.orange,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Teams(
                          teamName: 'Team A',
                          counter:
                              BlocProvider.of<CounterCubit>(context).counterA,
                          firstFunction: () {
                            if (BlocProvider.of<CounterCubit>(context)
                                        .counterA +
                                    1 <
                                100) {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(buttonNumber: 1, team: 'A');
                            }
                          },
                          secondFunction: () {
                            if (BlocProvider.of<CounterCubit>(context)
                                        .counterA +
                                    2 <
                                100) {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(buttonNumber: 2, team: 'A');
                            }
                          },
                          thirdFunction: () {
                            if (BlocProvider.of<CounterCubit>(context)
                                        .counterA +
                                    3 <
                                100) {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(buttonNumber: 3, team: 'A');
                            }
                          },
                        ),
                        const SizedBox(
                          height: 500,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 3,
                            width: 10,
                          ),
                        ),
                        Teams(
                          teamName: 'Team B',
                          counter:
                              BlocProvider.of<CounterCubit>(context).counterB,
                          firstFunction: () {
                            if (BlocProvider.of<CounterCubit>(context)
                                        .counterB +
                                    1 <
                                100) {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(buttonNumber: 1, team: 'B');
                            }
                          },
                          secondFunction: () {
                            if (BlocProvider.of<CounterCubit>(context)
                                        .counterB +
                                    2 <
                                100) {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(buttonNumber: 2, team: 'B');
                            }
                          },
                          thirdFunction: () {
                            if (BlocProvider.of<CounterCubit>(context)
                                        .counterB +
                                    3 <
                                100) {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(buttonNumber: 3, team: 'B');
                            }
                          },
                        ),
                      ],
                    ),
                    CustomeButton(
                        functionName: "Reset",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .resetPoints();
                        }),
                  ]),
            ),
          );
        },
        listener: (context, state) {});
  }
}
