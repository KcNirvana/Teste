.class public abstract Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintService;
.super Ljava/lang/Object;
.source "DeviceFingerprintService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApdidToken()Ljava/lang/String;
.end method

.method public abstract getApdidToken(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Ljava/lang/String;
.end method

.method public abstract getSdkName()Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
.end method

.method public abstract getTokenResult(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenBizID;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
.end method

.method public abstract getUtdid()Ljava/lang/String;
.end method

.method public abstract initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
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
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
