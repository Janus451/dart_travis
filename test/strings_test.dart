import 'package:test/test.dart' as t;

import 'package:dart_start/src/strings.dart' as string;




void main(){
    
  t.setUpAll(() async {});
  t.tearDownAll(() async {});
  
  t.group('Strings', (){  
    t.test('.isBlank', testStrings_isBlank);
    t.test('.isEmpty', testStrings_isEmpty);
    t.test('.isNotBlank', testStrings_isNotBlank);
    t.test('.isNotEmpty', testStrings_isNotEmpty);
    t.test('.randomString', testStrings_randomString);
    t.test('.substringAfter', testStrings_substringAfter);
    t.test('.substringBefore', testStrings_substringBefore);
    });
}


void testStrings_isBlank(){
  final result =  string.isBlank('1234');
    
    t.expect(result,false);
}

void testStrings_isEmpty(){
    final result =  string.isEmpty('1234');
    
    t.expect(result,false);
}

void testStrings_isNotBlank (){
    final result = string.isNotBlank('1234');
    
    t.expect(result,true);
}

void testStrings_isNotEmpty() {
    final result = string.isNotEmpty('1234');
    
    t.expect(result, true);
}

void testStrings_randomString() {
    final result = string.randomString(5);
    
    t.expect(result,t.hasLength(5));
}

void testStrings_substringAfter() {
    final result = string.substringAfter('test1check','1');
    
    t.expect(result, t.equals('check'));
}

void testStrings_substringBefore() {
    final result = string.substringBefore('test1check','1');
    
    t.expect(result, t.equals('test'));
}