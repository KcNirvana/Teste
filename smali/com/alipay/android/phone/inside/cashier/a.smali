.class public Lcom/alipay/android/phone/inside/cashier/a;
.super Ljava/lang/Object;
.source "AlipayLoginOperation.java"

# interfaces
.implements Lcom/alipay/android/app/c/a;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/cashier/a;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/cashier/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/cashier/a;->e()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2

    const-string/jumbo v0, "loginStatus"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 4

    iget-object v1, p0, Lcom/alipay/android/phone/inside/cashier/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/a;->a:Ljava/lang/Object;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/phone/inside/cashier/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/a;->a:Ljava/lang/Object;

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


# virtual methods
.method public a()Z
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "LOGIN_EXTERNAL_SERVICE"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/alipay/android/phone/inside/cashier/b;

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/phone/inside/cashier/b;-><init>(Lcom/alipay/android/phone/inside/cashier/a;Landroid/os/Bundle;)V

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/inside/framework/service/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/cashier/a;->d()V

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/cashier/a;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "is_login"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "AUTO_AUTH_EXTERNAL_SERVICE"

    invoke-static {v2, v0}, Lcom/alipay/android/phone/inside/framework/service/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AlipayLoginOperation::isLogin > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
