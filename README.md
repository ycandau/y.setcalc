# y.setcalc

>  A Max external to perform musical set theory calculations.

The external extends the similar object by Matthew McCabe, allowing in particular to choose between Forte and Rahn prime forms, processing sets of any length, and is available in 32-bit and 64-bit versions for Windows and Mac.

## Installing

The repository is structured as a [Max package](https://docs.cycling74.com/max7/vignettes/packages). To use the external in Max, simply copy the repository into one of the two possible Max package folders. With Max 7, these would be:

- `Max 7/Packages` in your Documents (Mac) or My Documents (Windows) folder, or
- `Max 7/Packages` in your `/Users/Shared` (Mac) or `C:\ProgramData` (Windows) folder

## Compiling

While compiled externals are available in the package, you can also recompile them using Xcode on Mac, or Visual Studio on Windows. You will need a current version of the [Max SDK](https://cycling74.com/downloads/sdk). The externals are built in [externals/](externals/).

### XCode

See the xcode project in [build/osx-xcode/](build/osx-xcode/).

### Visual Studio

See the Visual Studio project and solution in [build/win-vs/](build/win-vs/).
The Max SDK should be placed in the same parent folder as the repository:

```
Packages ──┬── max-sdk
           └── y.setcalc
```

For a different folder structure, change the macro that indicates the path to the Max SDK in [max_extern_common.props](build/win-vs/max_extern_common.props), which is currently set to:

```
<C74_SDK>$(ProjectDir)..\..\..\max-sdk\</C74_SDK>
```

## Usage in Max

### Inlets

0. A list of pitch values: integers from 0 to 11

### Outlets

0. The **Forte number** for the set.
1. The **interval class vector**: a 6-member tally of the interval classes between distinct elements of a set.
2. The **prime form** for the set (same length as sorted set). Depending on the attribute `prime_type`, the prime form is determined by the Rahn algorithm or the Forte algorithm (i.e. left packing from right to left or left to right).
3. The **normal form** for the set (same length as sorted set).
4. The input set, sorted and with duplicates removed.
5. The **complementary set** (length is 12 minus the sorted set length).

### Arguments

None

### Attributes

- **prime_type**: choose between Forte or Rahn prime forms
- **verbose**: report warnings on invalid input or not

### Messages

Integers or lists with pitch values clipped between 0 and 11

### Notes

Invalid input values are simply dropped with an optional warning

### Links

- [http://www.jaytomlin.com/music/settheory/help.html](http://www.jaytomlin.com/music/settheory/help.html)

### Changes from the original setcalc

- Choose between Forte or Rahn prime forms
- The external can process sets of any length (not just 3 to 9)
- 32-bit and 64-bit support
- Optional warnings on invalid inputs

## Author

Yves Candau <ycandau@gmail.com>

## License

This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, you can obtain one at [http://mozilla.org/MPL/2.0/](http://mozilla.org/MPL/2.0/).
