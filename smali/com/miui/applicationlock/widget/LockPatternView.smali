.class public Lcom/miui/applicationlock/widget/LockPatternView;
.super Landroid/view/View;
.source ""


# instance fields
.field private acD:J

.field private final acE:Landroid/graphics/Matrix;

.field private acF:I

.field private acG:Landroid/graphics/Bitmap;

.field private acH:Landroid/graphics/Bitmap;

.field private acI:I

.field private acJ:I

.field private acK:[Landroid/graphics/Bitmap;

.field private acL:[Landroid/graphics/Bitmap;

.field private final acM:Landroid/graphics/Matrix;

.field private final acN:Landroid/graphics/Path;

.field private acO:F

.field private acP:I

.field private acQ:I

.field private acR:Z

.field private acS:Z

.field private acT:F

.field private acU:F

.field private acV:F

.field private acW:Z

.field private acX:Z

.field private final acY:Landroid/graphics/Rect;

.field private acZ:Z

.field private ada:Z

.field private adb:Lcom/miui/applicationlock/widget/g;

.field private adc:Landroid/graphics/Paint;

.field private add:Landroid/graphics/Paint;

.field private ade:Ljava/util/ArrayList;

.field private adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

.field private adg:[[Z

.field private adh:Z

.field private adi:F

.field private adj:F

.field private adk:I

.field private adl:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acR:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adc:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v5}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adg:[[Z

    iput v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    iput v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    iput-boolean v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acX:Z

    iput-boolean v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acW:Z

    iput-boolean v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acS:Z

    iput-boolean v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acO:F

    const/16 v0, 0x40

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adk:I

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acT:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acN:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acY:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acE:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acM:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->aix(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adk:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adk:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private aiA()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/widget/g;->aiT(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private aiB()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/g;->aiU()V

    :cond_0
    const v0, 0x7f070801

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiE(I)V

    return-void
.end method

.method private aiC()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aii()V

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private aiD(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    :goto_0
    :sswitch_0
    return p2

    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private aiE(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aif(Lcom/miui/applicationlock/widget/f;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adg:[[Z

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiy()V

    return-void
.end method

.method private aig(FF)Lcom/miui/applicationlock/widget/f;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->air(F)I

    move-result v0

    if-gez v0, :cond_0

    return-object v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiq(F)I

    move-result v1

    if-gez v1, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adg:[[Z

    aget-object v2, v2, v0

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/f;->aiN(II)Lcom/miui/applicationlock/widget/f;

    move-result-object v0

    return-object v0
.end method

.method private aii()V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adg:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private aij(FF)Lcom/miui/applicationlock/widget/f;
    .locals 10

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->aig(FF)Lcom/miui/applicationlock/widget/f;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v5}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v4

    sub-int v6, v1, v4

    invoke-virtual {v5}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v4

    sub-int v7, v1, v4

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v8

    if-lez v6, :cond_5

    move v1, v2

    :goto_0
    add-int/2addr v1, v8

    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_6

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v0

    if-lez v7, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/applicationlock/widget/f;->aiN(II)Lcom/miui/applicationlock/widget/f;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adg:[[Z

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v3

    aget-boolean v1, v1, v3

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aif(Lcom/miui/applicationlock/widget/f;)V

    :cond_3
    invoke-direct {p0, v5}, Lcom/miui/applicationlock/widget/LockPatternView;->aif(Lcom/miui/applicationlock/widget/f;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acS:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->performHapticFeedback(II)Z

    :cond_4
    return-object v5

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private ail(Landroid/graphics/Canvas;IIZII)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acW:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-eq v0, v3, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acK:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acZ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acK:[Landroid/graphics/Bitmap;

    mul-int/lit8 v3, p5, 0x3

    add-int/2addr v3, p6

    aget-object v0, v0, v3

    :goto_0
    move v7, v1

    move v1, v2

    move v2, v7

    :goto_1
    iget-boolean v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ada:Z

    if-eqz v3, :cond_1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acG:Landroid/graphics/Bitmap;

    :cond_1
    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acI:I

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    iget v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acI:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acM:Landroid/graphics/Matrix;

    add-int/2addr v1, p2

    int-to-float v1, v1

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acM:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acI:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acM:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acM:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acI:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acM:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adc:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acL:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acZ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acL:[Landroid/graphics/Bitmap;

    mul-int/lit8 v3, p5, 0x3

    add-int/2addr v3, p6

    aget-object v0, v0, v3

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    move v1, v2

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acG:Landroid/graphics/Bitmap;

    move v1, v2

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    move v1, v2

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ain(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private aio(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private aip(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private aiq(F)I
    .locals 6

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acT:F

    mul-float v2, v1, v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private air(F)I
    .locals 6

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acT:F

    mul-float v2, v1, v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private ais(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiC()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->aij(FF)Lcom/miui/applicationlock/widget/f;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    sget-object v2, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiB()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    :goto_0
    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    iput v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiz()V

    goto :goto_0
.end method

.method private ait(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_4

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v1, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aij(FF)Lcom/miui/applicationlock/widget/f;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v4, :cond_0

    if-ne v5, v7, :cond_0

    iput-boolean v7, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiB()V

    :cond_0
    iget v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iput v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private aiu(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiA()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private aiv(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v0, "android.view.accessibility.AccessibilityManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "isTouchExplorationEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btT()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method private aix(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    sget-object v1, Lcom/miui/securitycenter/d;->LockPatternView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "square"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acF:I

    :goto_0
    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acO:F

    const/4 v2, 0x4

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adk:I

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->ain(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v4, v2, :cond_5

    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acG:Landroid/graphics/Bitmap;

    :goto_1
    new-array v2, v6, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acG:Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    aput-object v3, v2, v5

    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acI:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acI:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "lock_width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acF:I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "lock_height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v6, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acF:I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "fixed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v7, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acF:I

    goto/16 :goto_0

    :cond_4
    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acF:I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->ain(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acG:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private aiy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/widget/g;->aiR(Ljava/util/List;)V

    :cond_0
    const v0, 0x7f070803

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiE(I)V

    return-void
.end method

.method private aiz()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/g;->aiS()V

    :cond_0
    const v0, 0x7f070802

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiE(I)V

    return-void
.end method


# virtual methods
.method public aiF(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acZ:Z

    return-void
.end method

.method public aiG(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acD:J

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->aio(I)F

    move-result v1

    iput v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aip(I)F

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aii()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public aiH(II)V
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acQ:I

    iput p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acP:I

    return-void
.end method

.method public aiI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acW:Z

    return-void
.end method

.method public aiJ(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->ada:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method public aiK(Lcom/miui/applicationlock/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adb:Lcom/miui/applicationlock/widget/g;

    return-void
.end method

.method public aiL(Landroid/content/Context;Lcom/miui/applicationlock/a/a;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acH:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/applicationlock/a/b;->ajk(Landroid/content/Context;Lcom/miui/applicationlock/a/a;I)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acL:[Landroid/graphics/Bitmap;

    const/16 v0, 0x14

    invoke-static {p1, p2, v0}, Lcom/miui/applicationlock/a/b;->ajk(Landroid/content/Context;Lcom/miui/applicationlock/a/a;I)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acK:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public aiM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acS:Z

    return-void
.end method

.method public aih()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiC()V

    return-void
.end method

.method public aik()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acX:Z

    return-void
.end method

.method public aim()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acX:Z

    return-void
.end method

.method public aiw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acX:Z

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acJ:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/applicationlock/widget/LockPatternView;->ade:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adg:[[Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v10, 0x1

    mul-int/lit16 v2, v2, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acD:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    rem-int v4, v3, v2

    div-int/lit16 v5, v4, 0x2bc

    invoke-direct/range {p0 .. p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aii()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v6

    aget-object v6, v11, v6

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v2

    const/4 v7, 0x1

    aput-boolean v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    if-lez v5, :cond_4

    if-ge v5, v10, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    rem-int/lit16 v2, v4, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float v3, v2, v3

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/applicationlock/widget/LockPatternView;->aio(I)F

    move-result v4

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->aip(I)F

    move-result v6

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/applicationlock/widget/LockPatternView;->aio(I)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->aip(I)F

    move-result v2

    sub-float/2addr v2, v6

    mul-float/2addr v2, v3

    add-float v3, v4, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/applicationlock/widget/LockPatternView;->invalidate()V

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acO:F

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acN:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingLeft()I

    move-result v16

    const/4 v7, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v7, v2, :cond_6

    int-to-float v2, v15

    int-to-float v3, v7

    mul-float/2addr v3, v13

    add-float v17, v2, v3

    const/4 v8, 0x0

    :goto_3
    const/4 v2, 0x3

    if-ge v8, v2, :cond_5

    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v3, v8

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    float-to-int v4, v2

    move/from16 v0, v17

    float-to-int v5, v0

    aget-object v2, v11, v7

    aget-boolean v6, v2, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/miui/applicationlock/widget/LockPatternView;->ail(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acW:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_c

    :cond_7
    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adc:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adc:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v2, :cond_b

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, v4

    move v4, v2

    :goto_6
    if-ge v4, v10, :cond_8

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v6

    aget-object v6, v11, v6

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_e

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-ne v2, v4, :cond_a

    :cond_9
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acU:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/applicationlock/widget/LockPatternView;->acV:F

    invoke-virtual {v14, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adf:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    if-eq v2, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->add:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adc:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/applicationlock/widget/LockPatternView;->aio(I)F

    move-result v6

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->aip(I)F

    move-result v2

    if-nez v4, :cond_f

    invoke-virtual {v14, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    :cond_f
    invoke-virtual {v14, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/applicationlock/widget/LockPatternView;->adl:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6

    const v2, 0x7f090003

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-direct {p0, p1, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiD(II)I

    move-result v3

    invoke-direct {p0, p2, v4}, Lcom/miui/applicationlock/widget/LockPatternView;->aiD(II)I

    move-result v1

    iget v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acF:I

    packed-switch v4, :pswitch_data_0

    move v0, v1

    move v1, v3

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v3

    goto :goto_0

    :pswitch_2
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acQ:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acQ:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acP:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adj:F

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adi:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->acX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->ais(Landroid/view/MotionEvent;)V

    return v1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiu(Landroid/view/MotionEvent;)V

    return v1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->ait(Landroid/view/MotionEvent;)V

    return v1

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiC()V

    iput-boolean v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->adh:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiz()V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
