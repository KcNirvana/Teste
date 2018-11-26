.class public Lcom/miui/appcompatibility/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bav:Lcom/miui/appcompatibility/b;


# instance fields
.field private bas:Lcom/miui/securityscan/g/a;

.field private bat:Lcom/miui/appcompatibility/a/b;

.field private bau:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/appcompatibility/b;->bau:I

    iput-object p1, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/securityscan/g/b;->Mr(Landroid/content/Context;)Lcom/miui/securityscan/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/g/b;->Mt()Lcom/miui/securityscan/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    return-void
.end method

.method private declared-synchronized bwA()V
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "AppCompatManager"

    const-string/jumbo v2, " resetDB="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v0, "tb_os_ver"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v0, "tb_incompatible_app_list"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static bwB(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.action.appcompatibility.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bwC(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->setIncompatibleAppList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized bwD(Ljava/lang/String;)J
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "os_ver"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "tb_os_ver"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :try_start_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-wide v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bwE()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bat:Lcom/miui/appcompatibility/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appcompatibility/b;->bat:Lcom/miui/appcompatibility/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/miui/appcompatibility/b;->bat:Lcom/miui/appcompatibility/a/b;

    :cond_0
    return-void
.end method

.method private declared-synchronized bwG(Lcom/miui/appcompatibility/data/PackageData;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "AppCompatManager"

    const-string/jumbo v1, "updateToDb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v0, "pkg_name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "pkg_name"

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkg_ver"

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->bwb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkg_status"

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "tb_incompatible_app_list"

    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic bwH(Lcom/miui/appcompatibility/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bwI(Lcom/miui/appcompatibility/b;)I
    .locals 1

    iget v0, p0, Lcom/miui/appcompatibility/b;->bau:I

    return v0
.end method

.method static synthetic bwJ(Lcom/miui/appcompatibility/b;Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/appcompatibility/b;->bwq(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bwK(Lcom/miui/appcompatibility/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bwE()V

    return-void
.end method

.method public static bwl(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, v0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->setIncompatibleAppList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private bwm()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bwq(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/appcompatibility/b;->bwu(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/appcompatibility/b;->bwn(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/appcompatibility/b;->bwy(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bwo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appcompatibility/data/PackageData;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/appcompatibility/b;->bwn(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/appcompatibility/b;->bwy(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private declared-synchronized bwn(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v0, "pkg_name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "tb_incompatible_app_list"

    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bwo()Ljava/util/List;
    .locals 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    const/4 v1, 0x4

    :try_start_2
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "pkg_name"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string/jumbo v1, "pkg_ver"

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string/jumbo v1, "pkg_status"

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string/jumbo v1, "tb_incompatible_app_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    const-string/jumbo v1, "AppCompatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryFromDb count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pkg_name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pkg_ver"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/appcompatibility/data/PackageData;

    invoke-direct {v4}, Lcom/miui/appcompatibility/data/PackageData;-><init>()V

    invoke-virtual {v4, v1}, Lcom/miui/appcompatibility/data/PackageData;->bwc(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/miui/appcompatibility/data/PackageData;->bwe(Ljava/lang/String;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v9

    :cond_1
    if-eqz v2, :cond_2

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_2
    if-eqz v2, :cond_3

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_1
.end method

.method public static bwp(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/appcompatibility/h;

    invoke-direct {v0, p0}, Lcom/miui/appcompatibility/h;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bwq(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "miui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/appcompatibility/data/PackageData;

    invoke-direct {v4}, Lcom/miui/appcompatibility/data/PackageData;-><init>()V

    invoke-virtual {v4, v3}, Lcom/miui/appcompatibility/data/PackageData;->bwc(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/miui/appcompatibility/data/PackageData;->bwe(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private bwr()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppCompatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() os_ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bwt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bwA()V

    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bwD(Ljava/lang/String;)J

    :cond_0
    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bwm()V

    return-void
.end method

.method private declared-synchronized bws(Lcom/miui/appcompatibility/data/PackageData;)J
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "AppCompatManager"

    const-string/jumbo v2, "insertToDb"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkg_ver"

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->bwb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkg_status"

    invoke-virtual {p1}, Lcom/miui/appcompatibility/data/PackageData;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "tb_incompatible_app_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    :try_start_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-wide v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bwt(Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "os_ver"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string/jumbo v3, "os_ver = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string/jumbo v1, "tb_os_ver"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "os_ver"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "AppCompatManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isEqualsCurOsver os_ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v10

    :cond_1
    if-eqz v2, :cond_2

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v10

    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v9

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_2
    if-eqz v2, :cond_5

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v11, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v11

    goto :goto_1
.end method

.method private declared-synchronized bwu(Ljava/lang/String;)I
    .locals 10

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->bas:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, 0x4

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "pkg_name"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string/jumbo v1, "pkg_ver"

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string/jumbo v1, "pkg_status"

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string/jumbo v3, "pkg_name = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string/jumbo v1, "tb_incompatible_app_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    const-string/jumbo v1, "AppCompatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryFromDb count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v8, :cond_2

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v9, v1

    move-object v1, v8

    move-object v8, v9

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v9

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private bww()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.miui.appcompatibility.receiver.AppCompatStateReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/miui/appcompatibility/a/a;

    invoke-direct {v2}, Lcom/miui/appcompatibility/a/a;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private bwx()V
    .locals 3

    new-instance v0, Lcom/miui/appcompatibility/a/b;

    invoke-direct {v0}, Lcom/miui/appcompatibility/a/b;-><init>()V

    iput-object v0, p0, Lcom/miui/appcompatibility/b;->bat:Lcom/miui/appcompatibility/a/b;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appcompatibility/b;->bat:Lcom/miui/appcompatibility/a/b;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static bwy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, v2}, Lmiui/security/appcompatibility/AppCompatibilityManager;->setIncompatibleAppList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static bwz(Landroid/content/Context;Ljava/util/List;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {p0, v4}, Lmiui/security/appcompatibility/AppCompatibilityManager;->setIncompatibleAppList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/appcompatibility/b;
    .locals 2

    const-class v1, Lcom/miui/appcompatibility/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/appcompatibility/b;->bav:Lcom/miui/appcompatibility/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appcompatibility/b;

    invoke-direct {v0, p0}, Lcom/miui/appcompatibility/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/appcompatibility/b;->bav:Lcom/miui/appcompatibility/b;

    :cond_0
    sget-object v0, Lcom/miui/appcompatibility/b;->bav:Lcom/miui/appcompatibility/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bwF(Ljava/util/List;)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->getStatus()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/appcompatibility/b;->bwl(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwB(Landroid/content/Context;)V

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/appcompatibility/b;->bwz(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwB(Landroid/content/Context;)V

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/appcompatibility/b;->bwu(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bws(Lcom/miui/appcompatibility/data/PackageData;)J

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bwn(Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    return-void
.end method

.method public bwk(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/appcompatibility/b;->bwy(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/appcompatibility/b;->bwn(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwB(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/appcompatibility/data/PackageData;

    invoke-direct {v0}, Lcom/miui/appcompatibility/data/PackageData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/appcompatibility/data/PackageData;->bwc(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/appcompatibility/data/PackageData;->bwe(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/appcompatibility/data/PackageData;->bwd(I)V

    iget-object v1, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/appcompatibility/b;->bwC(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/appcompatibility/b;->bwu(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bwG(Lcom/miui/appcompatibility/data/PackageData;)I

    :goto_1
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwB(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/appcompatibility/b;->bws(Lcom/miui/appcompatibility/data/PackageData;)J

    goto :goto_1
.end method

.method public bwv()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bwx()V

    return-void
.end method

.method public init()V
    .locals 2

    const-string/jumbo v0, "AppCompatManager"

    const-string/jumbo v1, "AppCompatManager-init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bwr()V

    invoke-direct {p0}, Lcom/miui/appcompatibility/b;->bww()V

    return-void
.end method

.method public initData()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appcompatibility/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/f;->bwZ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/appcompatibility/a;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/miui/appcompatibility/f;->bxb()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/miui/appcompatibility/b;->bau:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/appcompatibility/b;->bau:I

    const-string/jumbo v0, "AppCompatManager"

    const-string/jumbo v1, "initData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/appcompatibility/g;

    invoke-direct {v0, p0}, Lcom/miui/appcompatibility/g;-><init>(Lcom/miui/appcompatibility/b;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appcompatibility/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
