<p align="center"><img src="https://avatars3.githubusercontent.com/u/45311177?s=200&v=4"></p>

<p align="center">
<a href="https://travis-ci.org/nuxed/json"><img src="https://travis-ci.org/nuxed/json.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/nuxed/json"><img src="https://poser.pugx.org/nuxed/json/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/nuxed/json"><img src="https://poser.pugx.org/nuxed/json/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/nuxed/json"><img src="https://poser.pugx.org/nuxed/json/license.svg" alt="License"></a>
</p>

# Nuxed Json
 
Nuxed Json provides functions that help you encode, and decode json structures safely.

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
async function main(): void {
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

For information on reporting security vulnerabilities in Nuxed Json, see [SECURITY.md](SECURITY.md).

---

### License

The Nuxed Json library is open-sourced software licensed under the MIT-licensed.
