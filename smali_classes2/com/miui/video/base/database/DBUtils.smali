.class public abstract Lcom/miui/video/base/database/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/database/DBUtils$ITransactionListener;,
        Lcom/miui/video/base/database/DBUtils$IQueryListener;,
        Lcom/miui/video/base/database/DBUtils$DBHelper;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DBUtils"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHelper:Lcom/miui/video/base/database/DBUtils$DBHelper;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/video/base/database/DBUtils$DBHelper;

    iget-object v1, p0, Lcom/miui/video/base/database/DBUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/video/base/database/DBUtils$DBHelper;-><init>(Lcom/miui/video/base/database/DBUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mHelper:Lcom/miui/video/base/database/DBUtils$DBHelper;

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mHelper:Lcom/miui/video/base/database/DBUtils$DBHelper;

    invoke-virtual {v0}, Lcom/miui/video/base/database/DBUtils$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "DBUtils"

    const-string v1, "DBUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDatabaseName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/base/database/DBUtils;->mHelper:Lcom/miui/video/base/database/DBUtils$DBHelper;

    invoke-virtual {v3}, Lcom/miui/video/base/database/DBUtils$DBHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected static checkDowngradeVersion(III)Z
    .locals 0

    if-lt p1, p0, :cond_0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static checkUpgradeVersion(III)Z
    .locals 0

    if-ge p1, p0, :cond_0

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private closeDB()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mHelper:Lcom/miui/video/base/database/DBUtils$DBHelper;

    invoke-virtual {v0}, Lcom/miui/video/base/database/DBUtils$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mHelper:Lcom/miui/video/base/database/DBUtils$DBHelper;

    invoke-virtual {v0}, Lcom/miui/video/base/database/DBUtils$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/miui/video/base/database/TableEntity;)J
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "delete"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public deleteUri(Lcom/miui/video/base/database/TableEntity;)J
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "delete"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public getCursorBlob(Landroid/database/Cursor;Ljava/lang/String;)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;)D
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    :goto_0
    return p1
.end method

.method public getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract getRealDatabaseName()Ljava/lang/String;
.end method

.method protected abstract getRealDatabaseVersion()I
.end method

.method public insert(Lcom/miui/video/base/database/TableEntity;)J
    .locals 5

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-string v2, "insert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public insertOrUpdate(Lcom/miui/video/base/database/TableEntity;)J
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-string v2, "insertOrUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public insertUri(Lcom/miui/video/base/database/TableEntity;)Landroid/net/Uri;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "insert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract onDataBaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract onDataBaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method protected abstract onDataBaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public query(Lcom/miui/video/base/database/TableEntity;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->isDistinct()Z

    move-result v3

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getColumns()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getGroupBy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getHaving()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getOrderBy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getLimit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->getResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getOrderBy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    const-string v2, "query"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getQueryListener()Lcom/miui/video/base/database/DBUtils$IQueryListener;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getQueryListener()Lcom/miui/video/base/database/DBUtils$IQueryListener;

    move-result-object p1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/miui/video/base/database/DBUtils$IQueryListener;->onQueryFinished(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_2
    :try_start_2
    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public queryCount(Lcom/miui/video/base/database/TableEntity;)I
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getGroupBy()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->getResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    move-object v1, v2

    const-string v2, "queryCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public queryUri(Lcom/miui/video/base/database/TableEntity;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->getResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getColumns()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "query"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getQueryListener()Lcom/miui/video/base/database/DBUtils$IQueryListener;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getQueryListener()Lcom/miui/video/base/database/DBUtils$IQueryListener;

    move-result-object p1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/miui/video/base/database/DBUtils$IQueryListener;->onQueryFinished(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_1
    :try_start_2
    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1

    :cond_5
    :goto_4
    return-object v0
.end method

.method protected runExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DBUtils"

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected runTransactionEach(Lcom/miui/video/base/database/TableEntity;Ljava/util/List;Lcom/miui/video/base/database/DBUtils$ITransactionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/video/base/database/TableEntity;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/miui/video/base/database/DBUtils$ITransactionListener<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    monitor-enter p2

    :try_start_0
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, p1, v2, v0}, Lcom/miui/video/base/database/DBUtils$ITransactionListener;->onTransaction(Lcom/miui/video/base/database/TableEntity;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p1

    :goto_1
    :try_start_2
    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_3
    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_2
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_3
    move-exception p3

    :try_start_7
    invoke-static {p0, p3}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_4
    throw p1

    :goto_5
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    :cond_1
    :goto_6
    return-void
.end method

.method public update(Lcom/miui/video/base/database/TableEntity;)J
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public updateUri(Lcom/miui/video/base/database/TableEntity;)J
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/base/database/DBUtils;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/base/database/TableEntity;->getWhereArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method
