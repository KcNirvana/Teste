.class public Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;
.super Ljava/lang/Object;
.source "BezierRadarHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field propertyName:B

.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->propertyName:B

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-byte v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->propertyName:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->propertyName:B

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p1, v2

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->propertyName:B

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->propertyName:B

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    iget-byte v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->propertyName:B

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;->this$0:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
