.class final Lcom/miui/optimizemanage/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic Ai:Lcom/miui/optimizemanage/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/h;->Ai:Lcom/miui/optimizemanage/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/optimizemanage/h;->Ai:Lcom/miui/optimizemanage/b;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/optimizemanage/b;->Bd(Lcom/miui/optimizemanage/b;J)V

    return-void
.end method
