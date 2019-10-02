.class public Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.source "FacebookInstreamVideoAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookInstreamVideoAdapter"


# instance fields
.field private mContainerView:Landroid/view/ViewGroup;

.field private mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->mContainerView:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public getAdKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "fbis"

    return-object v0
.end method

.method public getDefaultCacheTime()J
    .locals 2

    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "fbis"

    return-object p1
.end method

.method public getReportRes(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
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

    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x2719

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "extra_object"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    :cond_1
    const-string v0, "placementid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "container_width"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v0, "container_height"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v0, "ad_container_view"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const-string v0, "ad_container_view"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->mContainerView:Landroid/view/ViewGroup;

    :cond_2
    const-string p2, "FacebookInstreamVideoAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Landroid/content/Context;Ljava/lang/String;IILcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$1;)V

    invoke-static {p2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->access$100(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;)V

    return-void
.end method
