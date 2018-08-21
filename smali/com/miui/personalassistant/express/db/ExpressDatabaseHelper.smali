.class public Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ExpressDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "express.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExpressDatabaseHelper"

.field private static sSingleton:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->sSingleton:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "express.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->importCacheData(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->importBindedPhone()V

    return-void
.end method

.method private createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->createTableCache(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v2, "ExpressDatabaseHelper"

    const-string/jumbo v3, "onCreate: create table cost %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createTableCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE cache (cache_key TEXT PRIMARY KEY, content TEXT NOT NULL, account_id TEXT, remark TEXT,etag TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createTableRegion(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE IF EXISTS region"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE region ( _id INTEGER PRIMARY KEY, name TEXT NOT NULL, parent INTEGER, postal_code TEXT, type INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS region_id_index ON region (_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;
    .locals 2

    const-class v1, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->sSingleton:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->sSingleton:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->sSingleton:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private importBindedPhone()V
    .locals 16

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "content://miui.yellowpage.invocation/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v9, "requestBindedPhone"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v9, "phone"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v1}, Lcom/miui/personalassistant/express/Preferences;->setBindedPhones(Landroid/content/Context;Ljava/util/List;)V

    const-string/jumbo v9, "ExpressDatabaseHelper"

    const-string/jumbo v10, "importBindedPhone: success"

    invoke-static {v9, v10}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v9, "ExpressDatabaseHelper"

    const-string/jumbo v10, "import BindedPhone, cost %s ms"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v9, "ExpressDatabaseHelper"

    const-string/jumbo v10, "importBindedPhone: "

    invoke-static {v9, v10, v5}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private importCacheData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "cache_key LIKE ? OR cache_key LIKE ?"

    sget-object v1, Lcom/miui/personalassistant/express/Constants$Cache;->SOURCE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/personalassistant/express/Constants$Cache;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v12, "inquiry_history_item%"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v12, "original_biz_name%"

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v1, "ExpressDatabaseHelper"

    const-string/jumbo v2, "importCacheData: cursor is null"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "cache_key"

    const-string/jumbo v2, "cache_key"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "content"

    const-string/jumbo v2, "content"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "account_id"

    const-string/jumbo v2, "account_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "remark"

    const-string/jumbo v2, "remark"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "etag"

    const-string/jumbo v2, "etag"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cache"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string/jumbo v1, "ExpressDatabaseHelper"

    const-string/jumbo v2, "import CacheData, cost %s ms, count %s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-static {v1, v2, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public migrateExpressData()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;-><init>(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
