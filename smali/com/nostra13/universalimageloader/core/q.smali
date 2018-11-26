.class final Lcom/nostra13/universalimageloader/core/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic blX:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field final synthetic blY:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/a;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/a;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/q;->blX:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/q;->blY:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/a;->bGt(Lcom/nostra13/universalimageloader/core/a;)Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/d;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/n;->bHX(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/e/d;->bFU(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/a;->bjx:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/q;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/c;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/q;->blX:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/q;->blY:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/b/a;->bco(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/c;)V

    return-void
.end method
