.class public Lcom/alipay/android/phone/inside/barcode/gen/a;
.super Ljava/lang/Object;
.source "CodeConfigManager.java"


# static fields
.field private static b:Lcom/alipay/android/phone/inside/barcode/gen/a;


# instance fields
.field private a:Lcom/alipay/android/phone/inside/barcode/gen/c;

.field private c:Lcom/alipay/android/phone/inside/barcode/gen/model/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/barcode/gen/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/inside/barcode/gen/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/a;->b:Lcom/alipay/android/phone/inside/barcode/gen/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/barcode/gen/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/barcode/gen/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/barcode/gen/a;->b:Lcom/alipay/android/phone/inside/barcode/gen/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/a;->b:Lcom/alipay/android/phone/inside/barcode/gen/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "channelIndex"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "channelFullName"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "assignedChannel"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "channelTips"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "logoUrl"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v2, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->c:Ljava/lang/String;

    iput-object v5, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->d:Ljava/lang/String;

    iput-object v6, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p2}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->a(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/phone/inside/barcode/gen/c;->a(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/barcode/gen/a;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/barcode/gen/c;->a(Landroid/content/Context;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/barcode/gen/c;->a(Landroid/content/Context;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v1, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/inside/barcode/gen/c;->a(Landroid/content/Context;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->c:Lcom/alipay/android/phone/inside/barcode/gen/model/b;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->c:Lcom/alipay/android/phone/inside/barcode/gen/model/b;

    iget-object v0, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/b;->b:Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/barcode/gen/c;->b(Landroid/content/Context;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/barcode/gen/a;->b(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    const-string/jumbo v3, "barcode"

    const-string/jumbo v4, "GetCodeConfigEx"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "com.alipay.android.phone.inside.PHONE_CASHIER_UP_CODE_CONFIG"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/alipay/android/phone/inside/barcode/gen/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/inside/barcode/gen/b;-><init>(Lcom/alipay/android/phone/inside/barcode/gen/a;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/inside/framework/service/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/phone/inside/barcode/gen/c;->a(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    const-string/jumbo v2, "barcode"

    const-string/jumbo v3, "SetDefaultCodeConfigEx"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "setLastCodeInfo > codeConfig empty! "

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    new-instance v1, Lcom/alipay/android/phone/inside/barcode/gen/model/b;

    invoke-direct {v1, v0, p2}, Lcom/alipay/android/phone/inside/barcode/gen/model/b;-><init>(Ljava/lang/String;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V

    iput-object v1, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->c:Lcom/alipay/android/phone/inside/barcode/gen/model/b;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b()Lcom/alipay/android/phone/inside/barcode/gen/model/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->c:Lcom/alipay/android/phone/inside/barcode/gen/model/b;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V

    iget-object v1, p0, Lcom/alipay/android/phone/inside/barcode/gen/a;->a:Lcom/alipay/android/phone/inside/barcode/gen/c;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/phone/inside/barcode/gen/c;->b(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    const-string/jumbo v2, "barcode"

    const-string/jumbo v3, "SetLastCodeConfigEx"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;
    .locals 1

    invoke-static {p2}, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->parse(Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Landroid/content/Context;Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;)Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    move-result-object v0

    return-object v0
.end method
