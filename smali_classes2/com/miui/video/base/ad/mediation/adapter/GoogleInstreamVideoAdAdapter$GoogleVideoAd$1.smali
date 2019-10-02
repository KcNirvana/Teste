.class Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;
.super Ljava/lang/Object;
.source "GoogleInstreamVideoAdAdapter.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;


# direct methods
.method constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    iget-object p1, p1, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    const-string v0, "google instream fail to load"

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$500(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    iget-object v0, v0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$602(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    iget-object p1, p1, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    iget-object p1, p1, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    iget-object p1, p1, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init()V

    return-void
.end method
