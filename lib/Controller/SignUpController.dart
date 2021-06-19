import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:vendr/GraphQlQuery/SignUpQuery.dart';
import 'package:vendr/utils/graphqlProvider.dart';

class SignUpController extends GetxController{
  var email,firstname,lastname,password,confirmPassword,dob,phonenumber,address,sity,state,zipcode,photos;
  signUp()async{
    GraphQLClient _client = graphQlObject.clientToQuery();
    QueryResult result = await _client.mutate(MutationOptions(
    document:gql(signupquery),
    variables: <String, dynamic>{
    'lastname': "repositoryID",
    'firstname': "dfghj",
    'phone': "14524ffasjkdf",
    'address': "reposjhasitoryID",
    'birthdate': "1/8/8",
    'email': "reposihhnsaafasfdtoryID@gmail.com",
    'password':"hgjsdfk",
    'bio':'bio',
    'shopname':'hh'
    
  },));
    if(result.hasException==false){
      print("Result");
      print(result);
    }else{
      print("Exception");
      print(result);
    }

  }

}