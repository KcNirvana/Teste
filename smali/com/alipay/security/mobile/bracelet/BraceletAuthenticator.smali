.class public Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "BraceletAuthenticator.java"


# static fields
.field private static final KEY_DEVICEID:Ljava/lang/String; = "profile"

.field private static final SECURITY_PREFERENCE:Ljava/lang/String; = "securitypreference11"

.field private static final TYPE:I


# instance fields
.field protected mMinServiceVersion:I

.field private mProtocalType:I

.field private mProtocalVersion:I

.field private mServerUrl:Ljava/lang/String;

.field private mVendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalType:I

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalVersion:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mMinServiceVersion:I

    iput p1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    iput p2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalType:I

    iput p3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalVersion:I

    iput-object p5, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 7

    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    iget v3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalType:I

    iget v4, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mProtocalVersion:I

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mServerUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->context:Landroid/content/Context;

    const-string/jumbo v2, "securitypreference11"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v1, "profile"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_OPERATIONT_TYPE"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "KEY_VENDOR_TYPE"

    iget v4, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->mVendor:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "KEY_AUTHENTICATOR_TYPE"

    sget v4, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->TYPE:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v3, "DEVICEID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "profile"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x6f

    return v0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "NOT SUPPORT"

    return-object v0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
