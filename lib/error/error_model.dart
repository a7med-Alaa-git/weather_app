class ErrorModel {

final String errorMessage;

  ErrorModel({required this.errorMessage});
factory ErrorModel.fromJson(dynamic json){

  return ErrorModel(errorMessage: json['error']['message']);
}

}