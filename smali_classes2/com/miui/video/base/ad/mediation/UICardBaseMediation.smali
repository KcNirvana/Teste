.class public abstract Lcom/miui/video/base/ad/mediation/UICardBaseMediation;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardBaseMediation.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;


# static fields
.field public static final KEY_MEDIATION_ENTITY:Ljava/lang/String; = "KEY_MEDIATION_ENTITY"

.field private static final TAG:Ljava/lang/String; = "UICardBaseMediation"


# instance fields
.field protected mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private mOnSelfLoadListener:Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;

.field protected mShowingNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field protected mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private mUIRecyclerListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/feed/UIRecyclerListView;",
            ">;"
        }
    .end annotation
.end field

.field protected vNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

.field protected vUnifiedNativeAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mShowingNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    new-instance p1, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;

    invoke-direct {p1, p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;-><init>(Lcom/miui/video/base/ad/mediation/UICardBaseMediation;)V

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mOnSelfLoadListener:Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mShowingNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    new-instance p1, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;

    invoke-direct {p1, p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;-><init>(Lcom/miui/video/base/ad/mediation/UICardBaseMediation;)V

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mOnSelfLoadListener:Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/ad/mediation/UICardBaseMediation;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->getAdAndShow()Z

    move-result p0

    return p0
.end method

.method private getAdAndShow()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mOnSelfLoadListener:Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getAd(Landroid/content/Context;Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;)Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->setMediationEntity(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Z)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private unregisterNativeAd()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getAdSource()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->unregisterView()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract clearViews()V
.end method

.method protected deleteSelf()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mUIRecyclerListView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mUIRecyclerListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerListView;->deleteItemByEntity(Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/utils/ReportUtils;->reportClose(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V

    :cond_1
    return-void
.end method

.method public filterMediationEntity(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/ad/mediation/entity/MediationEntity;
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/internal/GlobalGson;->get()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtraData()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPageFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->setPageFlag(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getCurNativeAd()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIsNativeBannerAd()Z
.end method

.method public isMinePlaceId(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v2, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onUIAttached()V
    .locals 2

    const-string v0, "UICardBaseMediation"

    const-string v1, "onUIAttached"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIDetached()V
    .locals 2

    const-string v0, "UICardBaseMediation"

    const-string v1, "onUIDetached"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIHide()V
    .locals 2

    const-string v0, "UICardBaseMediation"

    const-string v1, "onUIHide"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIShow()V
    .locals 2

    const-string v0, "UICardBaseMediation"

    const-string v1, "onUIShow"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract regiserNativeAd()V
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_6

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getPageFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setPageFlag(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v0, "KEY_MEDIATION_ENTITY"

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->filterMediationEntity(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "UICardBaseMediation"

    const-string p2, "server data error, mediationEntity is null"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->clearViews()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->getIsNativeBannerAd()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->setIsNatveBannerAd(Z)V

    const-string v0, "UICardBaseMediation"

    const-string v1, "data success"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "KEY_MEDIATION_ENTITY"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/utils/ReportUtils;->reportPV(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->hasGetAdSusccess()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UICardBaseMediation"

    const-string v1, "has already get , to setMediationEntity"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mShowingNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->getCurNativeAd()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->clearViews()V

    :cond_2
    iget-object v0, p1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localNativeAd:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->setMediationEntity(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->clearViews()V

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->getAdAndShow()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->hasLoadSelf()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mOnSelfLoadListener:Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->loadAd(Landroid/content/Context;Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->clearViews()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->clearViews()V

    :cond_6
    :goto_0
    return-void
.end method

.method public abstract setMediationEntity(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Z)V
.end method

.method public setUIRecyclerListView(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/feed/UIRecyclerListView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->mUIRecyclerListView:Ljava/lang/ref/WeakReference;

    return-void
.end method
