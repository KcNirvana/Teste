.class Lcom/miui/weather2/view/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/RefreshableView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    iget-object v1, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/RefreshableView;->d(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->a(Lcom/miui/weather2/view/RefreshableView;F)F

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->j(Lcom/miui/weather2/view/RefreshableView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->f(Lcom/miui/weather2/view/RefreshableView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/RefreshableView;->k(Lcom/miui/weather2/view/RefreshableView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0, v2}, Lcom/miui/weather2/view/RefreshableView;->c(Lcom/miui/weather2/view/RefreshableView;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->j(Lcom/miui/weather2/view/RefreshableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->l(Lcom/miui/weather2/view/RefreshableView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->f(Lcom/miui/weather2/view/RefreshableView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/RefreshableView;->k(Lcom/miui/weather2/view/RefreshableView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->c(Lcom/miui/weather2/view/RefreshableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->i(Lcom/miui/weather2/view/RefreshableView;)V

    iget-object v0, p0, Lcom/miui/weather2/view/y;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0, v2}, Lcom/miui/weather2/view/RefreshableView;->d(Lcom/miui/weather2/view/RefreshableView;Z)Z

    goto :goto_0
.end method
