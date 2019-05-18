module.exports = {
    "up": "CREATE TABLE `joh_classificacao` ( \
    `joh_id` \
    int(11) NOT NULL, \
    `joh_name` \
    varchar(255) NOT NULL, \
    PRIMARY KEY(`joh_id`) \
) ENGINE = InnoDB DEFAULT CHARSET = latin1;",
    "down": "DROP TABLE joh_classificacao;"
}