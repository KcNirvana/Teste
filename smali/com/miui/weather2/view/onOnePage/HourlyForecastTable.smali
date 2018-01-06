.class public Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;
.super Lcom/miui/weather2/view/g;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:Landroid/graphics/Paint;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/graphics/PathEffect;

.field private E:Landroid/graphics/Path;

.field private F:F

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->D:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->J:Z

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->K:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->c()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41500000    # 13.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->D:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->J:Z

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->K:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->c()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41500000    # 13.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->D:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->J:Z

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->K:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->c()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41500000    # 13.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0

    if-eqz p7, :cond_0

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p6, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p6, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, p6, p7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private c()V
    .locals 9

    const v5, 0x7f0b007d

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x7f0a018f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->e:I

    const v0, 0x7f0a000c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->f:I

    const v0, 0x7f0a018a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->g:I

    const v0, 0x7f0a0189

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->h:I

    const v0, 0x7f0a017f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->i:F

    const v0, 0x7f0a0180

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->k:F

    const v0, 0x7f0a0008

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->l:F

    const v0, 0x7f0a0009

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->m:F

    const v0, 0x7f0a017d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->n:F

    const v0, 0x7f0a000b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->s:F

    const v0, 0x7f0a000a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->q:F

    const v0, 0x7f0a0185

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->r:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f0a0188

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->setLinePaint(Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f0a0191

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->F:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0190

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->F:F

    const v0, 0x7f0a0192

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v0, 0x7f0b0071

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(Landroid/graphics/Paint;FFFII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, 0x7f0a0195

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const v1, 0x7f0b0002

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setLinearText(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->setTextPaint(Landroid/graphics/Paint;)V

    const v0, 0x7f0b007a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->t:I

    const v0, 0x7f0a0183

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->u:I

    const v0, 0x7f0a017e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->v:I

    const v0, 0x7f0a0186

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->z:I

    const v0, 0x7f0b0001

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->w:I

    const v0, 0x7f0b0079

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->x:I

    const v0, 0x7f0b007b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->y:I

    const v0, 0x7f0b007e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->A:I

    const v0, 0x7f0a0182

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->j:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setLinearText(Z)V

    const v0, 0x7f07000c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->H:Ljava/lang/String;

    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->I:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/util/ArrayList;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)[J"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-wide v4, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private d(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->g:I

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private e(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->e:I

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->f:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iput v1, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/view/g$a;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->removeAllViews()V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    aget-object v2, v0, v5

    iget v2, v2, Lcom/miui/weather2/view/g$a;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    move v1, v5

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_0

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    if-ne v1, v3, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    invoke-static {v1, v7}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    invoke-static {v1, v7}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    if-ne v2, v1, :cond_6

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->G:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-eq v4, v1, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    if-ne v2, v1, :cond_5

    iget-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->G:Z

    if-eqz v1, :cond_8

    :cond_5
    const v1, 0x7f030026

    invoke-virtual {v8, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v1, 0x7f0f00b3

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-boolean v2, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v2, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    invoke-static {v2}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconNightByWeatherType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->f:I

    mul-int/2addr v2, v6

    const/4 v6, -0x1

    invoke-direct {v1, v2, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x1

    aget-object v2, v0, v2

    iget v2, v2, Lcom/miui/weather2/view/g$a;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    goto/16 :goto_1

    :cond_6
    move v1, v5

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v2, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    invoke-static {v2}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconByWeatherType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_8
    move v2, v6

    goto :goto_4
.end method


# virtual methods
.method public a(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->J:Z

    iput-boolean p2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->K:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->o:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->o:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->e(Ljava/util/ArrayList;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [I

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->A:I

    aput v0, v9, v2

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    aput v3, v9, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->c(Ljava/util/ArrayList;)[J

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d(Ljava/util/ArrayList;)[I

    move-result-object v3

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->g:I

    iget v5, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->h:I

    const/16 v6, 0xa

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0a0194

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v7, v0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->b(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->b([I[J[IIIIF[Ljava/lang/String;[I)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->f(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->e:I

    mul-int/lit8 v0, v0, 0x2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->setWidth(I)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/miui/weather2/view/g;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->i:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->e:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->m:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->i:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v10

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lcom/miui/weather2/view/g$a;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->D:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->F:F

    add-float v3, v0, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-virtual {p0, v9}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->F:F

    add-float v3, v0, v1

    invoke-virtual {p0, v9}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->F:F

    add-float v3, v0, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    move v9, v0

    :goto_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-virtual {p0, v9}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->L:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->F:F

    add-float v3, v0, v1

    invoke-virtual {p0, v9}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->p:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->E:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->t:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->v:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->x:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->z:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-ge v6, v10, :cond_a

    if-nez v6, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->A:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    aget-object v0, v8, v6

    iget v1, v0, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->i:F

    sub-float v2, v0, v2

    aget-object v0, v8, v6

    iget v3, v0, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->i:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->k:F

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    aget-object v1, v8, v6

    iget v1, v1, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->j:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->J:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-nez v6, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_5
    aget-object v1, v8, v6

    iget v1, v1, Lcom/miui/weather2/view/g$a;->a:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->m:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->n:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->l:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aget-object v3, v8, v6

    iget v3, v3, Lcom/miui/weather2/view/g$a;->a:F

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->m:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v11, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->n:F

    sub-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006a

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v8, v6

    iget v1, v1, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->n:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->l:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {p1, v0, v1, v2, v7}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionLevel(Ljava/lang/String;)I

    move-result v1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->K:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/weather2/structures/WeatherData;->getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    if-eq v1, v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->s:F

    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionIcon(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->A:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_7
    aget-object v1, v8, v6

    iget v1, v1, Lcom/miui/weather2/view/g$a;->a:F

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->s:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->o:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->q:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aget-object v4, v8, v6

    iget v4, v4, Lcom/miui/weather2/view/g$a;->a:F

    iget v11, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->s:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v4, v11

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->o:F

    sub-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v0, v1, v3, v4, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_8
    aget-object v0, v8, v6

    iget v0, v0, Lcom/miui/weather2/view/g$a;->a:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->s:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->o:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->q:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->r:F

    sub-float/2addr v1, v3

    invoke-static {p1, v2, v0, v1, v9}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->y:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/structures/AQIData;->getHourlyAqiIcon(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006b

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v8, v6

    iget v1, v1, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->n:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->l:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {p1, v0, v1, v2, v7}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionIcon(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_7

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->s:F

    goto/16 :goto_8

    :cond_a
    return-void
.end method
