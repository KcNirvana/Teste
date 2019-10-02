.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "BannerAdView.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$000(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    sget-object v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->NETWORK_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$100(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    const-string v0, "BannerAdView"

    const-string v1, "Network is not accessible !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;

    invoke-static {}, Lcom/miui/zeus/columbus/remote/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$000(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$200(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->requestBannerAd(Landroid/content/Context;Lcom/miui/zeus/columbus/ad/enity/AdRequest;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object v0

    const-string v1, "BannerAdView"

    const-string v2, "request ad"

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;->getAdData()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;

    const-string v3, "BannerAdView"

    const-string v4, "load banner ad"

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    new-instance v2, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    iget-object v3, v0, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-virtual {v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorCode()I

    move-result v3

    iget-object v0, v0, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$100(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    sget-object v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$100(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    :cond_4
    :goto_1
    const-string v0, "BannerAdView"

    const-string v1, "No ad Response from server !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    sget-object v2, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->INTERNAL_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$100(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    const-string v1, "BannerAdView"

    const-string v2, "connect exception:"

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
