.class Lcom/miui/weather2/view/onOnePage/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/s;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/s;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    sub-float v2, v0, v4

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/s;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->a(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/s;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->b(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)Landroid/view/View;

    move-result-object v1

    sub-float/2addr v0, v4

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/s;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->a(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
