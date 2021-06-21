import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:vendr/GraphQlQuery/Queries.dart';
import 'package:vendr/Models/ProductDetails.dart';
import 'package:vendr/utils/graphqlProvider.dart';

class CreateProductController extends GetxController {
  var ownderID, title, desc, price, condition, longitude, latitude, details;
  createProduct() async {
    GraphQLClient _client = graphQlObject.clientToQuery();
    QueryResult result = await _client.mutate(MutationOptions(
      document: gql(signupquery),
      variables: <String, dynamic>{
        'ownerID': "8e9cc6f8-0e99-485b-8eec-1e92f207d179",
        'title': "XBOX",
        'desc': "This is the desc part",
        'price': 23.4,
        'condition': "New",
        'longitude': 12.34,
        'langitude': 43.23,
        'details': enumer
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
