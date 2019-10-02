.class public Lcom/miui/video/base/ad/mediation/entity/MediationEntity;
.super Lcom/miui/video/framework/base/ui/BaseUIEntity;
.source "MediationEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;
    }
.end annotation


# static fields
.field public static final SOURCE_ADMOB:I = 0x2

.field public static final SOURCE_MI:I = 0x4

.field public static final SOURCE_NATIVE_FB:I = 0x1

.field public static final SOURCE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediationEntity"


# instance fields
.field public interval:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval"
    .end annotation
.end field

.field public isRegisteredOnce:Z

.field private localHasGetNativeAd:Z

.field private localHasLoadSelf:Z

.field public localIsReportImpression:Z

.field public localIsReportPV:Z

.field public transient localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field protected logTimes:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logTimes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mNativeBannerAd:Z

.field private transient nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

.field public preSelf:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pre_self"
    .end annotation
.end field

.field public tagId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_id"
    .end annotation
.end field

.field protected target:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field

.field protected targetAddition:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_addition"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->preSelf:Z

    iput v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->interval:I

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->mNativeBannerAd:Z

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localHasGetNativeAd:Z

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localHasLoadSelf:Z

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->isRegisteredOnce:Z

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localIsReportPV:Z

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localIsReportImpression:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    return-object p0
.end method

.method public static destroyFromTinyCardEntity(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "KEY_MEDIATION_ENTITY"

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->destroy()V

    const-string v0, "KEY_MEDIATION_ENTITY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private ensureAdManager(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    new-instance v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;-><init>(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->setNativeAdManagerListener(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V

    iget-boolean p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->mNativeBannerAd:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    new-instance p2, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;

    invoke-direct {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->setNativeBannerAd(Z)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->build()Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->setLoadConfig(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;)V

    :cond_0
    return-void
.end method

.method private setNativeAd(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    return-void
.end method

.method private toLogString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tagId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pre_self = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->preSelf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearLogTime()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->unregisterView()V

    iput-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    :cond_0
    iput-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    return-void
.end method

.method public getAd(Landroid/content/Context;Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;)Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 3

    const-string v0, "MediationEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->ensureAdManager(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->nativeAdManager:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->getAd()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "MediationEntity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Ad is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const-string p2, "MediationEntity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Ad success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localHasGetNativeAd:Z

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->setNativeAd(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-object p1
.end method

.method public getAdSource()I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v2, :cond_2

    const-string v2, "ab"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-string v2, "fb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const-string v2, "mi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    return v1
.end method

.method public getLogTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getLogTimes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAddition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->targetAddition:Ljava/util/List;

    return-object v0
.end method

.method public hasGetAdSusccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localHasGetNativeAd:Z

    return v0
.end method

.method public hasLoadSelf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localHasLoadSelf:Z

    return v0
.end method

.method public loadAd(Landroid/content/Context;Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MediationEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->ensureAdManager(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    new-instance p1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$1;

    invoke-direct {p1, p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$1;-><init>(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localHasLoadSelf:Z

    return-void
.end method

.method public setIsNatveBannerAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->mNativeBannerAd:Z

    return-void
.end method

.method public setLogTime(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogTimes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->logTimes:Ljava/util/Map;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetAddition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->targetAddition:Ljava/util/List;

    return-void
.end method
