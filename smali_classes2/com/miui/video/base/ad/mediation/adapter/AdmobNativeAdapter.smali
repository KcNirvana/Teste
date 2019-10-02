.class public Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.source "AdmobNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdmobNativeAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;->notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method


# virtual methods
.method public getAdKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "ab"

    return-object v0
.end method

.method public getDefaultCacheTime()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "ab"

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

    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x2719

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->loadAd()V

    return-void
.end method
