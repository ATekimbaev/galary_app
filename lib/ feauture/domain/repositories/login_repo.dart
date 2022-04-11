 
 class LoginRepo{
   Future<bool> logIn({required String emali,required String password})
   async{
     if ( emali.contains('@')){
       return true;
       
     }
     else {
       return false;
     }
   } 
 }