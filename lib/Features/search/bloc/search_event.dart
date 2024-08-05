abstract class SearchEvent{}


class RequestToSerachEvent extends SearchEvent{

  String query;

  RequestToSerachEvent({required this.query});


}