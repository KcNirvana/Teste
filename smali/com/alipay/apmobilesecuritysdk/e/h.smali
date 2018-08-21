.class public Lcom/alipay/apmobilesecuritysdk/e/h;
.super Ljava/lang/Object;
.source "SettingsStorage.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)J
    .locals 5

    const-wide/32 v0, 0x5265c00

    const-class v2, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, "update_time_interval"

    invoke-static {p0, v3}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :cond_0
    :goto_0
    monitor-exit v2

    return-wide v0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "update_time_interval"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vkey_valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->writeToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    invoke-static {p0, v0, p1, p2}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->writeToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 3

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "log_switch"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {p0, v2, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "last_machine_boot_time"

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "last_machine_boot_time"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "last_apdid_env"

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "last_apdid_env"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "agent_switch"

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "agent_switch"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "dynamic_key"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Z
    .locals 3

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "log_switch"

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "dynamic_key"

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "webrtc_url"

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    const-class v2, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, "vkeyid_settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vkey_valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->readFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "webrtc_url"

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "alipay_vkey_random"

    const-string/jumbo v2, "random_key"

    const-string/jumbo v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->getDataFromSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wxxzyy_v1"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/localstorage/PublicStorage;->readDataFromPublicArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/DigestUtil;->sha1ByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    const-string/jumbo v0, "alipay_vkey_random"

    const-string/jumbo v2, "random_key"

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->writeDataToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "wxxzyy_v1"

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/localstorage/PublicStorage;->writeDataToPublicArea(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/e/h;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/h;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    invoke-static {p0, v0, p1}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->readFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
