abstract class NewsState {}
class NewsinitialState extends NewsState{}
class NewsLoadingState extends NewsState{}
class NewsSuccessState extends NewsState{}
class NewsFailureState extends NewsState{
  final String errMessage;

  NewsFailureState({required this.errMessage});
}