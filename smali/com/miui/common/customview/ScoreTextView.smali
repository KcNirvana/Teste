.class public Lcom/miui/common/customview/ScoreTextView;
.super Landroid/widget/TextView;
.source ""


# instance fields
.field private final ayV:I

.field private ayW:I

.field private ayX:I

.field private ayY:Landroid/animation/ObjectAnimator;

.field private ayZ:Landroid/graphics/Typeface;

.field private aza:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/common/customview/ScoreTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x28a

    iput v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayV:I

    iput v1, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    iput v1, p0, Lcom/miui/common/customview/ScoreTextView;->ayW:I

    iput-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiThinTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayZ:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayZ:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/ScoreTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private declared-synchronized aGm(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    :cond_0
    const-string/jumbo v0, "FlipScore"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/common/customview/g;

    invoke-direct {v1, p0}, Lcom/miui/common/customview/g;-><init>(Lcom/miui/common/customview/ScoreTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private aGn(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/ScoreTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic aGo(Lcom/miui/common/customview/ScoreTextView;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    return v0
.end method

.method static synthetic aGp(Lcom/miui/common/customview/ScoreTextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/ScoreTextView;->aGn(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFlipScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayW:I

    return v0
.end method

.method public getTextScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/common/customview/ScoreTextView;->aza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/customview/ScoreTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/common/customview/ScoreTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/miui/common/customview/ScoreTextView;->aza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/customview/ScoreTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/common/customview/ScoreTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setFlipScore(I)V
    .locals 5

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayW:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/common/customview/ScoreTextView;->ayW:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/customview/ScoreTextView;->aGn(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNoPaddings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/ScoreTextView;->aza:Z

    return-void
.end method

.method public setNumber(I)V
    .locals 5

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    if-ne v0, p1, :cond_2

    :cond_0
    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    if-eq v0, p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/customview/ScoreTextView;->aGn(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    return-void

    :cond_2
    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    invoke-direct {p0, v0, p1}, Lcom/miui/common/customview/ScoreTextView;->aGm(II)V

    goto :goto_0
.end method

.method public setScore(I)V
    .locals 5

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    if-ne v0, p1, :cond_2

    :cond_0
    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    if-eq v0, p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/customview/ScoreTextView;->aGn(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    return-void

    :cond_2
    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->ayX:I

    invoke-direct {p0, v0, p1}, Lcom/miui/common/customview/ScoreTextView;->aGm(II)V

    goto :goto_0
.end method
