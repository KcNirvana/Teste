.class Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable$1;
.super Ljava/lang/Object;
.source "AdChoicesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable$1;->this$0:Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable$1;->this$0:Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;

    iget-object v0, v0, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/zeus/columbus/ad/AdChoicesView;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/zeus/columbus/ad/AdChoicesView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "AdChoicesView"

    const-string v1, "set success"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
