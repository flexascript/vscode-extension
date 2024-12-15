/**
 * Sample test file
 */

// the namespace is the first non mandatory statemente,
// and define the namespace of all file
namespace this_file_namespace;

using cp.core.exception;
using some_lib;
using folder.subfolder.lib;

include namespace nmsp;

struct StructTest {
  var struct_var: string;
  var second_var: int;
};

exclude namespace nmsp;

fun function_test(a: bool, b: int, c: float = 1f,
                  x: char = '\0', ...y: string,
                  z[]: nmsp::StructName, alpha: any): nmsp::StructName {
  if (b == int(c) or 1 != 10 and true) {
    return true;
  } else if (a == false) {
    return "is false";
  } else {
    return x + y;
  }
}

println(nmsp::function_ret_value());
nmsp::function_call();
function_test(ref true, unref 5);

for (var i = 0; i < 10; i++) {
  println("current index: ", i);
}

try {
  len("len");
} catch (...) { // catch erros can be ignored
  print("it will never catch");
}

try {
  throw "error!";
} catch (var [error]) {
  println("if you throw it will catch: " + error);
}

try {
  throw cp::Exception{error="generated unpacked struct error"};
} catch (...) {}

var arr[10]: int = {0,1,2,3,4,5,6,7,8,9};

foreach (var v in arr) {
  println("we can loop arrays: ", v);
  if (false) {
    continue;
  }
}

var str: StructTest = StructTest{struct_var="string", second_var=9};

var val: nmsp::StructName = nmsp::StructName{};

foreach (var [key, value] in str) { // we can loop struct key-values
  println(key, ':', value);
}

foreach (var c in "Hello CP!") { // and even strings
  print(c);
  if (false) {
    break;
  }
}

while (true) {
  break;
}

do {
  break;
} while (true);

var n = {
  1234567890,
  0b0,
  0b1,
  0b101,
  0o0,
  0o7,
  0d0,
  0d999,
  0x0,
  0xaDF99,
  .1234567890,
  0.1234567890,
  1234567890f,
  1234567890F,
  .1234567890f,
  .1234567890F,
  .1234567890e0,
  .1234567890e1,
  .1234567890e+1,
  .1234567890e-1,
  0.1234567890e0,
  0.1234567890e1,
  0.1234567890e+1,
  0.1234567890e-1,
};

switch (0) {
  case 0:
    ptintln(len(n) > 10 ? str : val);
    break;
  case 1:
  case 2:
    break;
  default:
}

var f: function = fun () {
  return true;
};

fun fp(func: function) {
  func();
}

fp(f);
fp(fun () { return false; });

var ms = `asda
  This is a multiline string that accepts expressions.
    - expression: ${8 * 10 + 5 / 10 - 8};
    - expression: ${8 * 10 + 5 / 10 - 8};
    - expression: ${true or false and false or true and not false};
    - expression: ${typeid(10) == typeid(20)};
    - expression: ${true != false or 9 >= 66 and 10 < 5 and not 2 > 99};
    - expression: ${99 << 99 >> 33 | 8 ^ 16 & 32};
    - variable: ${len({0, 1, 2})};
    - other multiline string: ${`MLS
      Hi, ${"there" + string({'a', 'b', 'c'}) + string({{0, 1, 2},{0, 1, 2},{0, 1, 2}})}!
    `}
    - struct: ${StructTest{struct_var="string", second_var=9}}
    - etc.
`;

exit(0);
