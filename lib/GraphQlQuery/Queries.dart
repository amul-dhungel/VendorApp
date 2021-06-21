String signupquery = r""" 
    mutation Mymutation($address:String!,$birthdate:String!,$bio:String!,
        $email:String!,$firstName:String!,$lastName:String!,$password:String!,$phone:String!,$shopName:String!){
    action:signup(input:{address:$address,birthdate:$birthdate,bio:$bio,lastName:$lastName
              email:$email,firstName:$firstName,password:$password,phone:$phone,shopName:$shopName,imageFileSizes: [10]}){

                id,
                
                token
              }
    }""";

String createProductquery = r"""
    mutation Mymutations($ownerID:ID!,$title:String!,$desc:String,
        $price:Float!,$condition:ProductCondition!,$longitude:Float!,$latitude:Float!,$details:[ProductDetails!] ){
    action:createProduct(input:{ownerID:$ownerID,title:$title,desc:$desc,price:$price
              condition:$ProductCondition,longitude:$longitude,latitude:$latitude,details:$details,imageFileSizes: [10]}){

                id
              }
    }""";
