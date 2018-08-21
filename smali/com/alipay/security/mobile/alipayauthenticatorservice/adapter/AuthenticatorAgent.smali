.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;
.super Ljava/lang/Object;
.source "AuthenticatorAgent.java"


# static fields
.field private static mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;


# instance fields
.field private mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;
    .locals 2

    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorAgent:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleFingerprintCommand(Landroid/os/Bundle;)I
    .locals 3

    const/16 v2, 0x65

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    const-string/jumbo v0, "KEY_OPERATIONT_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "error path: handleFingerprintCommand"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "error path: handleFingerprintCommand"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "error path: handleFingerprintCommand"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    return-object v0
.end method

.method public processCommand(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->handleFingerprintCommand(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x65

    goto :goto_0
.end method

.method public processCommmandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    const-string/jumbo v0, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->handleAsyncMessage(Landroid/os/Bundle;)V

    goto :goto_0
.end method
