# VSCode Synthax Highlight

## Build
- Insatall vsce
```
npm i -g vsce
```
- Generate package
```
vsce package
```

## Known Bugs
- [ ] It's recognizing variable after `:` ternary as class eg `true ? var1 : var2`
- [X] It's not recognizing dotted libs eg `using cp.core.console;`
- [X] It's not recognizing struct name `var ex: cp::Exception`
- [X] It's not recognizing namespaces
    - [X] `throw cp::Exception{error="generated unpacked struct error"};`
    - [X] `var file2: cp::File = cp::File{};`
    - [X] `cp::close(file2);`
