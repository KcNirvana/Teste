.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "BannerAdView.java"


# instance fields
.field private mAdView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->mAdView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    const-string v0, "BannerAdView"

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->mAdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$1500(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$1300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->mAdView:Landroid/view/View;

    new-instance v1, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$ImpressionRunnable;->mAdView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;-><init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method
