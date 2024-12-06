import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Views/home_view.dart';
import 'package:news_app/cubit/news_cubit/news_cubit.dart';
import 'package:news_app/simple_bloc_opserver.dart';

void main() {
  Bloc.observer = SimpleBlocOpserver();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
