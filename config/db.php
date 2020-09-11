<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => getenv('DEV_MASTER_DSN') ?: 'mysql:host=192.168.166.22;dbname=yii',
    'username' => getenv('DEV_MASTER_MYSQL_USER') ?: 'root',
    'password' => getenv('DEV_MASTER_MYSQL_PASSWD') ?: '123456',
    'charset' => 'utf8',

    // Schema cache options (for production environment)
    //'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',
];
