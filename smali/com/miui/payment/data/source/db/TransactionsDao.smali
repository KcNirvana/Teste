.class Lcom/miui/payment/data/source/db/TransactionsDao;
.super Ljava/lang/Object;
.source "TransactionsDao.java"


# static fields
.field private static final COLUMN_AMOUNT:I = 0x1

.field private static final COLUMN_AMOUNT_CNY:I = 0x4

.field private static final COLUMN_AMOUNT_EDIT:I = 0x2

.field private static final COLUMN_CATEGORY:I = 0x5

.field private static final COLUMN_CATEGORY_EDIT:I = 0x6

.field private static final COLUMN_COMMENT:I = 0xa

.field private static final COLUMN_CREATE_SOURCE:I = 0xe

.field private static final COLUMN_CURRENCY_CODE:I = 0x3

.field private static final COLUMN_DELETED:I = 0x10

.field private static final COLUMN_DELETED_TIME:I = 0x11

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD_CODE:I = 0x7

.field private static final COLUMN_METHOD_CODE_EDIT:I = 0x8

.field private static final COLUMN_METHOD_DESC:I = 0x9

.field private static final COLUMN_TRANSACTION_ID:I = 0xf

.field private static final COLUMN_TRANSACTION_TIME:I = 0xb

.field private static final COLUMN_TRANSACTION_TIME_EDIT:I = 0xc

.field private static final COLUMN_TRANSACTION_TYPE:I = 0xd

.field private static final DELETE_TRANSACTIONS:Ljava/lang/String; = "_id=?"

.field private static final TAG:Ljava/lang/String; = "TransactionsDao"

.field private static final TRANSACTIONS_PROJECTION:[Ljava/lang/String;

.field private static final UPDATE_SINGLE_TRANSACTION:Ljava/lang/String; = "_id=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "amount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "amount_edit"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "currency_code"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "amount_CNY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "category_edit"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "method_code"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "methode_code_edit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "method_desc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "transaction_time"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "transaction_time_edit"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "transaction_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "create_source"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "deleted_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/payment/data/source/db/TransactionsDao;->TRANSACTIONS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCategory(I)I
    .locals 0

    return p0
.end method

.method private static checkCreateSource(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static checkMethodCode(I)I
    .locals 0

    return p0
.end method

.method private static checkTransactionTime(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method private static checkTransactionType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createTable(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE transactions(_id INTEGER PRIMARY KEY AUTOINCREMENT, amount REAL NOT NULL, amount_edit REAL NOT NULL, formatted_amount TEXT NOT NULL, currency_code TEXT, amount_CNY REAL NOT NULL, category INTEGER, category_edit INTEGER, method_code INTEGER NOT NULL, methode_code_edit INTEGER NOT NULL, method_desc TEXT, comment TEXT, transaction_time INTEGER, transaction_time_edit INTEGER, transaction_id TEXT, transaction_type INTEGER NOT NULL DEFAULT 0, deleted INTEGER NOT NULL DEFAULT 0, deleted_time INTEGER, create_source INTEGER, create_time INTEGER NOT NULL, update_time INTEGER NOT NULL, raw_data TEXT );"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAllTransactions(Lnet/sqlcipher/database/SQLiteDatabase;)I
    .locals 6

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "deleted_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "transactions"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Lcom/miui/payment/data/source/db/DayTotalDao;->dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    return v1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static deleteTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)I
    .locals 19

    const-wide/16 v14, 0x0

    cmp-long v3, p1, v14

    if-gtz v3, :cond_1

    const/4 v13, -0x1

    :cond_0
    :goto_0
    return v13

    :cond_1
    const/4 v13, -0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-static/range {p0 .. p2}, Lcom/miui/payment/data/source/db/TransactionsDao;->queryTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x6

    :try_start_2
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v3, 0xc

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v11}, Lcom/miui/payment/data/source/db/DayTotalDao;->deleteDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "deleted"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "deleted_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "transactions"

    const-string/jumbo v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v14, v15}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public static deleteTransactionsItems(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/miui/payment/data/source/db/TransactionsDao;->deleteTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_2
    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public static dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE  IF EXISTS transactions"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/payment/data/source/db/TransactionsDao;->createTable(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-void
.end method

.method private static insertTransactions(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 14

    const/4 v0, 0x1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "transactions"

    const/4 v12, 0x0

    invoke-virtual {p0, v1, v12, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_0

    const-string/jumbo v1, "transaction_time_edit"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v1, "amount_edit"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string/jumbo v1, "currency_code"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "amount_CNY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string/jumbo v1, "category_edit"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/payment/data/source/db/DayTotalDao;->addDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    return-wide v10

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static loadCurrentTransactionsItem(Landroid/database/Cursor;)Lcom/miui/payment/data/TransactionItem;
    .locals 27

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v3, 0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0xf

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x11

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    new-instance v3, Lcom/miui/payment/data/TransactionItem;

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_0

    const/16 v24, 0x1

    :goto_0
    invoke-direct/range {v3 .. v26}, Lcom/miui/payment/data/TransactionItem;-><init>(JDDLjava/lang/String;IIIILjava/lang/String;JJILjava/lang/String;Ljava/lang/String;IZJ)V

    return-object v3

    :cond_0
    const/16 v24, 0x0

    goto :goto_0
.end method

.method private static loadTransactionsItems(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-static {p0}, Lcom/miui/payment/data/source/db/TransactionsDao;->loadCurrentTransactionsItem(Landroid/database/Cursor;)Lcom/miui/payment/data/TransactionItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method private static queryTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 3

    new-instance v1, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    invoke-direct {v1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->equalToId(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/payment/data/source/db/TransactionsDao;->queryTransactionsItemInternal(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static queryTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Lcom/miui/payment/data/source/db/QueryBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->queryTransactionsItemInternal(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/data/source/db/TransactionsDao;->loadTransactionsItems(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method private static queryTransactionsItemInternal(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;
    .locals 10

    const/4 v4, 0x0

    const-string/jumbo v9, "transaction_time_edit DESC "

    new-instance v0, Lnet/sqlcipher/database/SQLiteQueryBuilder;

    invoke-direct {v0}, Lnet/sqlcipher/database/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo v1, "transactions"

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/payment/data/source/db/TransactionsDao;->TRANSACTIONS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/payment/data/source/db/QueryBuilder;->buildQuery()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "transaction_time_edit DESC "

    invoke-virtual {p1}, Lcom/miui/payment/data/source/db/QueryBuilder;->getLimitAndOffset()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->query(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static saveTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;DDLjava/lang/String;IILjava/lang/String;IILjava/lang/String;JJILjava/lang/String;IZJ)J
    .locals 10

    invoke-static {p1, p2}, Lcom/miui/payment/data/source/db/TransactionsDao;->validAmount(D)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p3, p4}, Lcom/miui/payment/data/source/db/TransactionsDao;->validAmount(D)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string/jumbo v8, "TransactionsDao"

    const-string/jumbo v9, "invalid amount"

    invoke-static {v8, v9}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    :goto_0
    return-wide v8

    :cond_1
    invoke-static {p1, p2}, Lcom/miui/payment/utils/NumberFormatUtil;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v5

    move-wide v2, p3

    invoke-static/range {p6 .. p6}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkCategory(I)I

    move-result p6

    invoke-static/range {p6 .. p6}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkCategory(I)I

    move-result p7

    invoke-static/range {p9 .. p9}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkMethodCode(I)I

    move-result p9

    invoke-static/range {p10 .. p10}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkMethodCode(I)I

    move-result p10

    invoke-static/range {p12 .. p13}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkTransactionTime(J)J

    move-result-wide p12

    invoke-static/range {p14 .. p15}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkTransactionTime(J)J

    move-result-wide p14

    invoke-static/range {p16 .. p16}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkTransactionType(I)I

    move-result p16

    invoke-static/range {p18 .. p18}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkCreateSource(I)I

    move-result p18

    invoke-static/range {p20 .. p21}, Lcom/miui/payment/data/source/db/TransactionsDao;->checkTransactionTime(J)J

    move-result-wide p20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "amount"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v8, "amount_edit"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v8, "formatted_amount"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "currency_code"

    invoke-virtual {v4, v8, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "amount_CNY"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v8, "category"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "category_edit"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "method_code"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "methode_code_edit"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "method_desc"

    move-object/from16 v0, p11

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "comment"

    move-object/from16 v0, p8

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "transaction_time"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "transaction_time_edit"

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "transaction_type"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "transaction_id"

    move-object/from16 v0, p17

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "create_source"

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "create_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "update_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "deleted"

    if-eqz p19, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "deleted_time"

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0, v4}, Lcom/miui/payment/data/source/db/TransactionsDao;->insertTransactions(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v8

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static saveTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/TransactionItem;)J
    .locals 22

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getAmount()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getAmountEdit()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getCategoryCode()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getCategoryEditCode()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getMethodCode()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getMethodEditCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getMethodDesc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTimeEdit()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionType()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getCreateSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->isDeleted()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/data/TransactionItem;->getDeletedTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v21}, Lcom/miui/payment/data/source/db/TransactionsDao;->saveTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;DDLjava/lang/String;IILjava/lang/String;IILjava/lang/String;JJILjava/lang/String;IZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static updateTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;JILjava/lang/String;)I
    .locals 19

    const-wide/16 v16, 0x0

    cmp-long v3, p1, v16

    if-gtz v3, :cond_1

    const/4 v14, -0x1

    :cond_0
    :goto_0
    return v14

    :cond_1
    const/4 v14, -0x1

    const/4 v13, 0x0

    :try_start_0
    invoke-static/range {p0 .. p2}, Lcom/miui/payment/data/source/db/TransactionsDao;->queryTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    :try_start_1
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "comment"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "category"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "transactions"

    const-string/jumbo v12, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v12, v15}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    move/from16 v0, p3

    if-eq v11, v0, :cond_4

    const/16 v3, 0xc

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    move/from16 v12, p3

    invoke-static/range {v3 .. v12}, Lcom/miui/payment/data/source/db/DayTotalDao;->updateDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;II)Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method public static updateTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/ui/edit/EditData;)I
    .locals 23

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getRecordId()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-gtz v3, :cond_1

    const/16 v22, -0x1

    :cond_0
    :goto_0
    return v22

    :cond_1
    const/16 v22, -0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getRecordId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/miui/payment/data/source/db/TransactionsDao;->queryTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    :try_start_1
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0xc

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "amount_edit"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v3, "amount_CNY"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v3, "currency_code"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "category_edit"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getCategoryCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "transaction_time_edit"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getEditTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "methode_code_edit"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getMethodCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "method_desc"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getMethodDesc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "comment"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getComment()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "transactions"

    const-string/jumbo v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getRecordId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v13, v14}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v11}, Lcom/miui/payment/data/source/db/DayTotalDao;->deleteDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getEditTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/miui/payment/ui/edit/EditData;->getCategoryCode()I

    move-result v21

    move-object/from16 v13, p0

    invoke-static/range {v13 .. v21}, Lcom/miui/payment/data/source/db/DayTotalDao;->addDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private static validAmount(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
