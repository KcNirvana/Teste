.class public Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;
.super Ljava/lang/Object;
.source "MediationConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediationConfig"

.field private static a:Landroid/os/Handler;

.field public static sUseStaging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCloudConfig(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V
    .locals 6

    new-instance v5, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;

    invoke-direct {v5, p4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;-><init>(Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V

    sget-boolean p4, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->sUseStaging:Z

    if-eqz p4, :cond_0

    const-string p4, "MediationConfig"

    const-string v0, "getCloudConfigStaging"

    invoke-static {p4, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;-><init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V

    invoke-virtual {p4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->resetTime()V

    invoke-virtual {p4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->doRequest()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    move-result-object p4

    invoke-virtual {p4, p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->isServiceSupport(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "MediationConfig"

    const-string v0, "msa service exist ."

    invoke-static {p4, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->requestCloudConfig(I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V

    goto :goto_0

    :cond_1
    const-string p4, "MediationConfig"

    const-string v0, "msa service not exist !"

    invoke-static {p4, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;-><init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V

    invoke-virtual {p4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->doRequest()V

    :goto_0
    return-void
.end method

.method public static getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->saveReturnEmpty(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "MediationConfig"

    const-string v0, "getCloudConfig"

    invoke-static {p1, v0, p0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v1
.end method
