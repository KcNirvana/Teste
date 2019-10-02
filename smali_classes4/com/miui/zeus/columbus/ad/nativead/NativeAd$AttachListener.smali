.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->onViewAttachedToWindow(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$900(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    new-instance v1, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener$1;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1002(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1000(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$1002(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AttachListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->unregisterView()V

    return-void
.end method
