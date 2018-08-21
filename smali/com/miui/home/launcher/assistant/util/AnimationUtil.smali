.class public Lcom/miui/home/launcher/assistant/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationUtil"

.field private static mAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandView(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->isAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "AnimationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expandView height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/assistant/util/AnimationUtil$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/assistant/util/AnimationUtil$2;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v2, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    const-string/jumbo v2, "AnimationUtil"

    const-string/jumbo v3, "expandView start"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAnimationRunning()Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized shrinkView(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v2, Lcom/miui/home/launcher/assistant/util/AnimationUtil;

    monitor-enter v2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const-string/jumbo v1, "AnimationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shrinkView height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/assistant/util/AnimationUtil$3;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/assistant/util/AnimationUtil$4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const-string/jumbo v1, "AnimationUtil"

    const-string/jumbo v3, "shrinkView start"

    invoke-static {v1, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static startTranAni(Landroid/view/View;Ljava/lang/String;FF)V
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
