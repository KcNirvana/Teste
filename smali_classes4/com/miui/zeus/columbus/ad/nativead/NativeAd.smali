.class public Lcom/miui/zeus/columbus/ad/nativead/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/nativead/INativeAd;


# static fields
.field private static final IS_PRE_INSTALL:I = 0x1

.field private static final NOT_PRE_INSTALL:I = 0x0

.field private static final SINGLE_AD_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NativeAd"


# instance fields
.field private mAdListener:Lcom/miui/zeus/columbus/ad/nativead/AdListener;

.field private mAdLoaded:Z

.field private final mContext:Landroid/content/Context;

.field private mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

.field private mImpressioned:Z

.field private mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mTagId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tagId can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->tryImpression(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->buildAdRequest()Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdListener:Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;)Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->handleClickAction(Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->event(I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->doTrack(Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressioned:Z

    return p0
.end method

.method private buildAdRequest()Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 2

    new-instance v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/ad/enity/AdRequest;-><init>()V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mTagId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->tagId:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->adCount:I

    return-object v0
.end method

.method private doTrack(Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iget v1, p1, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v0

    :cond_2
    :goto_0
    const-string v1, "nativeAd"

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/AdAction;->addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->ANALYTICS_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-direct {p0, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    const-string v2, "NativeAd"

    const-string v3, "adAction.addAdMonitor(monitors) error"

    invoke-static {v2, v3, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    const-string v0, "v"

    const-string v2, "v1.0"

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "e"

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "tagId"

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "ile"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/zeus/columbus/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "isPre"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/zeus/columbus/util/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "ex"

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdPassback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    if-eqz p2, :cond_4

    const-string v0, "aarea"

    invoke-virtual {p2}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    :cond_4
    sget-boolean p2, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    if-eqz p2, :cond_5

    const-string p2, "systemadsolution_globalnativestaging"

    goto :goto_2

    :cond_5
    const-string p2, "systemadsolution_globalnative"

    :goto_2
    invoke-static {p2, v1}, Lcom/miui/zeus/columbus/util/q;->a(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V

    const-string p2, "NativeAd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method private event(I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;
    .locals 2

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-direct {v0, p1, v1}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;-><init>(ILcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;)V

    return-object v0
.end method

.method private handleClickAction(Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 8

    sget-object v0, Lcom/miui/zeus/columbus/util/o;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;

    const-string v3, "NativeAd"

    const-string v4, "handleClickAction"

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isConformingDisplay(Landroid/view/View;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/v;->a(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 4

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$2;

    const-string v2, "NativeAd"

    const-string v3, "post error"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$2;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startImpressionMonitor(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressioned:Z

    if-eqz v0, :cond_0

    const-string p1, "NativeAd"

    const-string v0, "already impressioned"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "NativeAd"

    const-string v0, "view is null"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    const-string v1, "NativeAd"

    const-string v2, "LoggingImpression Runnable"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    sget v1, Lcom/miui/zeus/columbus/util/p;->f:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private declared-synchronized tryImpression(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-boolean v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdLoaded:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isConformingDisplay(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdListener:Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    invoke-interface {p1, p0}, Lcom/miui/zeus/columbus/ad/nativead/AdListener;->onLoggingImpression(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->event(I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->doTrack(Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressioned:Z

    const-string p1, "NativeAd"

    const-string v0, "AD impression"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdListener:Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->setAdEventListener(Lcom/miui/zeus/columbus/ad/nativead/AdListener;)V

    return-void
.end method

.method public getAdBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdBrand()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdBrand()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdCoverImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdIconUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdIconUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdPassback()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdPassBack()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdStarRating()D
    .locals 2

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdStarRating()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getAdTagId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mTagId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDownloadPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getDownloadPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDspBrand()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getDspBrand()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDspWeight()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/common/DspWeightConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getDspWeight()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getSponsored()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getWeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hasExpired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloadApp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->isDownLoadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd()V
    .locals 4

    sget-object v0, Lcom/miui/zeus/columbus/util/o;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    const-string v2, "NativeAd"

    const-string v3, "load ad"

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;-><init>()V

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->startImpressionMonitor(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NativeAd"

    const-string v1, "registerViewForInteraction e :"

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->unregisterView()V

    :goto_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "NativeAd"

    const-string p2, "You must provide a content view !"

    invoke-static {p1, p2}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-direct {v1}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;-><init>()V

    new-instance v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$4;

    invoke-direct {v2, p0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$4;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v1, v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->startImpressionMonitor(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "NativeAd"

    const-string v0, "registerViewForInteraction e :"

    invoke-static {p2, v0, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->unregisterView()V

    :goto_2
    return-void
.end method

.method public setAdEventListener(Lcom/miui/zeus/columbus/ad/nativead/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdListener:Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    return-void
.end method

.method setLoadedAdInfo(Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mAdLoaded:Z

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mNativeAdInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    return-void
.end method

.method public unregisterView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;

    :cond_0
    const-string v0, "NativeAd"

    const-string v1, "UnregisterView"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
