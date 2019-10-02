.class Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;
.super Ljava/lang/Object;
.source "IMAPlugin.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getAdsLoadedListener()Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v1, "AdsManager loaded"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1900(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1102(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1800(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$2000(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$2100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$2200(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$2002(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z

    :cond_0
    return-void
.end method
