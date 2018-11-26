.class public Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final xO:[I


# instance fields
.field private xK:[F

.field private xL:Landroid/graphics/Path;

.field private xM:F

.field private xN:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f01003a

    const v1, 0x7f01001f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xO:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xL:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xN:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->zT(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private zT(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xO:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v1, v2, v4

    aput v1, v2, v5

    const/4 v3, 0x2

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    iput-object v2, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xK:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xM:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xN:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xL:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xL:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xN:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xK:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xL:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xM:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xM:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->getDefaultSize(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/optimizemanage/view/OMRoundResizeFrameLayout;->xM:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method
