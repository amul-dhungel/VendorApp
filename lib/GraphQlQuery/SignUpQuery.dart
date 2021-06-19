import 'package:vendr/utils/graphqlProvider.dart';

String signupquery=r""" 
    mutation Mymutation($address:String!,$birthdate:String!,$bio:String!,
        $email:String!,$firstname:String!,$lastname:String!,$password:String!,$phone:String!,$shopname:String!){
    action:signup(input:{address:$address,birthdate:$birthdate,bio:$bio,lastName:$lastname
              email:$email,firstName:$firstname,password:$password,phone:$phone,shopName:$shopname,imageFileSizes: [10]}){

                id,
                
                token
              }
    }""";
