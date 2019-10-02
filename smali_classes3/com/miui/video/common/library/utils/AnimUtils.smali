.class public Lcom/miui/video/common/library/utils/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# static fields
.field private static final ANIMATE_DURATION:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RotateAnimation(Landroid/view/View;FF)V
    .locals 8

    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 p1, 0x1

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p2, 0x0

    invoke-virtual {v7, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    invoke-virtual {p0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animBottomIn(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/library/R$anim;->anim_bottom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Lcom/miui/video/common/library/utils/AnimUtils$6;

    invoke-direct {p2, p1}, Lcom/miui/video/common/library/utils/AnimUtils$6;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animBottomOut(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/library/R$anim;->anim_bottom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Lcom/miui/video/common/library/utils/AnimUtils$5;

    invoke-direct {p2, p1}, Lcom/miui/video/common/library/utils/AnimUtils$5;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animHide(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/library/R$anim;->anim_hide:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Lcom/miui/video/common/library/utils/AnimUtils$1;

    invoke-direct {p2, p1}, Lcom/miui/video/common/library/utils/AnimUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animShow(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/library/R$anim;->anim_show:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Lcom/miui/video/common/library/utils/AnimUtils$2;

    invoke-direct {p2, p1}, Lcom/miui/video/common/library/utils/AnimUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animTopIn(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/library/R$anim;->anim_top_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Lcom/miui/video/common/library/utils/AnimUtils$4;

    invoke-direct {p2, p1}, Lcom/miui/video/common/library/utils/AnimUtils$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static animTopOut(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/library/R$anim;->anim_top_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    if-nez p5, :cond_2

    new-instance p2, Lcom/miui/video/common/library/utils/AnimUtils$3;

    invoke-direct {p2, p1}, Lcom/miui/video/common/library/utils/AnimUtils$3;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static animator(Landroid/animation/ObjectAnimator;JILandroid/view/animation/Interpolator;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    move-wide p1, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-gtz p3, :cond_2

    const-wide/16 p1, 0x12c

    goto :goto_0

    :cond_2
    int-to-long p1, p3

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static animatorBottomIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewHeight(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static animatorBottomOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewHeight(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static animatorHide(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/AnimUtils;->eHideListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/miui/video/common/library/utils/AnimUtils;->animator(Landroid/animation/ObjectAnimator;JILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static animatorHide(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 9

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorHide(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static animatorLeftIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewWidth(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static animatorLeftOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewWidth(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static animatorRightIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewWidth(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static animatorRightOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewWidth(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/AnimUtils;->eShowListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/miui/video/common/library/utils/AnimUtils;->animator(Landroid/animation/ObjectAnimator;JILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static animatorShow(Landroid/content/Context;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animatorTopIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewHeight(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static animatorTopOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0}, Lcom/miui/video/common/library/utils/ViewUtils;->getViewHeight(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/animation/ObjectAnimator;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static eHideListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/utils/AnimUtils$8;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/utils/AnimUtils$8;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private static eShowListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/utils/AnimUtils$7;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/utils/AnimUtils$7;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static getAnimScaleTranslate(Landroid/view/View;IIFLandroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimatorScaleX(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimatorScaleY(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getAnimatorSet(JJLandroid/animation/TimeInterpolator;[Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static getAnimatorToX(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 3

    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimatorToY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 3

    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
