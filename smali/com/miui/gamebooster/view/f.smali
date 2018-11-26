.class final Lcom/miui/gamebooster/view/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic ok:Lcom/miui/gamebooster/view/DragGridView;

.field final synthetic ol:Landroid/view/ViewTreeObserver;

.field final synthetic om:I


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/view/DragGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/f;->ok:Lcom/miui/gamebooster/view/DragGridView;

    iput-object p2, p0, Lcom/miui/gamebooster/view/f;->ol:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/miui/gamebooster/view/f;->om:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/view/f;->ol:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/f;->ok:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, p0, Lcom/miui/gamebooster/view/f;->ok:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v1}, Lcom/miui/gamebooster/view/DragGridView;->qA(Lcom/miui/gamebooster/view/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/view/f;->om:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/view/DragGridView;->qG(Lcom/miui/gamebooster/view/DragGridView;II)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/f;->ok:Lcom/miui/gamebooster/view/DragGridView;

    iget v1, p0, Lcom/miui/gamebooster/view/f;->om:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->qE(Lcom/miui/gamebooster/view/DragGridView;I)I

    const/4 v0, 0x1

    return v0
.end method
