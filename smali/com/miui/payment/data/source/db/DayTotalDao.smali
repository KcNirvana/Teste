.class Lcom/miui/payment/data/source/db/DayTotalDao;
.super Ljava/lang/Object;
.source "DayTotalDao.java"


# static fields
.field private static final COLUMN_AMOUNT_CATEGORY:I = 0x6

.field private static final COLUMN_AMOUNT_TOTAL:I = 0x3

.field private static final COLUMN_AMOUNT_TOTAL_CNY:I = 0x5

.field private static final COLUMN_CURRENCY_CODE:I = 0x4

.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_MONTH_AMOUNT_TOTAL_CNY:I = 0x1

.field private static final COLUMN_MONTH_AMOUNT_TOTAL_DATE:I = 0x0

.field private static final COLUMN_MONTH_DATE:I = 0x2

.field public static final MONTH_AMOUNT_TOTAL_PROJECTIONS:[Ljava/lang/String;

.field private static final PROJECTIONS:[Ljava/lang/String;

.field private static final UPDATE_WHERE:Ljava/lang/String; = "_id=?"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    const-string/jumbo v1, "month_date"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "amount_total"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "currency_code"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "amount_total_CNY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "category"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/payment/data/source/db/DayTotalDao;->PROJECTIONS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "month_date"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sum(amount_total_CNY)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/payment/data/source/db/DayTotalDao;->MONTH_AMOUNT_TOTAL_PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z
    .locals 11

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lcom/miui/payment/data/source/db/DayTotalDao;->updateDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p7

    move-wide/from16 v7, p5

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/miui/payment/data/source/db/DayTotalDao;->insertDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDLjava/lang/String;DI)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createTable(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE day_total(_id INTEGER PRIMARY KEY AUTOINCREMENT, date INTEGER NOT NULL, month_date INTEGER NOT NULL, amount_total REAL NOT NULL, currency_code TEXT NOT NULL DEFAULT \'CNY\', amount_total_CNY REAL NOT NULL, category INTEGER );"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS UNI_DATE_CURRENCY_CATEGORY ON day_total(date,currency_code,category);"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z
    .locals 11

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lcom/miui/payment/data/source/db/DayTotalDao;->updateDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public static dropAllData(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE  IF EXISTS day_total"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/payment/data/source/db/DayTotalDao;->createTable(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-void
.end method

.method private static insertDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDLjava/lang/String;DI)Z
    .locals 13

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->getDayDate(J)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/payment/utils/DateUtil;->getMonthDate(J)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "month_date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "amount_total"

    const-wide/16 v10, 0x0

    move-wide/from16 v0, p3

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v3, "currency_code"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "amount_total_CNY"

    const-wide/16 v10, 0x0

    move-wide/from16 v0, p6

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v3, "category"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "day_total"

    const/4 v10, 0x0

    invoke-virtual {p0, v3, v10, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static loadSingleTransactionsTotal(Landroid/database/Cursor;IZ)Lcom/miui/payment/data/TransactionTotal;
    .locals 24

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    if-nez v20, :cond_2

    :cond_0
    const/4 v15, 0x0

    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v15

    :cond_2
    :try_start_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_a

    sget v20, Lcom/miui/payment/data/TransactionTotal;->TYPE_DAY_TOTAL:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v6, 0x0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :cond_3
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lcom/miui/payment/utils/MathUtil;->add(DD)D

    move-result-wide v6

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Lcom/miui/payment/utils/MathUtil;->add(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz p2, :cond_4

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/miui/payment/utils/MathUtil;->add(DD)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_3

    new-instance v15, Lcom/miui/payment/data/TransactionTotal;

    invoke-direct {v15}, Lcom/miui/payment/data/TransactionTotal;-><init>()V

    invoke-virtual {v15, v12, v13}, Lcom/miui/payment/data/TransactionTotal;->setDate(J)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/miui/payment/data/TransactionTotal;->setTotalType(I)V

    invoke-virtual {v15, v6, v7}, Lcom/miui/payment/data/TransactionTotal;->setAmountCNYTotal(D)V

    invoke-virtual {v15, v11}, Lcom/miui/payment/data/TransactionTotal;->setCurrencyTotal(Ljava/util/Map;)V

    if-eqz p2, :cond_5

    invoke-virtual {v15, v9}, Lcom/miui/payment/data/TransactionTotal;->setCategoryTotal(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_7
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v20

    if-eqz p0, :cond_8

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v20

    :cond_9
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_a
    if-eqz p0, :cond_b

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public static queryAllMonthAmountTotal(Lnet/sqlcipher/database/SQLiteDatabase;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-direct {v1}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;-><init>()V

    const-string/jumbo v8, "month_date"

    invoke-virtual {v1, v8}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->setGroupBy(Ljava/lang/String;)V

    sget-object v8, Lcom/miui/payment/data/source/db/DayTotalDao;->MONTH_AMOUNT_TOTAL_PROJECTIONS:[Ljava/lang/String;

    invoke-static {p0, v8, v1}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    new-instance v6, Lcom/miui/payment/data/TransactionTotal;

    invoke-direct {v6}, Lcom/miui/payment/data/TransactionTotal;-><init>()V

    invoke-virtual {v6, v4, v5}, Lcom/miui/payment/data/TransactionTotal;->setDate(J)V

    invoke-virtual {v6, v2, v3}, Lcom/miui/payment/data/TransactionTotal;->setAmountCNYTotal(D)V

    sget v8, Lcom/miui/payment/data/TransactionTotal;->TYPE_MONTH_TOTAl:I

    invoke-virtual {v6, v8}, Lcom/miui/payment/data/TransactionTotal;->setTotalType(I)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8
.end method

.method public static queryDayAmountTotal(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/miui/payment/data/TransactionTotal;
    .locals 5

    new-instance v0, Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-direct {v0}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->equalToDay(J)Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-static {p0, v0}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v1

    sget v2, Lcom/miui/payment/data/TransactionTotal;->TYPE_DAY_TOTAL:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/payment/data/source/db/DayTotalDao;->loadSingleTransactionsTotal(Landroid/database/Cursor;IZ)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v1

    return-object v1
.end method

.method private static queryDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)Landroid/database/Cursor;
    .locals 3

    new-instance v1, Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-direct {v1}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->equalToDay(J)Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->equalToCurrency(Ljava/lang/String;)Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->equalToCategory(I)Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static queryMonthAmountTotal(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/miui/payment/data/TransactionTotal;
    .locals 5

    new-instance v0, Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-direct {v0}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->equalToMonth(J)Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-static {p0, v0}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v1

    sget v2, Lcom/miui/payment/data/TransactionTotal;->TYPE_MONTH_TOTAl:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/payment/data/source/db/DayTotalDao;->loadSingleTransactionsTotal(Landroid/database/Cursor;IZ)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v1

    return-object v1
.end method

.method public static queryMonthReport(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/miui/payment/data/TransactionTotal;
    .locals 5

    new-instance v0, Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-direct {v0}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->equalToMonth(J)Lcom/miui/payment/data/source/db/TotalQueryBuilder;

    invoke-static {p0, v0}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v1

    sget v2, Lcom/miui/payment/data/TransactionTotal;->TYPE_MONTH_TOTAl:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/payment/data/source/db/DayTotalDao;->loadSingleTransactionsTotal(Landroid/database/Cursor;IZ)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v1

    return-object v1
.end method

.method private static queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;
    .locals 1

    sget-object v0, Lcom/miui/payment/data/source/db/DayTotalDao;->PROJECTIONS:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static queryTransactionTotals(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Lcom/miui/payment/data/source/db/QueryBuilder;)Landroid/database/Cursor;
    .locals 10

    const/4 v4, 0x0

    const-string/jumbo v9, "date DESC "

    new-instance v0, Lnet/sqlcipher/database/SQLiteQueryBuilder;

    invoke-direct {v0}, Lnet/sqlcipher/database/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo v1, "day_total"

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/payment/data/source/db/QueryBuilder;->buildQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/miui/payment/data/source/db/QueryBuilder;->getGroupBy()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC "

    invoke-virtual {p2}, Lcom/miui/payment/data/source/db/QueryBuilder;->getLimitAndOffset()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->query(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private static updateDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDD)Z
    .locals 7

    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, p5, v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "amount_total"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v2, "amount_total_CNY"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v2, "day_total"

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v0, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const-string/jumbo v2, "day_total"

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static updateDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;IZ)Z
    .locals 11

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    if-eqz p9, :cond_4

    invoke-static {v6, v7, p3, p4}, Lcom/miui/payment/utils/MathUtil;->add(DD)D

    move-result-wide v6

    move-wide/from16 v0, p5

    invoke-static {v8, v9, v0, v1}, Lcom/miui/payment/utils/MathUtil;->add(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/miui/payment/data/source/db/DayTotalDao;->updateDayStatement(Lnet/sqlcipher/database/SQLiteDatabase;JDD)Z

    move-result v3

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {v6, v7, p3, p4}, Lcom/miui/payment/utils/MathUtil;->subtract(DD)D

    move-result-wide v6

    move-wide/from16 v0, p5

    invoke-static {v8, v9, v0, v1}, Lcom/miui/payment/utils/MathUtil;->subtract(DD)D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method public static updateDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;II)Z
    .locals 13

    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-static/range {p0 .. p8}, Lcom/miui/payment/data/source/db/DayTotalDao;->deleteDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p9

    invoke-static/range {v3 .. v11}, Lcom/miui/payment/data/source/db/DayTotalDao;->addDayTotalWithoutDbTransaction(Lnet/sqlcipher/database/SQLiteDatabase;JDDLjava/lang/String;I)Z

    const/4 v2, 0x1

    goto :goto_0
.end method
