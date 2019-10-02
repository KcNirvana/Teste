.class public Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;
.super Landroid/widget/FrameLayout;
.source "BannerAdView.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/bannerad/IBannerAd;


# static fields
.field private static final IS_PRE_INSTALL:I = 0x1

.field private static final NOT_PRE_INSTALL:I = 0x0

.field private static final SINGLE_AD_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BannerAdView"

.field private static final TEMPLATE_300_250:Ljava/lang/String; = "17.2"

.field private static final TEMPLATE_320_50:Ljava/lang/String; = "17.1"


# instance fields
.field private mAdListener:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

.field private mAdLoaded:Z

.field private mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

.field private mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

.field private final mContext:Landroid/content/Context;

.field private mHtmlWebView:Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

.field private mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

.field private mImpressioned:Z

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    invoke-direct {p2, p1}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mHtmlWebView:Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->event(I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->doTrack(Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressioned:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->tryImpression(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->buildAdRequest()Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdListener:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->isBannerAd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->isRequestSize(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mHtmlWebView:Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->setAdContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->handleClickAction(Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    return-void
.end method

.method private static asIntPixels(ILandroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    int-to-float p0, p0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private buildAdRequest()Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 2

    new-instance v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/ad/enity/AdRequest;-><init>()V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mTagId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->tagId:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->adCount:I

    return-object v0
.end method

.method private doTrack(Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 5

    const-string v0, "BannerAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bannerAd try Track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iget v1, p1, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getClickMonitorUrls()Ljava/util/List;

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

    sget-object v2, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->ANALYTICS_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-direct {p0, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    const-string v2, "BannerAdView"

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

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->getAdTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "ile"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/zeus/columbus/util/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "isPre"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/zeus/columbus/util/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    move-result-object v0

    const-string v2, "ex"

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->getAdPassback()Ljava/lang/String;

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

    const-string p2, "BannerAdView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bannerAd Track success : "

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

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-direct {v0, p1, v1}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;-><init>(ILcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;)V

    return-object v0
.end method

.method private getAdLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v2, "17.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x140

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "17.2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0xfa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/16 v2, 0x11

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->asIntPixels(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->asIntPixels(ILandroid/content/Context;)I

    move-result v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v3

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    iget-object v4, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private handleClickAction(Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 8

    sget-object v0, Lcom/miui/zeus/columbus/util/o;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$4;

    const-string v3, "BannerAdView"

    const-string v4, "handleClickAction"

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$4;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isBannerAd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "17.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "17.2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BannerAdView"

    const-string v0, "template is not banner Type"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
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

.method private isRequestSize(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    sget-object v1, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->BANNER:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "17.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    sget-object v1, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->MEDIUM_RECTANGLE:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    if-ne v0, v1, :cond_1

    const-string v0, "17.2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const-string p1, "BannerAdView"

    const-string v0, "request Size not compile with loaded ad template"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V
    .locals 4

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;

    const-string v2, "BannerAdView"

    const-string v3, "post error"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAdContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->removeAllViews()V

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->getAdLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->registerViewForInteraction(Landroid/view/View;)V

    return-void
.end method

.method private startImpressionMonitor(Landroid/view/View;)V
    .locals 3

    const-string v0, "BannerAdView"

    const-string v1, "startImpressionMonitor"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressioned:Z

    if-eqz v0, :cond_0

    const-string p1, "BannerAdView"

    const-string v0, "already impressioned"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "BannerAdView"

    const-string v0, "view is null"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

    const-string v1, "BannerAdView"

    const-string v2, "LoggingImpression Runnable"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

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
    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-boolean v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdLoaded:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->isConformingDisplay(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdListener:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    invoke-interface {p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;->onLoggingImpression()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->event(I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->doTrack(Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressioned:Z
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
    .locals 2

    const-string v0, "BannerAdView"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mImpressionRunnable:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mHtmlWebView:Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->destroy()V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->removeAllViews()V

    return-void
.end method

.method public getAdPassback()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getAdPassBack()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdTagId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mTagId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mBannerAdInfo:Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdLoaded:Z

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

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mTagId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "BannerAdView"

    const-string v1, "placeId cannot be null"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    if-nez v0, :cond_1

    const-string v0, "BannerAdView"

    const-string v1, "AdSize cannot be null"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/miui/zeus/columbus/util/o;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    const-string v2, "BannerAdView"

    const-string v3, "load ad"

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    iget-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result p2

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->startImpressionMonitor(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mHtmlWebView:Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;

    invoke-direct {v0, p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)V

    invoke-virtual {p1, v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BannerAdView"

    const-string v1, "registerViewForInteraction e :"

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->destroy()V

    :goto_0
    return-void
.end method

.method public setAdEventListener(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdListener:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    return-void
.end method

.method public setAdSize(Lcom/miui/zeus/columbus/ad/bannerad/AdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mAdSize:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->mTagId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tagId can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
