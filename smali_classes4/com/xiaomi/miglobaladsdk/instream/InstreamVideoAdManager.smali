.class public Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;
.super Ljava/lang/Object;
.source "InstreamVideoAdManager.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InstreamVideoAdManager"


# instance fields
.field private mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

.field private final mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

.field private final mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/instream/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/instream/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V

    new-instance p1, Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-direct {p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string p2, "is_instream"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/instream/a;->a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V

    return-void
.end method

.method private loadInternal(Landroid/view/ViewGroup;ZIIZ)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p4, -0x1

    :cond_2
    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string v0, "container_width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string p3, "container_height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const-string p3, "ad_container_view"

    invoke-virtual {p2, p3, p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExposeExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {p1, p5}, Lcom/xiaomi/miglobaladsdk/instream/a;->a(Z)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "InstreamVideoAdManager"

    const-string p2, "containerView should not be null and layoutParams should not be null"

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->adFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->adLoaded()V

    :cond_0
    return-void
.end method

.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/a;->c()V

    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/a;->d()Z

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

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

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

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/a;->e()V

    :cond_0
    return-void
.end method

.method public preload(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

    return-void
.end method

.method public preload(Landroid/view/ViewGroup;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->loadInternal(Landroid/view/ViewGroup;ZIIZ)V

    return-void
.end method

.method public setInstreamAdCallback(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mLoadParams:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExtraObject(Ljava/lang/Object;)V

    return-void
.end method

.method public showAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->mInstreamVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/instream/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/a;->b()V

    return-void
.end method
