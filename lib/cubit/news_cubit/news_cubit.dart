import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit/news_state.dart';
import 'package:news_app/services/news_services.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsinitialState());
  getNews({required String category}) {
    emit(NewsLoadingState());
    try {
      NewsServices(Dio()).getNews(category: category);
      emit(NewsSuccessState());
    } catch (e) {
      emit(NewsFailureState(errMessage: "There was an error"));
    }
  }
}
