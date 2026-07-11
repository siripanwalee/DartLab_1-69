class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, this.hoursWorked, this.hourlyRate)
    : super(name);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("Alice", 30000),
    PartTimeEmployee("Bob", 80, 200),
    FullTimeEmployee("Charlie", 45000),
    PartTimeEmployee("David", 100, 180),
  ];

  for (var employee in employees) {
    print("${employee.name} ได้รับเงินเดือน ${employee.calculateSalary()} บาท");
  }
}
