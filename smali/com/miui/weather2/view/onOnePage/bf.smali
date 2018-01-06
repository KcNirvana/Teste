.class Lcom/miui/weather2/view/onOnePage/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;J)J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bf;->a:Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->invalidate()V

    return-void
.end method
