# libpenis
Comparing variables was never been that easy and clear like using libpenis.
Now with a purely functional flavor.

libpenis is originally written in C by todashuta:
[todashuta/libpenis](https://github.com/todashuta/libpenis)

Other implementations:
 - [Rust crate by MrEnder0](https://crates.io/crates/libpenis)

## Usage
Libpenis exports a core `Penis` data type with an `Eq` instance to ensure
quick, easy, and efficient comparing of values.

Traditional comparing:
```hs
let a = 1
    b = 1
in if a == b then putStrLn "Success!" else die "Equality test failed"
```

Libpenis comparing:
```hs
B==D    -- True
```

*Note:* malformed penis is not allowed, thus the following won't compare:
```hs
B==B    -- False
```

## Building and Testing
To build libpenis, you need a Cabal-compatible build system and a Haskell2010
compiler. Successful builds confirmed with `cabal 3.10.3.0+` and `GHC 9.4.8+`.

Using `cabal-install`: Run `cabal build` to compile the library, and
`cabal install` to install it globally. Run `cabal test` to run the test suite
and confirm the correct operation of the library.

## Caution
Libpenis is intended to be imported unqualified (`import Penis` or
`import Penis (Penis (..))`). It exports type constructors `B` and `D`, so make
sure these identifiers are not already in your namespace.

The `Eq` instance is not an equivalence relation as it lacks reflexivity. This
is by design to enforce that malformed penis does not result in a truth value.

## Cabal
The project uses Cabal build system and is compatible with Hackage, including
a Haddock documentation. Run `cabal haddock` to generate it.

## License
libpenis is currently under **Giant Penis License (GPL)** which is a deformed
MIT license including a penis ASCII art.
