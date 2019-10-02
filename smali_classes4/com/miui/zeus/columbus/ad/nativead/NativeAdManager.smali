.class public Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;
.super Ljava/lang/Object;
.source "NativeAdManager.java"


# static fields
.field private static final SINGLE_AD_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NativeAdManager"


# instance fields
.field private mAdsLoaded:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

.field private mNativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/ad/nativead/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestAdSize:I

.field private final mTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mAdsLoaded:Z

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mTagId:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mRequestAdSize:I

    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mRequestAdSize:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mAdsLoaded:Z

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mTagId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mRequestAdSize:I

    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mRequestAdSize:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

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

.method static synthetic access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;I)Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->buildAdRequest(I)Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mListener:Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mTagId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mAdsLoaded:Z

    return p1
.end method

.method private buildAdRequest(I)Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 2

    new-instance v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/ad/enity/AdRequest;-><init>()V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mTagId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->tagId:Ljava/lang/String;

    iput p1, v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->adCount:I

    return-object v0
.end method

.method private loadAdWithAdSize(I)V
    .locals 4

    sget-object v0, Lcom/miui/zeus/columbus/util/o;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    const-string v2, "NativeAdManager"

    const-string v3, "load ads"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postAdErrorOnMainThread(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 4

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;

    const-string v2, "NativeAdManager"

    const-string v3, "post error"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getAdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/ad/nativead/NativeAd;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mAdsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRequestAdsSize()I
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isAdsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mAdsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mNativeAds:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->loadAdWithAdSize(I)V

    return-void
.end method

.method public loadAds()V
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mRequestAdSize:I

    invoke-direct {p0, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->loadAdWithAdSize(I)V

    return-void
.end method

.method public setListener(Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->mListener:Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    return-void
.end method
