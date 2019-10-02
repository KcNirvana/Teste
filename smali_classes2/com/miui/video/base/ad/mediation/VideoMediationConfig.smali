.class public Lcom/miui/video/base/ad/mediation/VideoMediationConfig;
.super Ljava/lang/Object;
.source "VideoMediationConfig.java"


# static fields
.field private static final COLUMBUS_APP_KEY:Ljava/lang/String; = "GLOBAL_VIDEO"

.field private static final COLUMBUS_APP_SEC:Ljava/lang/String; = "8e2bde9ae06908d72022fa20c358d5d9"

.field private static final COMMON_CONFIG_KEY:Ljava/lang/String; = "miglobaladsdk_commonapp"

.field private static final ENABLE_LOG:Z = true

.field private static final IS_LOCAL_CONFIG:Z = false

.field private static final IS_STAGEING:Z = false

.field private static final IS_TEST:Z = false

.field private static final MEDIATION_APP_ID:Ljava/lang/String; = "com.miui.videoplayer"

.field private static final TAG:Ljava/lang/String; = "VideoMediationConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VideoMediationConfig"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->enableDebug()V

    const-string v0, "ad-default-config.txt"

    invoke-static {p0, v0}, Lcom/miui/video/framework/utils/FileUtils;->readStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->setDefaultConfig(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    const-string v0, "GLOBAL_VIDEO"

    const-string v1, "8e2bde9ae06908d72022fa20c358d5d9"

    invoke-static {p0, v0, v1}, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->setDebugOn(Z)V

    invoke-static {v2}, Lcom/miui/zeus/columbus/ad/AdGlobalSdk;->setStaging(Z)V

    const-string v0, "mi"

    const-string v1, "com.miui.video.base.ad.mediation.adapter.ColumbusNativeAdapter"

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->addAdapterClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fb"

    const-string v1, "com.miui.video.base.ad.mediation.adapter.FacebookNativeAdapter"

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->addAdapterClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ab"

    const-string v1, "com.miui.video.base.ad.mediation.adapter.AdmobNativeAdapter"

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->addAdapterClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fbis"

    const-string v1, "com.miui.video.base.ad.mediation.adapter.FacebookInstreamVideoAdAdapter"

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->addAdapterClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gis"

    const-string v1, "com.miui.video.base.ad.mediation.adapter.GoogleInstreamVideoAdAdapter"

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->addAdapterClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.miui.videoplayer"

    const-string v1, "miglobaladsdk_commonapp"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "VideoMediationConfig"

    const-string v0, "init end  ENABLE_LOG = trueIS_LOCAL_CONFIG = false ; Staging = false ;  is test = false"

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static isEnableLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isTest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
