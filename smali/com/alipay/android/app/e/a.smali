.class public Lcom/alipay/android/app/e/a;
.super Ljava/lang/Object;
.source "AlipayLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/e/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/e/a;->a:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/e/a;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/e/a;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "AlipayLoginHelper::InsideLoginHelper"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/android/app/e/a$a;)V
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "AlipayLoginHelper::registerLoginAbortCallback"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/e/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/e/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/e/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/e/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/e/a;->a:Z

    return p1
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/e/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/e/b;-><init>(Lcom/alipay/android/app/e/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "AlipayLoginHelper::waitLoginLock"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/e/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/e/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "AlipayLoginHelper::notifyLoginLock"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/e/a;->b:Z

    iget-object v1, p0, Lcom/alipay/android/app/e/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/e/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()Lcom/alipay/android/app/e/a$a;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/e/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/e/c;-><init>(Lcom/alipay/android/app/e/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "AlipayLoginHelper::checkLoginStatus"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/app/e/a;->f()Lcom/alipay/android/app/e/a$a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/e/a;->a(Landroid/content/Context;Lcom/alipay/android/app/e/a$a;)V

    invoke-direct {p0}, Lcom/alipay/android/app/e/a;->c()V

    invoke-direct {p0}, Lcom/alipay/android/app/e/a;->d()V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/e/a;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/e/a;->a:Z

    return v0
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "AlipayLoginHelper::clearLoginStatus"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/e/a;->a:Z

    invoke-direct {p0}, Lcom/alipay/android/app/e/a;->e()V

    return-void
.end method
