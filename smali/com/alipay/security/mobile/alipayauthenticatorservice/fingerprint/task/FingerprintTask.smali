.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;
.super Ljava/lang/Object;
.source "FingerprintTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mMessage:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mMessage:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->finishAuth(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->doAuth()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintRegister;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mMessage:Landroid/os/Bundle;

    invoke-direct {v1, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintRegister;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v2, 0x6

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuthenticate;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mMessage:Landroid/os/Bundle;

    invoke-direct {v1, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuthenticate;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;->mMessage:Landroid/os/Bundle;

    invoke-direct {v1, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
