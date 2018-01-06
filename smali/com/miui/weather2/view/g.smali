.class public Lcom/miui/weather2/view/g;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/g$a;
    }
.end annotation


# static fields
.field private static k:F

.field private static l:Z


# instance fields
.field protected a:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/miui/weather2/view/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/weather2/view/g;->k:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/view/g;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/g;->setWillNotDraw(Z)V

    invoke-static {p1}, Lcom/miui/weather2/view/g;->setDirection(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/view/g;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/g;->setWillNotDraw(Z)V

    invoke-static {p1}, Lcom/miui/weather2/view/g;->setDirection(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/view/g;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/g;->setWillNotDraw(Z)V

    invoke-static {p1}, Lcom/miui/weather2/view/g;->setDirection(Landroid/content/Context;)V

    return-void
.end method

.method private static a(IIIII)F
    .locals 3

    sub-int v0, p1, p0

    int-to-float v0, v0

    sub-int v1, p3, p4

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a([II)Z
    .locals 4

    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_3

    aget v2, p0, v1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v2, p0, v2

    if-eq v2, v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([J[II)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-gt p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/miui/weather2/view/g;->a([II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    if-ge v0, p2, :cond_6

    aget v1, p1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_3

    add-int/lit8 v1, v0, 0x1

    array-length v2, p1

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x1

    array-length v2, p1

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    aget-wide v2, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v4, p0, v1

    add-int/lit8 v1, v0, -0x1

    aget-wide v6, p0, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c([I[J[IIIIF[Ljava/lang/String;[I)[Lcom/miui/weather2/view/g$a;
    .locals 9

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    if-le p3, p4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    array-length v1, p0

    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1, p2, v3}, Lcom/miui/weather2/view/g;->a([J[II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-array v2, v3, [Lcom/miui/weather2/view/g$a;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    new-instance v4, Lcom/miui/weather2/view/g$a;

    invoke-direct {v4}, Lcom/miui/weather2/view/g$a;-><init>()V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    array-length v5, p2

    if-ge v1, v5, :cond_4

    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p3, p4, p5, v4, v5}, Lcom/miui/weather2/view/g;->a(IIIII)F

    move-result v1

    if-eq v4, v5, :cond_5

    int-to-float v6, v4

    int-to-float v5, v5

    sub-float v5, v6, v5

    div-float v5, v1, v5

    sput v5, Lcom/miui/weather2/view/g;->k:F

    :cond_5
    add-int v5, p4, p3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float/2addr v5, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_7

    sget-boolean v6, Lcom/miui/weather2/view/g;->l:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    aget-object v6, v2, v1

    sub-int v7, v3, v1

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    iput v7, v6, Lcom/miui/weather2/view/g$a;->a:F

    :goto_4
    aget-object v6, v2, v1

    sget v7, Lcom/miui/weather2/view/g;->k:F

    aget v8, p2, v1

    sub-int v8, v4, v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    iput v7, v6, Lcom/miui/weather2/view/g$a;->b:F

    aget-object v6, v2, v1

    iput p6, v6, Lcom/miui/weather2/view/g$a;->d:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    aget-object v6, v2, v1

    aget v7, p0, v1

    int-to-float v7, v7

    iput v7, v6, Lcom/miui/weather2/view/g$a;->a:F

    goto :goto_4

    :cond_7
    if-eqz p7, :cond_8

    move-object/from16 v0, p7

    array-length v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_9

    aget-object v4, v2, v3

    aget-object v5, p7, v3

    iput-object v5, v4, Lcom/miui/weather2/view/g$a;->c:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    move v1, v3

    :cond_9
    if-eqz p8, :cond_a

    move-object/from16 v0, p8

    array-length v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    aget v5, p8, v1

    iput v5, v4, Lcom/miui/weather2/view/g$a;->e:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static d([I[J[IIIIF[Ljava/lang/String;[I)[Lcom/miui/weather2/view/g$a;
    .locals 9

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    if-le p4, p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    array-length v1, p0

    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1, p2, v3}, Lcom/miui/weather2/view/g;->a([J[II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-array v2, v3, [Lcom/miui/weather2/view/g$a;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    new-instance v4, Lcom/miui/weather2/view/g$a;

    invoke-direct {v4}, Lcom/miui/weather2/view/g$a;-><init>()V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    array-length v5, p2

    if-ge v1, v5, :cond_4

    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v1, p3, p4

    int-to-float v1, v1

    if-eq v4, v5, :cond_5

    int-to-float v6, v4

    int-to-float v5, v5

    sub-float v5, v6, v5

    div-float/2addr v1, v5

    sput v1, Lcom/miui/weather2/view/g;->k:F

    :cond_5
    int-to-float v5, p4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_7

    sget-boolean v6, Lcom/miui/weather2/view/g;->l:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    aget-object v6, v2, v1

    sub-int v7, v3, v1

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    iput v7, v6, Lcom/miui/weather2/view/g$a;->a:F

    :goto_4
    aget-object v6, v2, v1

    sget v7, Lcom/miui/weather2/view/g;->k:F

    aget v8, p2, v1

    sub-int v8, v4, v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    iput v7, v6, Lcom/miui/weather2/view/g$a;->b:F

    aget-object v6, v2, v1

    iput p6, v6, Lcom/miui/weather2/view/g$a;->d:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    aget-object v6, v2, v1

    aget v7, p0, v1

    int-to-float v7, v7

    iput v7, v6, Lcom/miui/weather2/view/g$a;->a:F

    goto :goto_4

    :cond_7
    if-eqz p7, :cond_8

    move-object/from16 v0, p7

    array-length v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_9

    aget-object v4, v2, v3

    aget-object v5, p7, v3

    iput-object v5, v4, Lcom/miui/weather2/view/g$a;->c:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    move v1, v3

    :cond_9
    if-eqz p8, :cond_a

    move-object/from16 v0, p8

    array-length v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    aget v5, p8, v1

    iput v5, v4, Lcom/miui/weather2/view/g$a;->e:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static setDirection(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/weather2/view/g;->l:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/view/g;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/miui/weather2/view/g$a;

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    if-eq v0, v9, :cond_1

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/g;->a:Landroid/graphics/Paint;

    aget-object v1, v6, v7

    iget v1, v1, Lcom/miui/weather2/view/g$a;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    aget-object v0, v6, v7

    iget v1, v0, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v0, v6, v7

    iget v2, v0, Lcom/miui/weather2/view/g$a;->b:F

    add-int/lit8 v0, v7, 0x1

    aget-object v0, v6, v0

    iget v3, v0, Lcom/miui/weather2/view/g$a;->a:F

    add-int/lit8 v0, v7, 0x1

    aget-object v0, v6, v0

    iget v4, v0, Lcom/miui/weather2/view/g$a;->b:F

    iget-object v5, p0, Lcom/miui/weather2/view/g;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 1

    if-eqz p4, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/weather2/view/g;->i:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/weather2/view/g;->g:F

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/weather2/view/g;->j:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/weather2/view/g;->h:F

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/miui/weather2/view/g;->f:F

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Paint;FFFII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/g;->b:Landroid/graphics/Paint;

    iput p2, p0, Lcom/miui/weather2/view/g;->f:F

    iput p3, p0, Lcom/miui/weather2/view/g;->g:F

    iput p4, p0, Lcom/miui/weather2/view/g;->h:F

    iput p5, p0, Lcom/miui/weather2/view/g;->j:I

    iput p6, p0, Lcom/miui/weather2/view/g;->i:I

    return-void
.end method

.method public a([I[J[IIIIF[Ljava/lang/String;[I)V
    .locals 2

    invoke-static/range {p1 .. p9}, Lcom/miui/weather2/view/g;->c([I[J[IIIIF[Ljava/lang/String;[I)[Lcom/miui/weather2/view/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/miui/weather2/view/g$a;

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    iget v9, p0, Lcom/miui/weather2/view/g;->j:I

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_0

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    if-eq v0, v9, :cond_1

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    if-eqz v0, :cond_1

    aget-object v0, v6, v7

    iget v0, v0, Lcom/miui/weather2/view/g$a;->e:I

    iput v0, p0, Lcom/miui/weather2/view/g;->j:I

    :goto_1
    aget-object v0, v6, v7

    iget v2, v0, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v0, v6, v7

    iget v3, v0, Lcom/miui/weather2/view/g$a;->b:F

    iget-object v4, p0, Lcom/miui/weather2/view/g;->b:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/view/g;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    iput v9, p0, Lcom/miui/weather2/view/g;->j:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b([I[J[IIIIF[Ljava/lang/String;[I)V
    .locals 2

    invoke-static/range {p1 .. p9}, Lcom/miui/weather2/view/g;->d([I[J[IIIIF[Ljava/lang/String;[I)[Lcom/miui/weather2/view/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/view/g$a;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/weather2/view/g$a;->e:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/weather2/view/g$a;->e:I

    if-eq v4, v3, :cond_1

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/weather2/view/g$a;->e:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/weather2/view/g;->c:Landroid/graphics/Paint;

    aget-object v5, v0, v1

    iget v5, v5, Lcom/miui/weather2/view/g$a;->e:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/miui/weather2/view/g$a;->c:Ljava/lang/String;

    aget-object v5, v0, v1

    iget v5, v5, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v6, v0, v1

    iget v6, v6, Lcom/miui/weather2/view/g$a;->b:F

    aget-object v7, v0, v1

    iget v7, v7, Lcom/miui/weather2/view/g$a;->d:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/miui/weather2/view/g;->c:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/weather2/view/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/g;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/g;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/g;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/g;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/g;->c(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/miui/weather2/view/g;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/g;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/g;->getMeasuredHeightAndState()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/g;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/g;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/g;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/g;->e:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/g;->requestLayout()V

    return-void
.end method
