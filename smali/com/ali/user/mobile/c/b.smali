.class public Lcom/ali/user/mobile/c/b;
.super Ljava/lang/Object;
.source "UserInfoDao.java"

# interfaces
.implements Lcom/ali/user/mobile/account/a/a;


# static fields
.field static final c:Ljava/lang/String;

.field public static d:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static e:Lcom/ali/user/mobile/c/b;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/content/ContextWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/mobile/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/ali/user/mobile/c/a;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ali/user/mobile/account/a/a;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/c/b;->e:Lcom/ali/user/mobile/c/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/c/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/c/b;->e:Lcom/ali/user/mobile/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/c/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/c/b;->e:Lcom/ali/user/mobile/c/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/c/b;->e:Lcom/ali/user/mobile/c/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/c/b;->g:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/c/b;->g:Landroid/content/ContextWrapper;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/c/b;->g:Landroid/content/ContextWrapper;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x1

    sget-object v1, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "SELECT * FROM UserInfo WHERE logonId = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    :goto_0
    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/ali/user/mobile/c/e;->a(Landroid/database/Cursor;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/c/d;->b(Lcom/ali/user/mobile/account/bean/UserInfo;Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v2, "SELECT * FROM UserInfo WHERE userId = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_4
    sget-object v4, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :cond_5
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v2, "SELECT * FROM UserInfo WHERE userId = ? and logonId = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v0

    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/c/b;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ali/user/mobile/c/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " ORDER BY loginTime DESC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/ali/user/mobile/c/e;->a(Landroid/database/Cursor;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ali/user/mobile/c/d;->b(Lcom/ali/user/mobile/account/bean/UserInfo;Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez p1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, p1, :cond_3

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2

    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v1, "addOrUpdateUserLogin userInfo is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v1, "save user info"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ali/user/mobile/c/d;->a(Lcom/ali/user/mobile/account/bean/UserInfo;Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/user/mobile/c/e;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v3, "\u6dfb\u52a0\u6216\u8005\u66f4\u65b0\u7528\u6237\u4fe1\u606f\u6210\u529f\uff0c\u6e05\u9664\u7528\u6237\u7f13\u5b58\u6570\u636e"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v3, "\u6dfb\u52a0\u6216\u8005\u66f4\u65b0\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "updateUserAutoLoginFlagByLogonId logonId is empty"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "autoLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ali/user/mobile/c/d;->a(Ljava/lang/String;Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "logonId"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/ali/user/mobile/c/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/ali/user/mobile/c/d;->a(Ljava/lang/String;Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u8bbe\u7f6e\u5f53\u524d\u8d26\u6237\u514d\u767b\u6807\u8bc6\u4e3afalse"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-object v2, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method public b()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "autoLogin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/c/d;->a(Ljava/lang/String;Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u8bbe\u7f6e\u5f53\u524d\u8d26\u6237\u514d\u767b\u6807\u8bc6\u4e3afalse"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_1
    sget-object v2, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "updateUserAutoLoginFlag userId is empty"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "autoLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ali/user/mobile/c/d;->a(Ljava/lang/String;Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "userId"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/ali/user/mobile/c/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/ali/user/mobile/c/d;->a(Ljava/lang/String;Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u8bbe\u7f6e\u5f53\u524d\u8d26\u6237\u514d\u767b\u6807\u8bc6\u4e3afalse"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-object v2, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "delete fail no userInfo"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/c/b;->g:Landroid/content/ContextWrapper;

    invoke-static {p1, v1}, Lcom/ali/user/mobile/c/d;->a(Ljava/lang/String;Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    const-string/jumbo v3, "\u6e05\u695a\u672c\u5730\u8d26\u6237\u6570\u636e"

    invoke-static {v1, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lcom/ali/user/mobile/c/b;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "userId"

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/ali/user/mobile/c/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/ali/user/mobile/c/e;->a(Landroid/database/Cursor;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/ali/user/mobile/c/b;->f:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/c/b;->b(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/c/d;->b(Lcom/ali/user/mobile/account/bean/UserInfo;Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    sget-object v4, Lcom/ali/user/mobile/c/b;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1
.end method
