.class Lcom/miui/weather2/view/onOnePage/u;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/u;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/u;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/u;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->b(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/u;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/u;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->c(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V

    return-void
.end method
