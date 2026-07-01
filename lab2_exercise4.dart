
void main() {
  String? middleName;

  String city = 'Nakhon Sawan';

  print('Middle name length: ${middleName?.length ?? 0}');

  print('City length: ${city.length}');

  middleName ??= 'N/A';
  print('Middle Name before assignment: null');
  print('Middle Name after assignment: $middleName');

  middleName ??= 'N/A';
  print('Middle Name after second assignment: $middleName');
}
