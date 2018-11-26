.class final Lcom/miui/optimizemanage/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic Aj:Lcom/miui/optimizemanage/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/i;->Aj:Lcom/miui/optimizemanage/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/i;->Aj:Lcom/miui/optimizemanage/b;

    invoke-static {v1}, Lcom/miui/optimizemanage/b;->AY(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/view/RunningProcessView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/optimizemanage/view/RunningProcessView;->zR(I)V

    return-void
.end method
