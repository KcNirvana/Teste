.class public Lcom/alipay/android/phone/inside/proxy/action/p;
.super Ljava/lang/Object;
.source "SwitchChannelAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/commonbiz/a/a;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/p;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/proxy/action/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/proxy/action/p;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/alipay/android/barcode/b;->a()Lcom/alipay/android/barcode/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/barcode/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2

    const-string/jumbo v0, "resultStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10000"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/proxy/action/p;Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/p;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/proxy/action/p;->a(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/inside/proxy/action/p;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/p;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/p;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/p;->a:Ljava/lang/Object;

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

.method private c()V
    .locals 4

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/p;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/p;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
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

.method private d()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/android/barcode/b;->a()Lcom/alipay/android/barcode/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/barcode/b;->c()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "assignedChannel"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "biz_type=switch_channel&biz_identity=userassets10001&user_id=%s&trade_from=6003&app_name=inside&assigned_channel=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 4

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "order_info"

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/proxy/action/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.android.phone.inside.PHONE_CASHIER_PAY"

    new-instance v3, Lcom/alipay/android/phone/inside/proxy/action/q;

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/phone/inside/proxy/action/q;-><init>(Lcom/alipay/android/phone/inside/proxy/action/p;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V

    invoke-static {v2, v1, v3}, Lcom/alipay/android/phone/inside/framework/service/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/proxy/action/p;->c()V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SWITCH_CHANNEL:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
