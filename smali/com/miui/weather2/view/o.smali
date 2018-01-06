.class Lcom/miui/weather2/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-static {v2}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-static {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->c(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    iget-object v2, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-static {v2}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/o;->a:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-static {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)Lcom/miui/weather2/view/RadarCloudImageContainer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/RadarCloudImageContainer;->a(F)V

    return-void
.end method
