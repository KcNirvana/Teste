.class public Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field private static final aoG:[I


# instance fields
.field private aoH:[F

.field private aoI:Landroid/graphics/Path;

.field private aoJ:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f01003a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoG:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoI:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoJ:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->ave(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ave(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoG:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v1, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    iput-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoH:[F

    invoke-virtual {p0, v3}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoJ:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoI:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoI:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoJ:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoH:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->aoI:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
