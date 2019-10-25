namespace Nuxed\Json;

/**
 * Decode a json encoded string into a dynamic variable.
 */
function decode(string $json, bool $assoc = true): dynamic {
  try {
    $value = \json_decode(
      $json,
      $assoc,
      512,
      \JSON_BIGINT_AS_STRING | \JSON_FB_HACK_ARRAYS,
    );
  } catch (\Throwable $e) {
    // assoc = true & invalid property name results in `\Error`
    // we catch `\Throwable` to be safe, in case hhvm decided to change the error
    // to an exception in the future.
    throw new Exception\JsonDecodeException(
      $e->getMessage(),
      (int)$e->getCode(),
    );
  }

  $error = \json_last_error();
  if (\JSON_ERROR_NONE !== $error) {
    throw new Exception\JsonDecodeException(Errors[$error], $error);
  }

  return $value;
}
