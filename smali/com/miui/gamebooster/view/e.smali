.class final Lcom/miui/gamebooster/view/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oj:Lcom/miui/gamebooster/view/DragGridView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/view/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v0}, Lcom/miui/gamebooster/view/DragGridView;->qw(Lcom/miui/gamebooster/view/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v1}, Lcom/miui/gamebooster/view/DragGridView;->qv(Lcom/miui/gamebooster/view/DragGridView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    invoke-static {v1}, Lcom/miui/gamebooster/view/DragGridView;->qw(Lcom/miui/gamebooster/view/DragGridView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/view/DragGridView;->smoothScrollBy(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, p0, Lcom/miui/gamebooster/view/e;->oj:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, v1, Lcom/miui/gamebooster/view/DragGridView;->ns:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gamebooster/view/DragGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
