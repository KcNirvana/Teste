.class public Lcom/alipay/apmobilesecuritysdk/apdidgen/c;
.super Ljava/lang/Object;
.source "ApdidManager.java"


# static fields
.field public static a:I

.field private static b:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const/4 v0, 0x0

    sput v0, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    sput p2, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->a:I

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "on generateApdid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;

    invoke-direct {v1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/apdidgen/g;

    invoke-direct {v1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;

    invoke-direct {v1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;

    invoke-direct {v1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/apdidgen/d;

    invoke-interface {v0, p0, p1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/d;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/apdidgen/a;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/apdidgen/a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/alipay/apmobilesecuritysdk/apdidgen/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    const-string/jumbo v0, "resultcode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/apdidgen/c;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "generateApdid(), \u672a\u77e5\u7684Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 2

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;-><init>()V

    :try_start_0
    const-string/jumbo v1, ""

    invoke-static {p0, v1}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->getLocalUmidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
