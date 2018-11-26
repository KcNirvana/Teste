.class final Lcom/miui/applicationlock/widget/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic adJ:Lcom/miui/applicationlock/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/p;->adJ:Lcom/miui/applicationlock/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/p;->adJ:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahs(Lcom/miui/applicationlock/widget/a;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/p;->adJ:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahk(Lcom/miui/applicationlock/widget/a;)Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

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
