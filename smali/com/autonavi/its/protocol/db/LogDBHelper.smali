.class public Lcom/autonavi/its/protocol/db/LogDBHelper;
.super Ljava/lang/Object;
.source "LogDBHelper.java"


# static fields
.field private static volatile instance:Lcom/autonavi/its/protocol/db/LogDBHelper;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/autonavi/its/protocol/db/DatabaseHelper;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/its/protocol/db/DatabaseHelper;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "log_db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/autonavi/its/protocol/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->dbHelper:Lcom/autonavi/its/protocol/db/DatabaseHelper;

    iget-object v0, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->dbHelper:Lcom/autonavi/its/protocol/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/autonavi/its/protocol/db/LogDBHelper;
    .locals 3

    const-class v1, Lcom/autonavi/its/protocol/db/LogDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/its/protocol/db/LogDBHelper;->instance:Lcom/autonavi/its/protocol/db/LogDBHelper;

    if-nez v0, :cond_1

    const-class v2, Lcom/autonavi/its/protocol/db/LogDBHelper;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/autonavi/its/protocol/db/LogDBHelper;->instance:Lcom/autonavi/its/protocol/db/LogDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/db/LogDBHelper;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/db/LogDBHelper;-><init>()V

    sput-object v0, Lcom/autonavi/its/protocol/db/LogDBHelper;->instance:Lcom/autonavi/its/protocol/db/LogDBHelper;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/autonavi/its/protocol/db/LogDBHelper;->instance:Lcom/autonavi/its/protocol/db/LogDBHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->dbHelper:Lcom/autonavi/its/protocol/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/db/DatabaseHelper;->close()V

    return-void
.end method

.method public deleteLog(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/its/protocol/db/modle/LogBody;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/its/protocol/db/modle/LogBody;

    iget-object v2, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "log_table"

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/db/modle/LogBody;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public getAllLog()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/its/protocol/db/modle/LogBody;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "log_table"

    const-string/jumbo v7, "_id DESC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/autonavi/its/protocol/db/modle/LogBody;

    invoke-direct {v8}, Lcom/autonavi/its/protocol/db/modle/LogBody;-><init>()V

    const-string/jumbo v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/autonavi/its/protocol/db/modle/LogBody;->setId(J)V

    const-string/jumbo v0, "time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/autonavi/its/protocol/db/modle/LogBody;->setTime(J)V

    const-string/jumbo v0, "time_text"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/autonavi/its/protocol/db/modle/LogBody;->setTime_text(Ljava/lang/String;)V

    const-string/jumbo v0, "content"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/autonavi/its/protocol/db/modle/LogBody;->setContent(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public insert(Lcom/autonavi/its/protocol/db/modle/LogBody;)J
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "content"

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/db/modle/LogBody;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "time"

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/db/modle/LogBody;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "time_text"

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/db/modle/LogBody;->getTime_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/autonavi/its/protocol/db/LogDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "log_table"

    const-string/jumbo v5, "_id"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method
