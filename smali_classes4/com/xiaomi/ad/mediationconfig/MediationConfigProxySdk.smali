.class public Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;
.super Ljava/lang/Object;
.source "MediationConfigProxySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;
    }
.end annotation


# static fields
.field private static volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 2

    sget-boolean v0, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "MediationConfigProxySdk"

    const-string v1, "You must init MediationConfigSdk before use it !"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getCloudConfig(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getCloudConfig(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "MediationConfig"

    const-string p1, "The params of context, mediationSdkVersion, configTypes, configListener cannot be null or 0!"

    invoke-static {p0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "MediationConfigProxySdk"

    const-string v0, "context can not be null !"

    invoke-static {p0, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->a:Z

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->setApplicationContext(Landroid/content/Context;)V

    return-void
.end method

.method public static setStaging()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->sUseStaging:Z

    return-void
.end method

.method public static setStagingOff()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->sUseStaging:Z

    return-void
.end method
