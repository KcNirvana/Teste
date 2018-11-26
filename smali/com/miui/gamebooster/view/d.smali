.class final Lcom/miui/gamebooster/view/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oi:Lcom/miui/gamebooster/view/DragGridView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/view/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v0, v4}, Lcom/miui/gamebooster/view/DragGridView;->qF(Lcom/miui/gamebooster/view/DragGridView;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v0}, Lcom/miui/gamebooster/view/DragGridView;->qC(Lcom/miui/gamebooster/view/DragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v0}, Lcom/miui/gamebooster/view/DragGridView;->qB(Lcom/miui/gamebooster/view/DragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v1}, Lcom/miui/gamebooster/view/DragGridView;->qz(Lcom/miui/gamebooster/view/DragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v2}, Lcom/miui/gamebooster/view/DragGridView;->qx(Lcom/miui/gamebooster/view/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v3}, Lcom/miui/gamebooster/view/DragGridView;->qy(Lcom/miui/gamebooster/view/DragGridView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gamebooster/view/DragGridView;->qH(Lcom/miui/gamebooster/view/DragGridView;Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/view/DragGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/d;->oi:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v0}, Lcom/miui/gamebooster/view/DragGridView;->qI(Lcom/miui/gamebooster/view/DragGridView;)V

    return-void
.end method
