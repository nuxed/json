namespace Nuxed\Json;

/**
 * Decode a json encoded string into a dynamic variable.
 */
function encode(mixed $value, bool $pretty = false, int $flags = 0): string {
  $flags |= \JSON_UNESCAPED_UNICODE |
    \JSON_UNESCAPED_SLASHES |
    \JSON_PRESERVE_ZERO_FRACTION;
  if ($pretty) {
    $flags |= \JSON_PRETTY_PRINT;
  }

  $json = \json_encode($value, $flags);
  $error = \json_last_error();
  if (\JSON_ERROR_NONE !== $error) {
    throw new Exception\JsonEncodeException(Errors[$error], $error);
  }

  return $json;
}
