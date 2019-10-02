.class public interface abstract Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
.super Ljava/lang/Object;
.source "INativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;
    }
.end annotation


# virtual methods
.method public abstract dislikeAndReport(Landroid/content/Context;)V
.end method

.method public abstract dislikeAndReport(Landroid/content/Context;I)V
.end method

.method public abstract getAdBody()Ljava/lang/String;
.end method

.method public abstract getAdCallToAction()Ljava/lang/String;
.end method

.method public abstract getAdCoverImageUrl()Ljava/lang/String;
.end method

.method public abstract getAdIconUrl()Ljava/lang/String;
.end method

.method public abstract getAdObject()Ljava/lang/Object;
.end method

.method public abstract getAdPackageName()Ljava/lang/String;
.end method

.method public abstract getAdPriorityIndex()I
.end method

.method public abstract getAdSocialContext()Ljava/lang/String;
.end method

.method public abstract getAdStarRating()D
.end method

.method public abstract getAdTitle()Ljava/lang/String;
.end method

.method public abstract getAdTypeName()Ljava/lang/String;
.end method

.method public abstract getAdWeight()I
.end method

.method public abstract getDspWeight()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasExpired()Z
.end method

.method public abstract isDownLoadApp()Z
.end method

.method public abstract isNativeAd()Z
.end method

.method public abstract isTestAd()Z
.end method

.method public abstract registerViewForInteraction(Landroid/view/View;)Z
.end method

.method public abstract registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/List;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setAdOnClickListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V
.end method

.method public abstract setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V
.end method

.method public abstract setOnAdCompletedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;)V
.end method

.method public abstract setOnAdDislikedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V
.end method

.method public abstract setOnAdDismissedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;)V
.end method

.method public abstract setOnAdRewardedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;)V
.end method

.method public abstract unregisterView()V
.end method
