.class public Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.source "FacebookNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookNativeAdapter"


# instance fields
.field public final MAX_LOAD_ITEM:I

.field private mContext:Landroid/content/Context;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNativeBannerAd:Z

.field mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->MAX_LOAD_ITEM:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mIsNativeBannerAd:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "fb"

    return-object v0
.end method

.method public getDefaultCacheTime()J
    .locals 2

    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "fb"

    return-object p1
.end method

.method public getReportRes(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mExtras:Ljava/util/Map;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mExtras:Ljava/util/Map;

    const-string v0, "load_config_adapter"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mExtras:Ljava/util/Map;

    const-string v0, "load_config_adapter"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->isNativeBannerAd:Z

    iput-boolean p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mIsNativeBannerAd:Z

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->extrasAreValid(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x2719

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mExtras:Ljava/util/Map;

    const-string p2, "placementid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mPlacementId:Ljava/lang/String;

    :try_start_0
    new-instance p1, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;

    invoke-direct {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)V

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "facebook load error"

    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    const-string p2, "FacebookNativeAdapter"

    const-string v0, "Load error"

    invoke-static {p2, v0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
