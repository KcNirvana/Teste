.class public final Lcom/ali/user/mobile/info/e;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ali/user/mobile/info/e;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/info/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/e;->a:Lcom/ali/user/mobile/info/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/info/e;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/e;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/e;->a:Lcom/ali/user/mobile/info/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ali/user/mobile/info/e;->a:Lcom/ali/user/mobile/info/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "DeviceInfo"

    const-string/jumbo v1, "fake init"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/common/b/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/b;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->k()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->l()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
