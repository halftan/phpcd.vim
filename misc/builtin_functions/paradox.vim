call extend(g:php_builtin_functions, {
\ 'px_close(': 'resource $pxdoc | bool',
\ 'px_create_fp(': 'resource $pxdoc, resource $file, array $fielddesc | bool',
\ 'px_date2string(': 'resource $pxdoc, int $value, string $format | string',
\ 'px_delete_record(': 'resource $pxdoc, int $num | bool',
\ 'px_delete(': 'resource $pxdoc | bool',
\ 'px_get_field(': 'resource $pxdoc, int $fieldno | array',
\ 'px_get_info(': 'resource $pxdoc | array',
\ 'px_get_parameter(': 'resource $pxdoc, string $name | string',
\ 'px_get_record(': 'resource $pxdoc, int $num [, int $mode = 0] | array',
\ 'px_get_schema(': 'resource $pxdoc [, int $mode = 0] | array',
\ 'px_get_value(': 'resource $pxdoc, string $name | float',
\ 'px_insert_record(': 'resource $pxdoc, array $data | int',
\ 'px_new(': 'void | resource',
\ 'px_numfields(': 'resource $pxdoc | int',
\ 'px_numrecords(': 'resource $pxdoc | int',
\ 'px_open_fp(': 'resource $pxdoc, resource $file | bool',
\ 'px_put_record(': 'resource $pxdoc, array $record [, int $recpos = -1] | bool',
\ 'px_retrieve_record(': 'resource $pxdoc, int $num [, int $mode = 0] | array',
\ 'px_set_blob_file(': 'resource $pxdoc, string $filename | bool',
\ 'px_set_parameter(': 'resource $pxdoc, string $name, string $value | bool',
\ 'px_set_tablename(': 'resource $pxdoc, string $name | void',
\ 'px_set_targetencoding(': 'resource $pxdoc, string $encoding | bool',
\ 'px_set_value(': 'resource $pxdoc, string $name, float $value | bool',
\ 'px_timestamp2string(': 'resource $pxdoc, float $value, string $format | string',
\ 'px_update_record(': 'resource $pxdoc, array $data, int $num | bool',
\ })