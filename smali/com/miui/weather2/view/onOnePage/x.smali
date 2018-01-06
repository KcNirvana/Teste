.class Lcom/miui/weather2/view/onOnePage/x;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/x;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/x;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainData;->isParticleFall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/x;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/x;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/x;->a:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
