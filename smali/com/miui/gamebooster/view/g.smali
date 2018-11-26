.class final Lcom/miui/gamebooster/view/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic on:Lcom/miui/gamebooster/view/DragGridView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/view/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/g;->on:Lcom/miui/gamebooster/view/DragGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/view/g;->on:Lcom/miui/gamebooster/view/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->qD(Lcom/miui/gamebooster/view/DragGridView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/view/g;->on:Lcom/miui/gamebooster/view/DragGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->qD(Lcom/miui/gamebooster/view/DragGridView;Z)Z

    return-void
.end method
