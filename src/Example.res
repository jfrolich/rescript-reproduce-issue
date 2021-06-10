// This open statement causes the following error:
// >>>> Start compiling
// rescript: [1/1] src/Example.cmj
// FAILED: src/Example.cmj
//
//   We've found a bug for you!
//   /home/user/src/rescript-reproduce-issue/src/Example.res:3:20-46
//
//   1 │ open ReScriptJs
//   2 │
//   3 │ @obj external foo: (~bar: string=?, unit) => _ = ""
//   4 │
//
//   This type constructor, `Js.undefined`, can't be found.
//   If you wanted to write a recursive type, don't forget the `rec` in `type rec`
//
// FAILED: cannot make progress due to previous errors.
// >>>> Finish compiling(exit: 1)
open ReScriptJs

@obj external foo: (~bar: string=?, unit) => _ = ""
