.class final Lcom/miui/common/e/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aBD:Lcom/miui/common/e/b;


# direct methods
.method constructor <init>(Lcom/miui/common/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/e/d;->aBD:Lcom/miui/common/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/e/d;->aBD:Lcom/miui/common/e/b;

    invoke-static {v0}, Lcom/miui/common/e/b;->aLk(Lcom/miui/common/e/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/e/d;->aBD:Lcom/miui/common/e/b;

    invoke-static {v1}, Lcom/miui/common/e/b;->aLj(Lcom/miui/common/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/e/c;

    invoke-static {v0}, Lcom/miui/common/e/c;->aLn(Lcom/miui/common/e/c;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/common/e/c;->aLl(Lcom/miui/common/e/c;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/e/d;->aBD:Lcom/miui/common/e/b;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
