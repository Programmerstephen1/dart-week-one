void main() {
  // ─── 1. Data Types Implementation ─────────────────────────────────────────

  // Define Variables
  int    anInt     = 42;
  double aDouble   = 3.1415;
  String aString   = "Dart is fun!";
  bool   aBool     = false;
  List<int> aList  = [7, 14, 21];

  print("=== 1. Data Types ===");
  print("int:    $anInt");
  print("double: $aDouble");
  print("String: \"$aString\"");
  print("bool:   $aBool");
  print("List:   $aList\n");

  // ─── 2. Type Conversion ────────────────────────────────────────────────────

  print("=== 2. Type Conversion ===");
  print("String → int:    \"123\" → ${toInt("123")}");
  print("String → double: \"123.45\" → ${toDouble("123.45")}");
  print("int → String:    789 → \"${toStringFromInt(789)}\"");
  print("int → double:    789 → ${toDoubleFromInt(789)}\n");

  // ─── 3. Function for Conversion ───────────────────────────────────────────

  print("=== 3. convertAndDisplay(\"256.0\") ===");
  convertAndDisplay("256.0");
  print("");

  // ─── 4. Control Flow ──────────────────────────────────────────────────────

  print("=== 4. Control Flow ===");

  // If-Else: positive/negative/zero
  int testNum = -5;
  print("\n– Checking sign of $testNum:");
  checkSign(testNum);

  // If-Else: voting eligibility
  int userAge = 17;
  print("\n– Voting eligibility at age $userAge:");
  checkVotingEligibility(userAge);

  // Switch: day of week
  int dayNum = 4;
  print("\n– Day #$dayNum is:");
  printWeekday(dayNum);

  // Loops
  print("\n– for loop 1→10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("\n– while loop 10→1:");
  int w = 10;
  while (w >= 1) {
    print(w);
    w--;
  }

  print("\n– do-while loop 1→5:");
  int d = 1;
  do {
    print(d);
    d++;
  } while (d <= 5);

  // ─── 5. Combining Data & Control Flow ────────────────────────────────────

  print("\n=== 5. Combine Data Types & Control Flow ===");
  List<int> numbers = [3, 12, 47, 102, 7];

  for (var n in numbers) {
    // Print number
    stdoutPrint("\nNumber: $n");

    // Even or odd
    if (n % 2 == 0) {
      stdoutPrint("  → even");
    } else {
      stdoutPrint("  → odd");
    }

    // Size category
    String category = categorizeNumber(n);
    stdoutPrint("  → category: $category");
  }
}

/// ─── Conversion Helpers ────────────────────────────────────────────────────

int toInt(String s) => int.parse(s);
double toDouble(String s) => double.parse(s);
String toStringFromInt(int x) => x.toString();
double toDoubleFromInt(int x) => x.toDouble();

/// 3. convertAndDisplay
void convertAndDisplay(String number) {
  int    asInt    = int.parse(number);
  double asDouble = double.parse(number);
  print("  as int:    $asInt");
  print("  as double: $asDouble");
}

/// ─── Control Flow Helpers ─────────────────────────────────────────────────

void checkSign(int x) {
  if (x > 0) {
    print("  $x is positive.");
  } else if (x < 0) {
    print("  $x is negative.");
  } else {
    print("  $x is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("  Eligible to vote.");
  } else {
    print("  Not eligible to vote (must be 18+).");
  }
}

void printWeekday(int day) {
  switch (day) {
    case 1:
      print("  Monday");
      break;
    case 2:
      print("  Tuesday");
      break;
    case 3:
      print("  Wednesday");
      break;
    case 4:
      print("  Thursday");
      break;
    case 5:
      print("  Friday");
      break;
    case 6:
      print("  Saturday");
      break;
    case 7:
      print("  Sunday");
      break;
    default:
      print("  Invalid day: $day (must be 1–7)");
  }
}

/// 5. Categorize numbers by size
String categorizeNumber(int n) {
  switch (n) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      return "small (1–10)";
    default:
      if (n <= 100) {
        return "medium (11–100)";
      } else {
        return "large (101+)";
      }
  }
}

/// Helper to print when code is structured non-linearly
void stdoutPrint(Object o) => print(o);
