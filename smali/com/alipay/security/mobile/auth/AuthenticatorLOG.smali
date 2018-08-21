.class public Lcom/alipay/security/mobile/auth/AuthenticatorLOG;
.super Ljava/lang/Object;
.source "AuthenticatorLOG.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final FP_TAG:Ljava/lang/String; = "ifaa_fingerprint"

.field private static final TAG:Ljava/lang/String; = "wearable"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "wearable"

    invoke-static {v0, p0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ifaa_fingerprint"

    invoke-static {v0, p0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ifaa_fingerprint"

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "ifaa_fingerprint"

    invoke-static {p1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "ifaa_fingerprint"

    invoke-static {p0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized fpInfo(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    const-string/jumbo v2, "ifaa_fingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized fpInfo(Ljava/lang/Throwable;)V
    .locals 3

    const-class v1, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ifaa_fingerprint"

    invoke-static {p0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->log_e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized log_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized log_i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
