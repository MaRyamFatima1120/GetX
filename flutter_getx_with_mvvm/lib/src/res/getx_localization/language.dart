import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String,Map<String,String>> get keys =>{
    'en_US':{
      'email_hint':'Enter email',
      'internet_exception':'We are unable to show results.\nPlease Check your data\nConnection'
    },
    'ur_PK':{
      'email_hint':'ای میل_ہنٹ',
    },
  };
}