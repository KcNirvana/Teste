.class public Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;
.super Ljava/lang/Object;
.source "ColumbusNativeAdapter.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColumbusAdsAdapter"
.end annotation


# instance fields
.field private mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadNativeAd(I)V
    .locals 3

    const-string v0, "ColumbusNativeAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNativeAd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {v1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$100(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {v2}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$000(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-virtual {p1, p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->setListener(Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->loadAds()V

    return-void
.end method

.method public onAdError(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 3

    const-string v0, "ColumbusNativeAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Columbus NativeAdManager error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$700(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onAdsLoaded()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->getRequestAdsSize()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->getAdsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->mNativeAdsMgr:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-virtual {v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->getAdsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;

    iget-object v5, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-direct {v4, v5, v3}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "ColumbusNativeAdAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultPool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$500(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/util/List;)V

    :goto_2
    return-void
.end method
