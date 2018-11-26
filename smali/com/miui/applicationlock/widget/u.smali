.class final Lcom/miui/applicationlock/widget/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic adO:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field final synthetic adP:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/u;->adO:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iput-object p2, p0, Lcom/miui/applicationlock/widget/u;->adP:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->adP:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
