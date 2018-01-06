.class Lcom/miui/weather2/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/miui/weather2/view/LoadingView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/LoadingView;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    iput p2, p0, Lcom/miui/weather2/view/k;->a:F

    iput p3, p0, Lcom/miui/weather2/view/k;->b:F

    iput p4, p0, Lcom/miui/weather2/view/k;->c:F

    iput p5, p0, Lcom/miui/weather2/view/k;->d:F

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

    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->a(Lcom/miui/weather2/view/LoadingView;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->b(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/view/k;->a:F

    iget-object v3, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v3}, Lcom/miui/weather2/view/LoadingView;->a(Lcom/miui/weather2/view/LoadingView;)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->c(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/view/k;->b:F

    iget-object v3, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v3}, Lcom/miui/weather2/view/LoadingView;->a(Lcom/miui/weather2/view/LoadingView;)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->d(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/view/k;->a:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->e(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/view/k;->b:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->b(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/view/k;->c:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/k;->e:Lcom/miui/weather2/view/LoadingView;

    invoke-static {v1}, Lcom/miui/weather2/view/LoadingView;->c(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/miui/weather2/view/k;->d:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
