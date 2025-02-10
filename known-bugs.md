# Known Bugs

## Bugs
- [X] It's recognizing variable after `:` ternary as class eg `true ? var1 : var2`
- [X] It's not recognizing dotted libs eg `using flx.core.console;`
- [X] It's not recognizing struct name `var ex: flx::Exception`
- [X] It's not recognizing namespaces
    - [X] `throw flx::Exception{error="generated unpacked struct error"};`
    - [X] `var file2: flx::File = flx::File{};`
    - [X] `flx::close(file2);`
## Changes
- [X] Not colour dot in lib sep `using flx.core.console;`
