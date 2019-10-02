.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;
.super Landroid/webkit/WebViewClient;
.source "BannerAdView.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$1002(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Z)Z

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;->onAdLoaded()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$600(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;->setHiJackUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;->onAdClicked()V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    iget-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$3;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {p2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$600(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$900(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Lcom/miui/zeus/columbus/ad/enity/BannerAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    const/4 p1, 0x1

    return p1
.end method
