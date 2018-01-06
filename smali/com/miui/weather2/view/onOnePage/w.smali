.class Lcom/miui/weather2/view/onOnePage/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->c(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/miui/weather2/tools/al;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IF)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->f(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v4}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->g(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/weather2/tools/al;->a(Ljava/util/ArrayList;III)Landroid/graphics/Path;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;Landroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/w;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->invalidate()V

    return-void
.end method
