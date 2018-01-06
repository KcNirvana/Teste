.class Lcom/miui/weather2/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/at;->b:Lcom/miui/weather2/ActivityWeatherMain;

    iput-object p2, p0, Lcom/miui/weather2/at;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/at;->b:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->n(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/at;->b:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->n(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/at;->b:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->n(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v0, p0, Lcom/miui/weather2/at;->a:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/weather2/at;->b:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->o(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/at;->b:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->p(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/at;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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
