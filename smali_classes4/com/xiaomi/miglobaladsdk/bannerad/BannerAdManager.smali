.class public Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

.field private final mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

.field private mContext:Landroid/content/Context;

.field private final mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BannerAdManager"

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/bannerad/a;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/bannerad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V

    new-instance p1, Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-direct {p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string p2, "is_banner"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V

    return-void
.end method

.method private getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private loadInternal(Landroid/view/ViewGroup;ZIIZ)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->px2dp(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->px2dp(Landroid/content/Context;F)I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/16 v0, 0x140

    const/16 v1, 0x32

    :cond_2
    if-eqz p2, :cond_3

    move p3, v0

    :cond_3
    if-eqz p2, :cond_4

    move p4, v1

    :cond_4
    const-string p2, "BannerAdManager"

    const-string v0, "containerView is not null"

    invoke-static {p2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string v0, "ad_container_view"

    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string p2, "container_width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string p2, "container_height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    invoke-virtual {p1, p5}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a(Z)V

    return-void

    :cond_5
    :goto_0
    const-string p1, "BannerAdManager"

    const-string p2, "containerView should not be null and layoutParams should not be null"

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private px2dp(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;->adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;->adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;->adFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;->adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;->adLoaded()V

    :cond_0
    return-void
.end method

.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->c()Z

    move-result v0

    return v0
.end method

.method public loadAd(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

    return-void
.end method

.method public loadAd(Landroid/view/ViewGroup;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

    return-void
.end method

.method public preLoadAd(Landroid/view/ViewGroup;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

    return-void
.end method

.method public setBannerAdCallback(Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdCallback:Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdCallback;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExtraObject(Ljava/lang/Object;)V

    return-void
.end method

.method public showAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/BannerAdManager;->mBannerAdManagerInternal:Lcom/xiaomi/miglobaladsdk/bannerad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a()V

    return-void
.end method
