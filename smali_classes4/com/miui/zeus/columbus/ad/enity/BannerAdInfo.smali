.class public Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;
.super Lcom/miui/zeus/columbus/ad/enity/AdInfoEntityBase;
.source "BannerAdInfo.java"


# static fields
.field private static final DEFAULT_EXPIRED_TIME:J

.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "BannerAdInfo"


# instance fields
.field private mAdBrand:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private mAdDescription:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "summary"
    .end annotation
.end field

.field private mAdInfoLoadTime:J

.field private mAdJumpControl:Lcom/miui/zeus/columbus/common/JumpControl;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "jumpControl"
    .end annotation
.end field

.field private mAdStarRate:D
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "adStarRate"
    .end annotation
.end field

.field private mCallToAction:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "buttonName"
    .end annotation
.end field

.field private mClickMonitorUrls:Ljava/util/List;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "clickMonitorUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadPackageName:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "packageName"
    .end annotation
.end field

.field private mDspName:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "dspName"
    .end annotation
.end field

.field private mExpiredTime:J

.field private mHiJackUrl:Ljava/lang/String;

.field private mIconImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "iconUrl"
    .end annotation
.end field

.field private mLandingPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "landingPageUrl"
    .end annotation
.end field

.field private mMainImageUrl:Ljava/util/List;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "imgUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSponsored:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "adMark"
    .end annotation
.end field

.field private mTargetType:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "targetType"
    .end annotation
.end field

.field private mTemplate:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "template"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mViewMonitorUrls:Ljava/util/List;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "viewMonitorUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/miui/zeus/columbus/util/p;->e:I

    mul-int/lit8 v0, v0, 0x28

    int-to-long v0, v0

    sput-wide v0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->DEFAULT_EXPIRED_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/AdInfoEntityBase;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mAdInfoLoadTime:J

    sget-wide v0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->DEFAULT_EXPIRED_TIME:J

    iput-wide v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mExpiredTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mViewMonitorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mClickMonitorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mMainImageUrl:Ljava/util/List;

    return-void
.end method

.method public static final deserialize(Lorg/json/JSONObject;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;
    .locals 2

    const-class v0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BannerAdInfo"

    invoke-static {v0, p0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    return-object p0
.end method


# virtual methods
.method public getAdBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mAdDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAdBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mAdBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCoverImageUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mMainImageUrl:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mMainImageUrl:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAdIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdJumpControl()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mAdJumpControl:Lcom/miui/zeus/columbus/common/JumpControl;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/common/JumpControl;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getAdStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mAdStarRate:D

    return-wide v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getClickMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mClickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mDownloadPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDspName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mDspName:Ljava/lang/String;

    return-object v0
.end method

.method public getHiJackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mHiJackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mLandingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mSponsored:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BannerAdInfo"

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mTargetType:I

    return v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mViewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public hasExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mAdInfoLoadTime:J

    iget-wide v2, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mExpiredTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/zeus/columbus/util/p;->a(JJ)Z

    move-result v0

    return v0
.end method

.method public isBannerAd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDownLoadApp()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setHiJackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->mHiJackUrl:Ljava/lang/String;

    return-void
.end method
