.class public Lcom/miui/antivirus/ui/LineAnimationView;
.super Landroid/view/View;
.source ""


# instance fields
.field private api:Landroid/view/animation/Interpolator;

.field private apj:Lcom/miui/antivirus/ui/a;

.field private apk:J

.field private apl:F

.field private apm:Ljava/util/List;

.field private apn:J

.field private apo:J

.field private app:Z

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apk:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apn:J

    new-instance v0, Landroid/view/animation/CycleInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->api:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->app:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    new-instance v0, Lcom/miui/antivirus/ui/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/ui/a;-><init>(Lcom/miui/antivirus/ui/LineAnimationView;Lcom/miui/antivirus/ui/a;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apk:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apn:J

    new-instance v0, Landroid/view/animation/CycleInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->api:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->app:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    new-instance v0, Lcom/miui/antivirus/ui/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/ui/a;-><init>(Lcom/miui/antivirus/ui/LineAnimationView;Lcom/miui/antivirus/ui/a;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    return-void
.end method

.method private avI(J)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    iget-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    iget-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    iget-wide v2, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apn:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    iget-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apo:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apn:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/miui/antivirus/ui/LineAnimationView;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/antivirus/ui/LineAnimationView;->api:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    int-to-float v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v2, v0

    iget v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    int-to-float v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/a;->avL()I

    move-result v5

    if-lt v5, v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/a;->avL()I

    move-result v5

    if-gt v5, v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/a;->reset()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/a;

    invoke-static {v0, p1, p2}, Lcom/miui/antivirus/ui/a;->avP(Lcom/miui/antivirus/ui/a;J)V

    goto :goto_1

    :cond_2
    int-to-float v0, v1

    iput v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    iget v1, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apl:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/a;->avN(I)V

    return-void
.end method

.method static synthetic avJ(Lcom/miui/antivirus/ui/LineAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->mWidth:I

    return v0
.end method


# virtual methods
.method public avG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/ui/LineAnimationView;->app:Z

    return-void
.end method

.method public avH(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/a;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/LineAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/a;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/LineAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/a;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->app:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apk:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apn:J

    const-wide/16 v4, 0x4

    div-long/2addr v0, v4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/miui/antivirus/ui/LineAnimationView;->avI(J)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/a;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/a;->avK(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apk:J

    sub-long v0, v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/a;->avK(Landroid/graphics/Canvas;)V

    iput-wide v2, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apk:J

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/LineAnimationView;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const v3, 0x7f080027

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    sub-int v0, p4, p2

    iput v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->mWidth:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->mHeight:I

    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/miui/antivirus/ui/LineAnimationView;->mHeight:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/miui/antivirus/ui/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/antivirus/ui/a;-><init>(Lcom/miui/antivirus/ui/LineAnimationView;Lcom/miui/antivirus/ui/a;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/LineAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/ui/a;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/ui/a;->setWidth(F)V

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/a;->avN(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apm:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/a;->setWidth(F)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/LineAnimationView;->apj:Lcom/miui/antivirus/ui/a;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/LineAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/a;->setColor(I)V

    :cond_1
    return-void
.end method
