.class final Lcom/nostra13/universalimageloader/core/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic blV:I

.field final synthetic blW:I

.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/a;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/a;II)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/p;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iput p2, p0, Lcom/nostra13/universalimageloader/core/p;->blV:I

    iput p3, p0, Lcom/nostra13/universalimageloader/core/p;->blW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/p;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/a;->bjB:Lcom/nostra13/universalimageloader/core/b/b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/p;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/p;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/nostra13/universalimageloader/core/p;->blV:I

    iget v4, p0, Lcom/nostra13/universalimageloader/core/p;->blW:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/b/b;->bFn(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
