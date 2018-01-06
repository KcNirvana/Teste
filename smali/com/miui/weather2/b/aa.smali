.class Lcom/miui/weather2/b/aa;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/b/z;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/aa;->a:Lcom/miui/weather2/b/z;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/weather2/b/aa;->a:Lcom/miui/weather2/b/z;

    invoke-static {v0}, Lcom/miui/weather2/b/z;->a(Lcom/miui/weather2/b/z;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/aa;->a:Lcom/miui/weather2/b/z;

    invoke-static {v0}, Lcom/miui/weather2/b/z;->a(Lcom/miui/weather2/b/z;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/weather2/b/aa;->a:Lcom/miui/weather2/b/z;

    invoke-static {v0}, Lcom/miui/weather2/b/z;->a(Lcom/miui/weather2/b/z;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
