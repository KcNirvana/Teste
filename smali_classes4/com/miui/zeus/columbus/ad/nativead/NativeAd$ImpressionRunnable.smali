.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAd.java"


# instance fields
.field private mAdView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->mAdView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->mAdView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1100(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$900(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->mAdView:Landroid/view/View;

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$ImpressionRunnable;->mAdView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method
