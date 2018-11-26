.class final Lcom/miui/optimizemanage/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic Ah:Lcom/miui/optimizemanage/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/g;->Ah:Lcom/miui/optimizemanage/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/g;->Ah:Lcom/miui/optimizemanage/b;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->isFinishing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Ae:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/g;->Ah:Lcom/miui/optimizemanage/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/b;->Bb(Lcom/miui/optimizemanage/b;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/g;->Ah:Lcom/miui/optimizemanage/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/b;->Bc(Lcom/miui/optimizemanage/b;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/g;->Ah:Lcom/miui/optimizemanage/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/b;->Ba(Lcom/miui/optimizemanage/b;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
