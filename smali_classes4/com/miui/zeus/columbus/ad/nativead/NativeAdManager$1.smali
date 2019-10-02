.class Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAdManager.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

.field final synthetic val$adSize:I


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    iput p4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->val$adSize:I

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->NETWORK_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    const-string v0, "NativeAdManager"

    const-string v1, "Network is not accessible !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$200(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdServer;

    invoke-static {}, Lcom/miui/zeus/columbus/remote/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdServer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    iget v3, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->val$adSize:I

    invoke-static {v2, v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;I)Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdServer;->requestNativeAd(Landroid/content/Context;Lcom/miui/zeus/columbus/ad/enity/AdRequest;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->getAdData()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;

    const-string v3, "NativeAdManager"

    const-string v4, "load ad"

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    :cond_3
    const-string v0, "NativeAdManager"

    const-string v1, "No ad Response from server !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    sget-object v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->INTERNAL_ERROR:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$100(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    const-string v1, "NativeAdManager"

    const-string v2, "connect exception:"

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
