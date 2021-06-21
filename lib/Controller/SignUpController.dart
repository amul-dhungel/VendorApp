import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:vendr/GraphQlQuery/Queries.dart';
import 'package:vendr/utils/graphqlProvider.dart';

class SignUpController extends GetxController {
  var email,
      firstname,
      lastname,
      password,
      confirmPassword,
      dob,
      phonenumber,
      address,
      photos;
  signUp() async {
    GraphQLClient _client = graphQlObject.clientToQuery();
    QueryResult result = await _client.mutate(MutationOptions(
      document: gql(signupquery),
      variables: <String, dynamic>{
        'address': "Nerdworld",
        'birthdate': "1/2/3",
        'email': "thetrain@mail.com",
        'firstName': "Johkn",
        'lastName': "TestAccount",
        'password': "TestAkjccount123!",
        'phone': "12121k3j2",
        'shopName': "hileguy",
        'bio': 'bioguy',
      },
    ));
    if (result.hasException == false) {
      print("Result");
      print(result);
    } else {
      print("Exception");
      print(result);
    }
  }
}
