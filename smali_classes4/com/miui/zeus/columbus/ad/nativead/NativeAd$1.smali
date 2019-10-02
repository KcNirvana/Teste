.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAd.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->NETWORK_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    const-string v0, "NativeAd"

    const-string v1, "Network is not accessible !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdServer;

    invoke-static {}, Lcom/miui/zeus/columbus/remote/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdServer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$200(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdServer;->requestNativeAd(Landroid/content/Context;Lcom/miui/zeus/columbus/ad/enity/AdRequest;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object v8

    const-string v0, "NativeAd"

    const-string v1, "request ad"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->getAdData()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;

    const-string v5, "NativeAd"

    const-string v6, "load ad"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1$1;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/miui/zeus/columbus/remote/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    iget-object v2, v8, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorCode()I

    move-result v2

    iget-object v3, v8, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-virtual {v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    :cond_4
    :goto_1
    const-string v0, "NativeAd"

    const-string v1, "No ad Response from server !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    sget-object v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->INTERNAL_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    const-string v1, "NativeAd"

    const-string v2, "connect exception:"

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
