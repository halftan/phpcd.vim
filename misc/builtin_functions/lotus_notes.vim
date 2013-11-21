call extend(g:php_builtin_functions, {
\ 'notes_body(': 'string $server, string $mailbox, int $msg_number | array',
\ 'notes_copy_db(': 'string $from_database_name, string $to_database_name | bool',
\ 'notes_create_db(': 'string $database_name | bool',
\ 'notes_create_note(': 'string $database_name, string $form_name | bool',
\ 'notes_drop_db(': 'string $database_name | bool',
\ 'notes_find_note(': 'string $database_name, string $name [, string $type] | int',
\ 'notes_header_info(': 'string $server, string $mailbox, int $msg_number | object',
\ 'notes_list_msgs(': 'string $db | bool',
\ 'notes_mark_read(': 'string $database_name, string $user_name, string $note_id | bool',
\ 'notes_mark_unread(': 'string $database_name, string $user_name, string $note_id | bool',
\ 'notes_nav_create(': 'string $database_name, string $name | bool',
\ 'notes_search(': 'string $database_name, string $keywords | array',
\ 'notes_unread(': 'string $database_name, string $user_name | array',
\ 'notes_version(': 'string $database_name | float',
\ })