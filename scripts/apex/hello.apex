// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
Integer val = 25;
System.debug('val'+val);
String str = 'New Haha';
System.debug('str'+ str);
Datetime currDateTime = Datetime.now();
System.debug('currDateTime'+ currDateTime);
System.debug(Time.newInstance(22,30,46,03));
System.debug(Date.newInstance(2026,05,28));
Decimal dec = 24.987;
System.debug('dec'+ dec);

Object objval = 'This is an object value';
System.debug('obj'+ objval);

List<Integer> listofNumbers = new List<Integer>();
listofNumbers.add(1);
listofNumbers.add(2);
listofNumbers.add(3);
System.debug('listofNumbers: ' + listofNumbers);

Set<Integer> setofNumbers = new Set<Integer>();
setofNumbers.add(3);
setofNumbers.add(2);
setofNumbers.add(1);
setofNumbers.add(1);
System.debug('setofNumbers: ' + setofNumbers);

Map<Integer, String> mapofIntegerString = new Map<Integer, String>();
mapofIntegerString.put(1, 'One');
mapofIntegerString.put(2, 'Two');
mapofIntegerString.put(3, 'Three');
System.debug('mapofIntString'+ mapofIntegerString);
System.debug('Value of map 3'+ mapofINtegerString.get(3));

List<Integer> loopIntLis = new List<Integer>();
Integer maxSize = 6;
for (Integer i = 0; i <= maxSize; i++){
    loopIntLis.add(i);
}
System.debug('forloop' + loopIntLis);