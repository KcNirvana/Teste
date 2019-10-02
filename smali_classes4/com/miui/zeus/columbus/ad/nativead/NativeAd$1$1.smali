.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAd.java"


# instance fields
.field final synthetic this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

.field final synthetic val$adResponse:Lcom/miui/zeus/columbus/remote/d;

.field final synthetic val$ads:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/miui/zeus/columbus/remote/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->val$ads:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->val$adResponse:Lcom/miui/zeus/columbus/remote/d;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->val$ads:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object v0

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->NO_FILL:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/AdListener;->onAdError(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    :cond_0
    const-string v0, "NativeAd"

    const-string v1, "Ad not fill !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->val$ads:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$402(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Z)Z

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->val$adResponse:Lcom/miui/zeus/columbus/remote/d;

    iget-object v1, v1, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->getAdData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$502(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;)Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;

    iget-object v1, v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/AdListener;->onAdLoaded(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V

    :cond_2
    return-void
.end method
