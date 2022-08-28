import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/cubit/cubitCounter.dart';
import 'package:state_management/cubit/cubitStates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = CounterCubit.get(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                backgroundColor: Colors.teal,
                body: SafeArea(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 80,
                            //padding: const EdgeInsets.all(20),
                          color: Colors.white30,
                            child: TextButton(
                                onPressed: () {
                                  cubit.Plus();
                                }, child: const Text("Plus" , style: TextStyle(fontSize: 30,color: Colors.deepPurple),),
                                
                            ),
                        ),
                        
                        Text(
                          '${cubit.Counter}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        Container(
                          height: 80,
                          color: Colors.white30,
                          child: TextButton(
                            onPressed: () {
                              cubit.Miunc();
                            }, child: const Text("Minus" , style: TextStyle(fontSize: 30,color: Colors.deepPurple),),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
