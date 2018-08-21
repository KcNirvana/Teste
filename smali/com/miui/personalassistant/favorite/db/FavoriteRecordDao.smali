.class public Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;
.super Ljava/lang/Object;
.source "FavoriteRecordDao.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "favorite"

.field private static final COLUMN_ID:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final CURSOR_FAVORITE:Ljava/lang/String; = "1"

.field public static final CURSOR_NO_DELETE:Ljava/lang/String; = "0"

.field public static final SQL_DELETE:Ljava/lang/String; = "cdelete = ?"

.field private static final TAG:Ljava/lang/String; = "FavoriteRecordDao"


# instance fields
.field private dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://favorite/record"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Z
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->addRecords(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public addRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Z)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->addRecords(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public addRecords(Ljava/util/List;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FavoriteRecordDao"

    const-string/jumbo v2, "addRecords(): no record unique key"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "record"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url"

    aput-object v4, v2, v3

    const-string/jumbo v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    if-eqz p2, :cond_2

    sget-object v1, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "ptime"

    invoke-virtual {v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getPtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ctime"

    invoke-virtual {v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v10}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->record2value(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Landroid/content/ContentValues;

    move-result-object v13

    const-string/jumbo v1, "cdirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :cond_4
    return v9
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->close()V

    return-void
.end method

.method public deleteRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->deleteRecordList(Ljava/util/List;)V

    return-void
.end method

.method public deleteRecordList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v4}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "record"

    const-string/jumbo v5, "_id = ?"

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v9}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCdirty(I)V

    invoke-virtual {v2, v9}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCdelete(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->updateRecordList(Ljava/util/List;)V

    return-void
.end method

.method public getAllRecords(Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "record"

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "cdelete = ?"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v6, "0"

    aput-object v6, v4, v7

    const-string/jumbo v7, "ctime DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v8}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->cursor2record(Landroid/database/Cursor;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "record"

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "favorite = ? and cdelete = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "1"

    aput-object v6, v4, v7

    const-string/jumbo v6, "0"

    aput-object v6, v4, v11

    const-string/jumbo v7, "ctime DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method public getRecordByUrl(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    .locals 11

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v1, "record"

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "url = ? and cdelete = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ctime DESC limit 1"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {v8}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->cursor2record(Landroid/database/Cursor;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "FavoriteRecordDao"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public getRecordIdByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v1, "record"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ctime DESC limit 1"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v1, v10

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "FavoriteRecordDao"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public queryByCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v1, "record"

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "category = ? and cdelete = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ctime DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v8}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->cursor2record(Landroid/database/Cursor;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "FavoriteRecordDao"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v11

    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public queryRecords(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v1, "record"

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "(title LIKE ? OR appName LIKE ?) AND cdelete = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v8}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->cursor2record(Landroid/database/Cursor;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "FavoriteRecordDao"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v11

    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public updateFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE record SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\', cdirty = \'1\' WHERE url = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public updateRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->updateRecordList(Ljava/util/List;)V

    return-void
.end method

.method public updateRecordByUrl(Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v1, "record"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->record2value(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v1, "FavoriteRecordDao"

    const-string/jumbo v2, "IllegalArgumentException"

    invoke-static {v1, v2, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateRecordList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0, v9}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCdirty(I)V

    const-string/jumbo v3, "record"

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->record2value(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Landroid/content/ContentValues;

    move-result-object v4

    const-string/jumbo v5, "_id = ?"

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
