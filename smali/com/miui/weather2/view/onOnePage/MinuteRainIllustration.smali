.class public Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Z

.field private g:Z

.field private h:Lcom/miui/weather2/structures/MinuteRainData;

.field private i:Landroid/animation/ValueAnimator;

.field private j:[Lcom/miui/weather2/tools/ak;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/Handler;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;Lcom/miui/weather2/view/onOnePage/w;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->m:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->c()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getNextFrameParticleAndInvalidate()V

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->c:I

    return-void
.end method

.method static synthetic e(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b:I

    return v0
.end method

.method private e()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/w;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/w;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/x;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/x;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic f(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a:I

    return v0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h:Lcom/miui/weather2/structures/MinuteRainData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainData;->getPrecipitationProbability()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainData;->getPrecipitationProbability()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a:I

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b:I

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->c:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/al;->b(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->k:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/al;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->g()V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->k:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a:I

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b:I

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->c:I

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/al;->a(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->n:I

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a:I

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->k:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/am;->a(Landroid/content/res/Resources;IILjava/util/ArrayList;)[Lcom/miui/weather2/tools/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->c:I

    return v0
.end method

.method private g()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->f:Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getNextFrameParticleAndInvalidate()V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/miui/weather2/tools/ak;->a()V

    invoke-virtual {v5}, Lcom/miui/weather2/tools/ak;->g()Z

    move-result v5

    and-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->g()V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->m:Landroid/os/Handler;

    const-wide/16 v4, 0x14

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method static synthetic h(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Lcom/miui/weather2/structures/MinuteRainData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h:Lcom/miui/weather2/structures/MinuteRainData;

    return-object v0
.end method

.method static synthetic i(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->k:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->f:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->g()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->j:[Lcom/miui/weather2/tools/ak;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->j()F

    move-result v4

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->k()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->i()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->h()Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->j()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3}, Lcom/miui/weather2/tools/ak;->k()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFirstPageViewFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->g:Z

    return-void
.end method

.method setMinuteRainData(Lcom/miui/weather2/structures/MinuteRainData;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h:Lcom/miui/weather2/structures/MinuteRainData;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->h:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainData;->getRoughWeatherType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->setWeatherType(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->f()V

    return-void
.end method

.method public setWeatherType(I)V
    .locals 3

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->n:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
