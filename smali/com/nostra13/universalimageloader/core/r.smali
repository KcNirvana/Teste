.class final Lcom/nostra13/universalimageloader/core/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/a;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/r;->this$0:Lcom/nostra13/universalimageloader/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/r;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/a;->bjx:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/r;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/r;->this$0:Lcom/nostra13/universalimageloader/core/a;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/b/a;->bFl(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
