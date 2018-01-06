.class Lcom/miui/weather2/view/ak;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/WeatherDynamicListView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$402(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/ak;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v1, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$000(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0, v4, v5}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$102(Lcom/miui/weather2/view/WeatherDynamicListView;J)J

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0, v4, v5}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$002(Lcom/miui/weather2/view/WeatherDynamicListView;J)J

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0, v4, v5}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$202(Lcom/miui/weather2/view/WeatherDynamicListView;J)J

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0, v6}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$302(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->invalidate()V

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0, v6}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$402(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-boolean v0, p0, Lcom/miui/weather2/view/ak;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$500(Lcom/miui/weather2/view/WeatherDynamicListView;)Lcom/miui/weather2/view/WeatherDynamicListView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$500(Lcom/miui/weather2/view/WeatherDynamicListView;)Lcom/miui/weather2/view/WeatherDynamicListView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/weather2/view/WeatherDynamicListView$b;->b()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/ak;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/miui/weather2/view/ak;->b:Z

    return-void
.end method
