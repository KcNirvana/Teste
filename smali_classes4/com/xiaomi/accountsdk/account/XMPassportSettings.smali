.class public Lcom/xiaomi/accountsdk/account/XMPassportSettings;
.super Ljava/lang/Object;
.source "XMPassportSettings.java"


# static fields
.field private static mLock:Ljava/lang/Object;

.field private static volatile sApplication:Landroid/app/Application;

.field private static sDeviceId:Ljava/lang/String;

.field private static sNonNullApplicationContextContract:Z

.field private static volatile sOwnerHandleId:Ljava/lang/String;

.field private static sUserAgent:Ljava/lang/String;

.field private static volatile sUserHandleId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendAppInfoInUserAgentIfNeed(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;->containsAppInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;->appendAppInfo()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-object p1
.end method

.method public static declared-synchronized ensureApplicationContext(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;

    if-nez v1, :cond_0

    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application == null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getApplicationContext()Landroid/app/Application;
    .locals 3

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sNonNullApplicationContextContract:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getOwnerHandleId()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sOwnerHandleId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sUserAgent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->appendAppInfoInUserAgentIfNeed(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sUserAgent:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getUserHandleId()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sUserHandleId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setApplicationContext(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application == null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public static setNonNullApplicationContextContract(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sNonNullApplicationContextContract:Z

    return-void
.end method

.method public static declared-synchronized setOwnerHandleId(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sOwnerHandleId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized setUserHandleId(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->sUserHandleId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
