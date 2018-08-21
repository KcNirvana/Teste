.class public Lcom/alipay/mobile/security/senative/APSE;
.super Ljava/lang/Object;
.source "APSE.java"


# static fields
.field public static _instance:Lcom/alipay/mobile/security/senative/APSE; = null

.field private static isLoad:Z = false

.field public static final mVersion:Ljava/lang/String; = "1.1.5"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/security/senative/APSE;->isLoad:Z

    :try_start_0
    const-string/jumbo v0, "APSE_1.1.5"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/security/senative/APSE;->isLoad:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/senative/APSE;
    .locals 3

    const-class v1, Lcom/alipay/mobile/security/senative/APSE;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;

    if-nez v0, :cond_1

    const-class v2, Lcom/alipay/mobile/security/senative/APSE;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/senative/APSE;

    invoke-direct {v0}, Lcom/alipay/mobile/security/senative/APSE;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;

    sget-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/senative/APSE;->loadSo(Landroid/content/Context;)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native getVersion()I
.end method

.method private loadSo(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/alipay/mobile/security/senative/APSE;->isLoad:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "APSE"

    const-string/jumbo v2, "1.1.5"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;->loadSo(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public native encryptAndSignRdsWithWua(Ljava/lang/Object;Ljava/lang/Object;)[B
.end method

.method public native getErrorCode()Ljava/lang/String;
.end method

.method public native init(Ljava/lang/Object;)J
.end method

.method public native isX86Machine()Z
.end method

.method public native nativeHOTP(Ljava/lang/Object;[BJI)Ljava/lang/String;
.end method

.method public native zipEncryptAndSignRdsWithWua(Ljava/lang/Object;Ljava/lang/Object;)[B
.end method
