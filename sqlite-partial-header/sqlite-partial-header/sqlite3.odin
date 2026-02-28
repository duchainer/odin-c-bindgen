package sqlite-partial-header

@(default_calling_convention="c")
foreign lib {
	sqlite3_prepare_v2 :: proc(db: ^i32               /* Database handle */
	, zSql: cstring      /* SQL statement, UTF-8 encoded */
	, nByte: i32             /* Maximum length of zSql in bytes. */
	, ppStmt: ^^i32 /* OUT: Statement handle */
	, pzTail: ^cstring    /* OUT: Pointer to unused portion of zSql */) -> i32 ---
}

