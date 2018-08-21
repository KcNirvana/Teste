.class Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/security/mobile/agent/AlipayAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Connection"
.end annotation


# static fields
.field private static sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;


# instance fields
.field private mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

.field private mContext:Landroid/content/Context;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "Invalid parameter exception"

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;-><init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->unbindService()V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;,
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sendCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;,
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sendCommand(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    return-object p1
.end method

.method static synthetic access$902(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    .locals 0

    sput-object p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-object p0
.end method

.method private bindService()Z
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v0, "KtSH_COUctZpUnIrhpOobXUbfWY"

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "qi9jRyfvLzSHCk7cLWFW2mR2T9g"

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.alipay.security.mobile.alipayauthenticatorservice.AuthenticatorService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "AlipayAuthenticator_Connection_bindService success"

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "com.alipay.security.mobile.alipayauthenticatorservice.fingerprint.ui.StartTransEmpty"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v4, 0x96

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "AlipayAuthenticator_Connection_bindService success on the second time"

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AlipayAuthenticator_Connection_bindService fail [catch exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v2, "AlipayAuthenticator_Connection_bindService fail [bindservice api return false] "

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "AlipayAuthenticator_Connection_bindService fail [package hash not match] "

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v1, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    iget-object v0, v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-direct {v0, p0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;-><init>(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCommand(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;,
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    invoke-interface {v1, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;->processCommand(Landroid/os/Bundle;)I

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lcom/alipay/security/mobile/util/LogCollect;->parseLog(Landroid/os/Bundle;)V

    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v2, "Null pointer exception"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method

.method private sendCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;,
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;->processCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "Null pointer exception"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v0
.end method

.method private unbindService()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
