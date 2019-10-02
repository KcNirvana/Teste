.class Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAdManager.java"


# instance fields
.field final synthetic this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

.field final synthetic val$ads:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->val$ads:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->val$ads:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    sget-object v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->NO_FILL:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;->onAdError(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    :cond_0
    const-string v0, "NativeAdManager"

    const-string v1, "No ads from server !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->val$ads:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->val$ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    new-instance v2, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v3, v3, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$000(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v4, v4, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v4}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$500(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->setLoadedAdInfo(Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;)V

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v1, v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$200(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$602(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Z)Z

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1$1;->this$1:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$1;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;->onAdsLoaded()V

    :cond_3
    return-void
.end method
