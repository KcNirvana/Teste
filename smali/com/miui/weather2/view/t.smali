.class Lcom/miui/weather2/view/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/RefreshableView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/t;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/t;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->i(Lcom/miui/weather2/view/RefreshableView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/t;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->v(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/t;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
