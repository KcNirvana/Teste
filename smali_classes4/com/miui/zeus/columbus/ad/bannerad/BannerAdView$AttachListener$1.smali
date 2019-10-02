.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener$1;
.super Ljava/lang/Object;
.source "BannerAdView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$1300(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener$1;->this$1:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView$AttachListener$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;->access$1500(Lcom/miui/zeus/columbus/ad/bannerad/BannerAdView;Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
