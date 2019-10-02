.class public abstract Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.super Ljava/lang/Object;
.source "BaseNativeAd.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;


# static fields
.field public static final KEY_AD_CONTAINER_VIEW:Ljava/lang/String; = "ad_container_view"

.field public static final KEY_AD_TYPE_NAME:Ljava/lang/String; = "ad_type_name"

.field public static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field public static final KEY_CACHE_TIME:Ljava/lang/String; = "cache_time"

.field public static final KEY_CHECK_VIEW:Ljava/lang/String; = "cm_check_view"

.field public static final KEY_CONTAINER_HEIGHT:Ljava/lang/String; = "container_height"

.field public static final KEY_CONTAINER_WIDTH:Ljava/lang/String; = "container_width"

.field public static final KEY_EXTRA_OBJECT:Ljava/lang/String; = "extra_object"

.field public static final KEY_FILTER_ADMOB_CONTENT_AD:Ljava/lang/String; = "FILTER_ADMOB_CONTENT_AD"

.field public static final KEY_FILTER_ADMOB_INSTALL_AD:Ljava/lang/String; = "FILTER_ADMOB_INSTALL_AD"

.field public static final KEY_IS_BANNER:Ljava/lang/String; = "is_banner"

.field public static final KEY_IS_INSTREAM:Ljava/lang/String; = "is_instream"

.field public static final KEY_LOAD_CONFIG_ADAPTER:Ljava/lang/String; = "load_config_adapter"

.field public static final KEY_LOAD_LIST:Ljava/lang/String; = "ad_load_list"

.field public static final KEY_LOAD_SIZE:Ljava/lang/String; = "load_size"

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementid"

.field public static final KEY_POSITIONID:Ljava/lang/String; = "positionid"

.field public static final KEY_RCV_REPORT_RES:Ljava/lang/String; = "rcv_report_res"

.field public static final KEY_REPORT_PKGNAME:Ljava/lang/String; = "report_pkg_name"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:D

.field private k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

.field private l:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

.field private m:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

.field protected mExtraReportParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

.field private o:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:J

.field private s:J

.field private t:I

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->h:Z

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->r:J

    return-void
.end method


# virtual methods
.method public dislikeAndReport(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public dislikeAndReport(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public getAdBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCoverImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPriorityIndex()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->q:I

    return v0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAdStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->j:D

    return-wide v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWeight()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->t:I

    return v0
.end method

.method public getDspWeight()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->u:Ljava/util/Map;

    return-object v0
.end method

.method public getExtPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->p:Ljava/util/List;

    return-object v0
.end method

.method public getExtraReportParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->mExtraReportParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRawString(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public hasExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->r:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->s:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownLoadApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->h:Z

    return v0
.end method

.method public isNativeAd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTestAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->i:Z

    return v0
.end method

.method public notifyNativeAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->l:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->l:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;->onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public notifyNativeAdImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;->onLoggingImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public notifyRewardedAdCompleted(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->n:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->n:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;->onAdCompleted(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public notifyRewardedAdDismissed(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->o:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->o:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;->onAdDismissed(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public notifyRewardedAdRewarded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;->onAdRewarded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/List;Ljava/util/Map;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public setAdBody(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->g:Ljava/lang/String;

    return-void
.end method

.method public setAdCallToAction(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->e:Ljava/lang/String;

    return-void
.end method

.method public setAdCoverImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->a:Ljava/lang/String;

    return-void
.end method

.method public setAdIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->b:Ljava/lang/String;

    return-void
.end method

.method public setAdOnClickListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->l:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    return-void
.end method

.method public setAdPriorityIndex(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->q:I

    return-void
.end method

.method public setAdSocialContext(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->f:Ljava/lang/String;

    return-void
.end method

.method public setAdStarRate(D)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->j:D

    return-void
.end method

.method public setAdWeight(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->t:I

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->s:J

    return-void
.end method

.method public setDspWeight(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->u:Ljava/util/Map;

    return-void
.end method

.method public setExtPics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->p:Ljava/util/List;

    return-void
.end method

.method public setExtraReportParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->mExtraReportParams:Ljava/util/Map;

    return-void
.end method

.method public setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    return-void
.end method

.method public setIsDownloadApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->h:Z

    return-void
.end method

.method public setIsTestAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->i:Z

    return-void
.end method

.method public setOnAdCompletedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->n:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

    return-void
.end method

.method public setOnAdDislikedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOnAdDismissedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->o:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

    return-void
.end method

.method public setOnAdRewardedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->d:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->c:Ljava/lang/String;

    return-void
.end method
