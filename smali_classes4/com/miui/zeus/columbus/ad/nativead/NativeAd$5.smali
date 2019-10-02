.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAd.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

.field final synthetic val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

.field final synthetic val$clickAreaInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    iput-object p5, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$clickAreaInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;

    invoke-direct {v1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;-><init>()V

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getCustomActionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->setLandingPageUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getDownloadPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->setDownloadPackageName(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getDspName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->setDspName(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->setAdId(J)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getTargetType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->setTargetType(I)Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/msa/internal/adjump/AdInfoBean$Builder;->build()Lcom/miui/msa/internal/adjump/AdInfoBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$adInfo:Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdJumpControl()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleJumpAction(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lorg/json/JSONObject;)Z

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$700(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;I)Lcom/miui/zeus/columbus/ad/nativead/AdEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$5;->val$clickAreaInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$800(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/AdEvent;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeAd"

    const-string v2, "handleClickAction e : "

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
