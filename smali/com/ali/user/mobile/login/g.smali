.class public Lcom/ali/user/mobile/login/g;
.super Ljava/lang/Object;
.source "SupplyQueryPasswordService.java"


# static fields
.field private static a:Lcom/ali/user/mobile/login/g;


# instance fields
.field private b:I

.field private c:Landroid/app/Activity;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/login/g;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/g;->c:Landroid/app/Activity;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/ali/user/mobile/login/g;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/login/g;->a:Lcom/ali/user/mobile/login/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/login/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/login/g;->a:Lcom/ali/user/mobile/login/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/g;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/g;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/login/g;->a:Lcom/ali/user/mobile/login/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/login/g;->a:Lcom/ali/user/mobile/login/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 3

    iget-object v1, p0, Lcom/ali/user/mobile/login/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/g;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplyQueryPasswordService"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iput p1, p0, Lcom/ali/user/mobile/login/g;->b:I

    const-string/jumbo v0, "SupplyQueryPasswordService"

    const-string/jumbo v1, "notify supply query password result:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/g;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplyQueryPasswordService"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/g;->c:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can not call supplyQueryPassword in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "scene"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/login/g;->b:I

    invoke-direct {p0}, Lcom/ali/user/mobile/login/g;->c()V

    iget v0, p0, Lcom/ali/user/mobile/login/g;->b:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/g;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/g;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/g;->c:Landroid/app/Activity;

    :cond_0
    return-void
.end method
