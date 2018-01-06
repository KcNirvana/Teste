.class Lcom/miui/weather2/b/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/weather2/b/t;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/t;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/y;->b:Lcom/miui/weather2/b/t;

    iput p2, p0, Lcom/miui/weather2/b/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b/y;->b:Lcom/miui/weather2/b/t;

    invoke-static {v0}, Lcom/miui/weather2/b/t;->d(Lcom/miui/weather2/b/t;)[Lcom/miui/weather2/b/m;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/b/y;->a:I

    aget-object v1, v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/b/m;->a(Landroid/graphics/PointF;)V

    return-void
.end method
