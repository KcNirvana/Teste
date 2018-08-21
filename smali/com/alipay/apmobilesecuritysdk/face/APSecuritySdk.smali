.class public Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
.super Ljava/lang/Object;
.source "APSecuritySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;,
        Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;


# instance fields
.field private mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->instance:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .locals 3

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->instance:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->instance:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;-><init>()V

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    invoke-direct {v2}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;-><init>()V

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v2, p0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->setContext(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->instance:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->instance:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getApdidToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApdidToken(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0, p1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->getApdidToken(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->getSdkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTokenResult(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0, p1}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->getTokenResult(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    return-object v0
.end method

.method public initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mDeviceFingerprintService:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    return-void
.end method
