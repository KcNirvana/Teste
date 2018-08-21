.class public abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;
.super Ljava/lang/Object;
.source "FingerprintAuth.java"


# instance fields
.field private isErrorTimesLimit:Z

.field protected isFingerprintAuthSuccess:Z

.field private isFingerprintAuthing:Z

.field private isFinish:Z

.field protected isNotMatch:Z

.field private isTimeout:Z

.field protected mAAID:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mFacetId:Ljava/lang/String;

.field protected mMessage:Landroid/os/Bundle;

.field protected mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x2710

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mTimeout:I

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthing:Z

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthSuccess:Z

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isNotMatch:Z

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFinish:Z

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isErrorTimesLimit:Z

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isTimeout:Z

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mMessage:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mMessage:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_TIME_OUT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mTimeout:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mFacetId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFinish:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isErrorTimesLimit:Z

    return p1
.end method

.method static synthetic access$302(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isTimeout:Z

    return p1
.end method


# virtual methods
.method public final declared-synchronized doAuth()Landroid/os/Bundle;
    .locals 4

    const/4 v2, 0x2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFinish:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isTimeout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isErrorTimesLimit:Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mMessage:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->getReponseType()I

    move-result v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_2

    const/4 v1, 0x3

    if-ne v1, v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthSuccess:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isNotMatch:Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mAAID:Ljava/lang/String;

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;)V

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->authenticate(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    const v0, 0x1d4c0

    :cond_3
    iget-boolean v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x14

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, -0x14

    :goto_1
    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isTimeout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthing:Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/16 v2, 0x71

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFinish:Z

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->cancel()V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isNotMatch:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->getReponseType()I

    move-result v0

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_6
    iget-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isTimeout:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->getReponseType()I

    move-result v0

    const/16 v1, 0x71

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isErrorTimesLimit:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->getReponseType()I

    move-result v0

    const/16 v1, 0x81

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->doTransaction()Landroid/os/Bundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected abstract doTransaction()Landroid/os/Bundle;
.end method

.method protected abstract getReponseType()I
.end method
