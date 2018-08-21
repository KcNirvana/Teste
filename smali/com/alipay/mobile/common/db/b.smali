.class public final Lcom/alipay/mobile/common/db/b;
.super Lcom/alipay/mobile/common/db/b/c;
.source "DbManagerImpl.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alipay/mobile/common/a$a;",
            "Lcom/alipay/mobile/common/db/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/alipay/mobile/common/a$a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/db/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/a$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b/c;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "daoConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/db/b;->c:Lcom/alipay/mobile/common/a$a;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/db/b;->d:Z

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/db/b;->b(Lcom/alipay/mobile/common/a$a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a$a;->e()Lcom/alipay/mobile/common/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/a$b;->a(Lcom/alipay/mobile/common/a;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/common/a$a;)Lcom/alipay/mobile/common/a;
    .locals 7

    const-class v1, Lcom/alipay/mobile/common/db/b;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/alipay/mobile/common/a$a;

    invoke-direct {p0}, Lcom/alipay/mobile/common/a$a;-><init>()V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/db/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/db/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/common/db/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/db/b;-><init>(Lcom/alipay/mobile/common/a$a;)V

    sget-object v2, Lcom/alipay/mobile/common/db/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, v0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/a$a;->c()I

    move-result v4

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/a$a;->f()Lcom/alipay/mobile/common/a$c;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5, v0, v3, v4}, Lcom/alipay/mobile/common/a$c;->a(Lcom/alipay/mobile/common/a;II)V

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_1
    iput-object p0, v0, Lcom/alipay/mobile/common/db/b;->c:Lcom/alipay/mobile/common/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/b;->b()V
    :try_end_2
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v5

    const-string/jumbo v6, "DbManagerImpl"

    invoke-interface {v5, v6, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private b(Lcom/alipay/mobile/common/a$a;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a$a;->a()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a$a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/db/b;->d:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/db/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/db/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/alipay/mobile/common/db/sqlite/d;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/mobile/common/db/sqlite/d;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/b/e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->c()V

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/db/sqlite/c;->a(Lcom/alipay/mobile/common/db/b/e;Lcom/alipay/mobile/common/db/sqlite/d;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->c(Lcom/alipay/mobile/common/db/sqlite/a;)I

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    throw v0
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/db/d;->a(Lcom/alipay/mobile/common/db/b/e;)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/mobile/common/db/sqlite/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/db/sqlite/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "DbManagerImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/alipay/mobile/common/ex/DbException;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/common/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "DbManagerImpl"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->c()V

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/b/e;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/db/sqlite/c;->a(Lcom/alipay/mobile/common/db/b/e;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/sqlite/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/b/e;)V

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/db/sqlite/c;->a(Lcom/alipay/mobile/common/db/b/e;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/sqlite/a;)V

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->c()V

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/b/e;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/alipay/mobile/common/db/sqlite/c;->a(Lcom/alipay/mobile/common/db/b/e;Ljava/lang/Object;[Ljava/lang/String;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/sqlite/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/b/e;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/db/sqlite/c;->a(Lcom/alipay/mobile/common/db/b/e;Ljava/lang/Object;[Ljava/lang/String;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/sqlite/a;)V

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/ex/DbException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/alipay/mobile/common/db/sqlite/a;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/db/sqlite/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/db/sqlite/a;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/ex/DbException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/ex/DbException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->c()V

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/b/e;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/db/sqlite/c;->b(Lcom/alipay/mobile/common/db/b/e;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/sqlite/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/b/e;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/db/sqlite/c;->b(Lcom/alipay/mobile/common/db/b/e;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/db/sqlite/a;)V

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/db/b;->e()V

    goto :goto_0
.end method

.method public c(Lcom/alipay/mobile/common/db/sqlite/a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/db/sqlite/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "DbManagerImpl"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/alipay/mobile/common/ex/DbException;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/common/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "DbManagerImpl"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/alipay/mobile/common/db/b;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/common/db/b;->c:Lcom/alipay/mobile/common/a$a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/db/b;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/common/db/b;->c:Lcom/alipay/mobile/common/a$a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method
