.class public Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "PaymentDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/data/source/db/PaymentDatabaseHelper$OldTables;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "payment.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PaymentDatabaseHelper"

.field private static sSingleton:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->sSingleton:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createAllTables(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/payment/data/source/db/DayTotalDao;->createTable(Lnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->createTable(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-void
.end method

.method private dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;
    .locals 3

    const-class v1, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->sSingleton:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    const-string/jumbo v2, "payment.db"

    invoke-direct {v0, p0, v2}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->sSingleton:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->sSingleton:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private migrateDataFromVersion1(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 17

    const-string/jumbo v13, "PAYMENT_RECORD"

    const-string/jumbo v12, "PAYMENT_METHOD"

    new-instance v2, Lnet/sqlcipher/database/SQLiteQueryBuilder;

    invoke-direct {v2}, Lnet/sqlcipher/database/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo v3, "PAYMENT_RECORD LEFT OUTER JOIN PAYMENT_METHOD ON PAYMENT_RECORD.PAYMENT_METHOD_ID=PAYMENT_METHOD._id"

    invoke-virtual {v2, v3}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v14, " IS_DELETE=0 "

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, " IS_DELETE=0 "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->query(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    if-nez v10, :cond_1

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v15, Lcom/miui/payment/data/TransactionItem;

    invoke-direct {v15}, Lcom/miui/payment/data/TransactionItem;-><init>()V

    const-string/jumbo v3, "AMOUNT"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lcom/miui/payment/data/TransactionItem;->setAmount(D)V

    const-string/jumbo v3, "CURRENCY_CODE"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/miui/payment/data/TransactionItem;->setCurrencyCode(Ljava/lang/String;)V

    const-string/jumbo v3, "PAYMENT_CATEGORY_CODE"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/miui/payment/data/TransactionItem;->setCategory(I)V

    const-string/jumbo v3, "PAYMENT_TIME"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lcom/miui/payment/data/TransactionItem;->setTransactionTime(J)V

    const-string/jumbo v3, "COMMENT"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/miui/payment/data/TransactionItem;->setComment(Ljava/lang/String;)V

    const-string/jumbo v3, "SOURCE"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/miui/payment/data/TransactionItem;->setCreateSource(I)V

    const-string/jumbo v3, "CODE"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/miui/payment/data/TransactionItem;->setMethod(I)V

    const-string/jumbo v3, "DESC"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/miui/payment/data/TransactionItem;->setMethodDesc(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/payment/data/TransactionItem;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/miui/payment/data/source/db/TransactionsDao;->saveTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/TransactionItem;)J

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method private upgradeToVersion2(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->createAllTables(Lnet/sqlcipher/database/SQLiteDatabase;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->migrateDataFromVersion1(Lnet/sqlcipher/database/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "PAYMENT_RECORD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v1, "PAYMENT_METHOD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v1, "MONTH_TOTAL_RECORD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v1, "MONTH_RECORD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v1, "MONTH_CATEGORY_RECORD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v1, "DAY_TOTAL_RECORD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    const-string/jumbo v1, "DAY_RECORD"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropTable(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaymentDatabaseHelper"

    const-string/jumbo v2, "migrateDataFromVersion1 failed"

    invoke-static {v1, v0, v2}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion5(Lnet/sqlcipher/database/SQLiteDatabase;)Z
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v9, "transactions_temp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ALTER TABLE transactions RENAME TO "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/payment/data/source/db/DayTotalDao;->dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "select * from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {p1, v8, v12}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v4, Lcom/miui/payment/data/TransactionItem;

    invoke-direct {v4}, Lcom/miui/payment/data/TransactionItem;-><init>()V

    const-string/jumbo v12, "amount"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/miui/payment/data/TransactionItem;->setAmount(D)V

    const-string/jumbo v12, "amount"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/miui/payment/data/TransactionItem;->setAmountEdit(D)V

    const-string/jumbo v12, "currency_code"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setCurrencyCode(Ljava/lang/String;)V

    const-string/jumbo v12, "category"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setCategory(I)V

    const-string/jumbo v12, "category"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setCategoryEdit(I)V

    const-string/jumbo v12, "comment"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setComment(Ljava/lang/String;)V

    const-string/jumbo v12, "method_code"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setMethod(I)V

    const-string/jumbo v12, "method_code"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setMethodEdit(I)V

    const-string/jumbo v12, "method_desc"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setMethodDesc(Ljava/lang/String;)V

    const-string/jumbo v12, "transaction_time"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/miui/payment/data/TransactionItem;->setTransactionTime(J)V

    const-string/jumbo v12, "transaction_time_edit"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/miui/payment/data/TransactionItem;->setTransactionTimeEdit(J)V

    :goto_0
    const-string/jumbo v12, "transaction_type"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setTransactionType(I)V

    const-string/jumbo v12, "transaction_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setTransactionId(Ljava/lang/String;)V

    const-string/jumbo v12, "create_source"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setCreateSource(I)V

    const-string/jumbo v12, "deleted"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_4

    move v12, v10

    :goto_1
    invoke-virtual {v4, v12}, Lcom/miui/payment/data/TransactionItem;->setDeleted(Z)V

    const-string/jumbo v12, "deleted_time"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/miui/payment/data/TransactionItem;->setDeletedTime(J)V

    invoke-static {p1, v4}, Lcom/miui/payment/data/source/db/TransactionsDao;->saveTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/TransactionItem;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gtz v12, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    move v10, v11

    :goto_2
    return v10

    :cond_2
    :try_start_1
    const-string/jumbo v12, "transaction_time"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/miui/payment/data/TransactionItem;->setTransactionTimeEdit(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v10, "PaymentDatabaseHelper"

    const-string/jumbo v12, "upgradeToVersion5(add new column) failed"

    invoke-static {v10, v2, v12}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    move v10, v11

    goto :goto_2

    :cond_4
    move v12, v11

    goto :goto_1

    :cond_5
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DROP TABLE  IF EXISTS "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v10

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v10
.end method


# virtual methods
.method public dropDBData()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/payment/PaymentPrefs;->getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/miui/payment/data/source/db/DayTotalDao;->dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/miui/payment/data/source/db/TransactionsDao;->dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "dropDBData"

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public encryptOldData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v10, "payment.db"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v10, "sql"

    const-string/jumbo v11, ".db"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-static {v10, v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-nez v8, :cond_0

    const-string/jumbo v10, "PaymentDatabaseHelper"

    const-string/jumbo v11, "create temp database failed"

    invoke-static {v10, v11}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_1
    return v10

    :catch_0
    move-exception v3

    const-string/jumbo v10, "PaymentDatabaseHelper"

    const/4 v11, 0x0

    invoke-static {v10, v3, v11}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v10, v0, v11, v12}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v10, "ATTACH DATABASE \'%s\' AS encrypted KEY \'%s\';"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    const-string/jumbo v10, "SELECT sqlcipher_export(\'encrypted\')"

    invoke-virtual {v2, v10}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    const-string/jumbo v10, "DETACH DATABASE encrypted;"

    invoke-virtual {v2, v10}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v9

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v10, v0, v11, v12}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v9}, Lnet/sqlcipher/database/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    const-string/jumbo v10, "PaymentDatabaseHelper"

    const-string/jumbo v11, "encrypt database %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const-string/jumbo v10, "encrypt database"

    invoke-static {v10, v6, v7}, Lcom/miui/payment/log/Logger;->pref(Ljava/lang/String;J)V

    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v10, "PaymentDatabaseHelper"

    const-string/jumbo v11, "encrypt database failed"

    invoke-static {v10, v3, v11}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->createAllTables(Lnet/sqlcipher/database/SQLiteDatabase;)V

    const-string/jumbo v2, "PaymentDatabaseHelper onCreate "

    invoke-static {v2, v0, v1}, Lcom/miui/payment/log/Logger;->pref(Ljava/lang/String;J)V

    return-void
.end method

.method public onDowngrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 5

    const-string/jumbo v0, "PaymentDatabaseHelper"

    const-string/jumbo v1, "start downgrade from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 8

    const/4 v7, 0x2

    const-string/jumbo v2, "PaymentDatabaseHelper"

    const-string/jumbo v3, "start upgrade from %s to %s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-ge p2, v7, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->upgradeToVersion2(Lnet/sqlcipher/database/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 v2, 0x5

    if-ge p2, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->upgradeToVersion5(Lnet/sqlcipher/database/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x5

    :cond_1
    if-ge p2, p3, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error upgrading the database to version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v2, "PaymentDatabaseHelper onUpgrade "

    invoke-static {v2, v0, v1}, Lcom/miui/payment/log/Logger;->pref(Ljava/lang/String;J)V

    return-void
.end method
