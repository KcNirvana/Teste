.class Lcom/facebook/ads/AdChoicesView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;ZLcom/facebook/ads/NativeAdLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AdChoicesView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdChoicesView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdChoicesView$1;->a:Lcom/facebook/ads/AdChoicesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView$1;->a:Lcom/facebook/ads/AdChoicesView;

    invoke-static {p1}, Lcom/facebook/ads/AdChoicesView;->a(Lcom/facebook/ads/AdChoicesView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView$1;->a:Lcom/facebook/ads/AdChoicesView;

    invoke-static {p1}, Lcom/facebook/ads/AdChoicesView;->b(Lcom/facebook/ads/AdChoicesView;)Lcom/facebook/ads/NativeAdBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/e;->y()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView$1;->a:Lcom/facebook/ads/AdChoicesView;

    invoke-static {p1}, Lcom/facebook/ads/AdChoicesView;->c(Lcom/facebook/ads/AdChoicesView;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
