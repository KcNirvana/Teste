.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "BannerAdView.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

.field final synthetic val$error:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;->val$error:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$2;->val$error:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdListener;->onAdError(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;)V

    :cond_0
    return-void
.end method
