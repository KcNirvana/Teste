.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "BannerAdView.java"


# instance fields
.field final synthetic this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

.field final synthetic val$ads:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->val$ads:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->val$ads:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    sget-object v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->NO_FILL:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;->onAdError(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "no banner ad !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->val$ads:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->val$ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getTemplate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v3, v3, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v3, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$400(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v3, v3, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v3, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$500(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$602(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    :cond_3
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$600(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$700(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v1, v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$600(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->loadHtmlReponse(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v1, v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$700(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$800(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$1;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    sget-object v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->NO_FILL:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;->onAdError(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    :cond_5
    const-string v0, "BannerAdView"

    const-string v1, "banner Ad not fill !"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
