.class public Lcom/alipay/android/app/hardwarepay/c;
.super Ljava/lang/Object;
.source "HardwarePayUtil.java"


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/c;


# instance fields
.field private b:Lcom/alipay/android/app/hardwarepay/base/m;

.field private c:Lcom/alipay/android/app/hardwarepay/base/m;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "biz_type=\"fingerprint\""

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/c;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/hardwarepay/c;->a:Lcom/alipay/android/app/hardwarepay/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/c;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/c;-><init>()V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/c;->a:Lcom/alipay/android/app/hardwarepay/c;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/c;->a:Lcom/alipay/android/app/hardwarepay/c;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/android/app/pay/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/alipay/android/app/pay/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/pay/a;->v:Ljava/lang/String;

    const-string/jumbo v1, "fp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "HardwarePayUtil.init"

    const-string/jumbo v2, "fp start msms"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    invoke-direct {p0, p1, v4, v0}, Lcom/alipay/android/app/hardwarepay/c;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "HardwarePayUtil.init"

    const-string/jumbo v2, "fp end msms"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/a;->v:Ljava/lang/String;

    const-string/jumbo v1, "wear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "HardwarePayUtil.init"

    const-string/jumbo v2, "bl start msms"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/app/hardwarepay/c;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "HardwarePayUtil.init"

    const-string/jumbo v2, "bl end msms"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/plugin/b;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getFastPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fp"

    const-string/jumbo v4, "AuthenticatorApiGetFastPayAuthData"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "secData"

    invoke-static {p2, v0, v2}, Lcom/alipay/android/app/hardwarepay/base/b;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-object v8, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    iput-object v8, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/plugin/b;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getRegAuthData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fp"

    const-string/jumbo v4, "AuthenticatorApiGetRegAuthData"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "secData"

    invoke-static {p2, v0, v2}, Lcom/alipay/android/app/hardwarepay/base/b;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/c;Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;Z)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "external_info"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/c;->a(I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v0}, Lcom/alipay/android/app/hardwarepay/base/m;->cancel()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v0}, Lcom/alipay/android/app/hardwarepay/base/m;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private varargs b(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/c;->a(I)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/m;->init(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/m;->init(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/c;->a(I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v0, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/base/m;->createRequestJson(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v0, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/base/m;->createRequestJson(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs a(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/c;->a(I)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    array-length v3, p3

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p3, v1

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v1, p1, p2, v0}, Lcom/alipay/android/app/hardwarepay/base/m;->execute(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    invoke-interface {v1, p1, p2, v0}, Lcom/alipay/android/app/hardwarepay/base/m;->execute(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/c;->a(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v0, 0xea60

    :goto_0
    new-instance v3, Lcom/alipay/android/app/hardwarepay/d;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/alipay/android/app/hardwarepay/d;-><init>(Lcom/alipay/android/app/hardwarepay/c;Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;Z)V

    invoke-static {v0, v1, v3}, Lcom/alipay/android/app/d/b/a;->a(JLjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "fp"

    const-string/jumbo v2, "HardwarePayUtilInitTimeout"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    const-string/jumbo v2, "HardwarePayUtil::initHardwarePay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "complate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v0, 0xbb8

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/hardwarepay/c;->b(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/android/app/hardwarepay/c;->b(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/c;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->c:Lcom/alipay/android/app/hardwarepay/base/m;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/c;->b:Lcom/alipay/android/app/hardwarepay/base/m;

    return-void
.end method
