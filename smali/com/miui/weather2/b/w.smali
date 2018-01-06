.class Lcom/miui/weather2/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/b/t;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/t;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/w;->a:Lcom/miui/weather2/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/weather2/b/w;->a:Lcom/miui/weather2/b/t;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {v1, v0}, Lcom/miui/weather2/b/t;->a(Lcom/miui/weather2/b/t;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    return-void
.end method
