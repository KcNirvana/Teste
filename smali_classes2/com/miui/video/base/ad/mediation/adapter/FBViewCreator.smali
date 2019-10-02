.class public Lcom/miui/video/base/ad/mediation/adapter/FBViewCreator;
.super Ljava/lang/Object;
.source "FBViewCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdChoiceView(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Lcom/facebook/ads/NativeAdLayout;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/facebook/ads/NativeAdBase;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    check-cast p1, Lcom/facebook/ads/NativeAdBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
