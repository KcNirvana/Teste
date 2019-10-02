.class Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;
.super Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;
.source "NativeAdManager.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

.field final synthetic val$error:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;Ljava/lang/String;Ljava/lang/String;Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    iput-object p4, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;->val$error:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-direct {p0, p2, p3}, Lcom/miui/zeus/columbus/common/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;->access$400(Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager;)Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdManager$2;->val$error:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    invoke-interface {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/AdManagerListener;->onAdError(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    :cond_0
    return-void
.end method
