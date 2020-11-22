<p align="center"><img src="https://avatars3.githubusercontent.com/u/45311177?s=200&v=4"></p>

![Coding standards status](https://github.com/nuxed/json/workflows/coding%20standards/badge.svg?branch=develop)
![Static analysis status](https://github.com/nuxed/json/workflows/static%20analysis/badge.svg?branch=develop)
![Unit tests status](https://github.com/nuxed/json/workflows/unit%20tests/badge.svg?branch=develop)
[![Total Downloads](https://poser.pugx.org/nuxed/json/d/total.svg)](https://packagist.org/packages/nuxed/json)
[![Latest Stable Version](https://poser.pugx.org/nuxed/json/v/stable.svg)](https://packagist.org/packages/nuxed/json)
[![License](https://poser.pugx.org/nuxed/json/license.svg)](https://packagist.org/packages/nuxed/json)

# Nuxed Json
 
The Nuxed Json component provides functions that help you encode, and decode json structures safely.

### Installation

This package can be installed with [Composer](https://getcomposer.org).

```console
$ composer require nuxed/json
```

### Example

```hack
use namespace Nuxed\Json;
use namespace Facebook\TypeSpec;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $data = Json\encode(dict[
    'foo' => 5,
    'bar' => 6
  ]);

  // $decoded is dict<string, int>
  $decoded = Json\spec($data, TypeSpec\dict(
    TypeSpec\string(), TypeSpec\int();
  ));
}
```

---

### Security

For information on reporting security vulnerabilities in Nuxed, see [SECURITY.md](SECURITY.md).

---

### License

Nuxed is open-sourced software licensed under the MIT-licensed.
