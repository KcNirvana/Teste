.class Lcom/miui/weather2/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/IndexRefreshableView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/IndexRefreshableView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/i;->a:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/i;->a:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/IndexRefreshableView;->a(Lcom/miui/weather2/view/IndexRefreshableView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/view/i;->a:Lcom/miui/weather2/view/IndexRefreshableView;

    invoke-static {v1}, Lcom/miui/weather2/view/IndexRefreshableView;->b(Lcom/miui/weather2/view/IndexRefreshableView;)Lcom/miui/weather2/view/RefreshCloudView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/RefreshCloudView;->setTranslationX(F)V

    return-void
.end method
