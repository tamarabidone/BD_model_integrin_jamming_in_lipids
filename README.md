## Contact

* Tomasz Skóra [tskora@sci.utah.edu](mailto:tskora@sci.utah.edu)

* Tamara Bidone [tamarabidone@sci.utah.edu](mailto:tamarabidone@sci.utah.edu)

## Quick start

To download ``pyBrown`` package for Brownian dynamics simulations, visit [here](https://github.com/tskora/pyBrown) (you can find its documentation [here](https://tskora.github.io/pyBrown)).

To install ``pyBrown``:
1. *Configuration.* Type:
```shell
$ ./configure --prefix=DIR --with-lapack=LAPACK_LIBS
```
where ``DIR`` is the installation directory (``/usr/local/`` by default) and ``LAPACK_LIBS`` is lapack libraries to use (e.g., ``--with-lapack="-llapack"``).

2. *Compilation.* Type:
```shell
$ make
```

3. *Installation.* Type:
```shell
$ make install
```

4. *Testing.* Type:
```shell
$ cd src/bdsim/tests/
$ make test
```

## Simulations

## Analysis

## Units

| Physical property | Units |
|---|---|
| Temperature | kelvin (*K*) |
| Viscosity | poise (*P*) |
| Time | picosecond (*ps*) |
| Distance | angstrom (*Å*) |
| Energy (decided in input file) | kilocalorie per mol per angstrom squared (*kcal/mol/Å^2*) |

