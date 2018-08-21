.class public Lcom/alipay/edge/rpc/a/a;
.super Ljava/lang/Object;
.source "RpcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/edge/rpc/a/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private static b:Lcom/alipay/edge/rpc/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/edge/rpc/a/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    new-instance v0, Lcom/alipay/edge/rpc/a/a;

    invoke-direct {v0}, Lcom/alipay/edge/rpc/a/a;-><init>()V

    sput-object v0, Lcom/alipay/edge/rpc/a/a;->b:Lcom/alipay/edge/rpc/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/edge/rpc/a/a;
    .locals 1

    sget-object v0, Lcom/alipay/edge/rpc/a/a;->b:Lcom/alipay/edge/rpc/a/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;[BIILjava/util/Map;)Lcom/alipay/edge/rpc/gen/EdgeRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[BII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/edge/rpc/gen/EdgeRequest;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v2

    new-instance v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;

    invoke-direct {v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_1
    iput-object v1, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/edge/impl/c;->a(Landroid/content/Context;)Lcom/alipay/edge/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/edge/impl/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/edge/impl/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->DISABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    :goto_2
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    sget-object v0, Lcom/alipay/edge/rpc/gen/OsType;->ANDROID:Lcom/alipay/edge/rpc/gen/OsType;

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    sget-object v0, Lcom/alipay/edge/a/a;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    invoke-static {p2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "exAppListVer"

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    iget-object v0, v2, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v1, v2, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->ENABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

    return-object v3

    :catch_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;[BIILjava/util/Map;)Lcom/alipay/edge/rpc/a/a$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[BII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/edge/rpc/a/a$a;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v8, Lcom/alipay/edge/rpc/a/a$a;

    invoke-direct {v8}, Lcom/alipay/edge/rpc/a/a$a;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/alipay/edge/rpc/a/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "reportData ctx == null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/alipay/edge/rpc/a/a$a;->a:Z

    move-object v1, v8

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v1

    const-class v2, Lcom/alipay/edge/rpc/gen/EdgePBService;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/edge/rpc/gen/EdgePBService;

    move-object v7, v0

    if-nez v7, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/alipay/edge/rpc/a/a$a;->a:Z

    sget-object v1, Lcom/alipay/edge/rpc/a/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "reportData edgePBService == null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alipay/edge/rpc/a/a;->b(Landroid/content/Context;[BIILjava/util/Map;)Lcom/alipay/edge/rpc/gen/EdgeRequest;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/alipay/edge/rpc/gen/EdgePBService;->updateData(Lcom/alipay/edge/rpc/gen/EdgeRequest;)Lcom/alipay/edge/rpc/gen/EdgeResult;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/alipay/edge/rpc/a/a$a;->a:Z

    sget-object v1, Lcom/alipay/edge/rpc/a/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "reportData result == null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/alipay/edge/rpc/gen/EdgeResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/alipay/edge/rpc/a/a$a;->a:Z

    sget-object v1, Lcom/alipay/edge/rpc/a/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "reportData !result.success"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/alipay/edge/rpc/a/a$a;->a:Z

    iget-object v2, v1, Lcom/alipay/edge/rpc/gen/EdgeResult;->flag:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v8, Lcom/alipay/edge/rpc/a/a$a;->c:I

    iget-object v2, v1, Lcom/alipay/edge/rpc/gen/EdgeResult;->policyPackData:Lokio/ByteString;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/alipay/edge/rpc/gen/EdgeResult;->policyPackData:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    iput-object v2, v8, Lcom/alipay/edge/rpc/a/a$a;->b:[B

    :cond_4
    iget-object v2, v1, Lcom/alipay/edge/rpc/gen/EdgeResult;->extData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/alipay/edge/rpc/gen/EdgeResult;->extData:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "exAppListVer"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/edge/rpc/a/a$a;->d:Ljava/lang/String;

    const-string/jumbo v1, "exAppList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/edge/rpc/a/a$a;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    move-object v1, v8

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/alipay/edge/rpc/a/a;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "t0dbg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rpc exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, v8, Lcom/alipay/edge/rpc/a/a$a;->a:Z

    move-object v1, v8

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
