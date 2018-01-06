.class public Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityTablePoint;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityTablePoint;",
            ">;"
        }
    .end annotation
.end field

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/miui/weather2/structures/PreHourData;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->c()V

    return-void
.end method

.method private a(I)I
    .locals 2

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->e:I

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->d:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Lcom/miui/weather2/structures/ForecastData;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/structures/ForecastData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityTablePoint;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/ForecastData;->getAqiSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v0, v2}, Lcom/miui/weather2/tools/p;->a(Landroid/content/Context;Lcom/miui/weather2/structures/ForecastData;II)Lcom/miui/weather2/structures/AqiQualityTablePoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Lcom/miui/weather2/structures/HourlyData;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/structures/HourlyData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/32 v8, 0x36ee80

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/weather2/structures/HourlyData;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/weather2/structures/HourlyData;->getHoursDesc(Landroid/content/Context;ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4, v2}, Lcom/miui/weather2/structures/HourlyData;->getHoursDesc(Landroid/content/Context;ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/HourlyData;->getAqiSize()I

    move-result v4

    if-lt v0, v4, :cond_1

    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/weather2/structures/HourlyData;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v4

    int-to-long v6, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v2}, Lcom/miui/weather2/structures/HourlyData;->getHoursDesc(Landroid/content/Context;ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private a(Ljava/lang/String;Lcom/miui/weather2/structures/HourlyData;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/weather2/structures/HourlyData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityTablePoint;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/PreHourData;->getAqi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/miui/weather2/tools/p;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/weather2/structures/AqiQualityTablePoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v0}, Lcom/miui/weather2/tools/p;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/weather2/structures/AqiQualityTablePoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {p2}, Lcom/miui/weather2/structures/HourlyData;->getAqiSize()I

    move-result v0

    if-ge v1, v0, :cond_0

    add-int v0, v3, v1

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2, v1}, Lcom/miui/weather2/structures/HourlyData;->getAqi(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/miui/weather2/tools/p;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/weather2/structures/AqiQualityTablePoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->v:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/miui/weather2/structures/AqiQualityTablePoint;Landroid/graphics/Paint;I)V
    .locals 3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->v:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->w:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->x:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->u:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/miui/weather2/structures/ForecastData;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/structures/ForecastData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/ForecastData;->getAqiSize()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/miui/weather2/structures/ForecastData;->getDateDesc(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->u:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->x:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->w:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->h:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->g:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->d:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->c:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->f:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->e:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->i:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->j:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->k:I

    return-void
.end method

.method private b(I)V
    .locals 2

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->t:I

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->d:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->requestLayout()V

    return-void
.end method

.method private c()V
    .locals 6

    const v5, 0x7f0b0014

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->n:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->q:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->q:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->r:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->r:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v10, 0x0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b:I

    if-lez v0, :cond_12

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->e:I

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b:I

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->e:I

    sub-int v8, v0, v1

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    const/4 v0, 0x6

    if-gt v6, v0, :cond_0

    int-to-float v1, v7

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->g:I

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->c:I

    mul-int/2addr v2, v6

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v8

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->g:I

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->c:I

    mul-int/2addr v4, v6

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->g:I

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->c:I

    mul-int/lit8 v1, v1, 0x7

    add-int v9, v0, v1

    int-to-float v1, v7

    int-to-float v2, v9

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->q:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->j:I

    add-int v7, v9, v0

    move v6, v10

    :goto_1
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->t:I

    if-ge v6, v0, :cond_1

    invoke-direct {p0, v6}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(I)I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v9

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->r:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->k:I

    add-int v4, v7, v0

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->B:Ljava/util/ArrayList;

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    move v2, v10

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-direct {p0, v2}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(I)I

    move-result v5

    if-nez v2, :cond_4

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v0, v10, v1, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int v1, v5, v1

    int-to-float v1, v1

    int-to-float v5, v4

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->A:Ljava/util/ArrayList;

    move-object v3, v0

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v0, v10, v1, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int v1, v5, v1

    int-to-float v1, v1

    int-to-float v5, v4

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->D:Ljava/util/ArrayList;

    move-object v12, v0

    :goto_5
    if-eqz v12, :cond_12

    move v11, v10

    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v11, v0, :cond_a

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v11, :cond_9

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    if-eqz v0, :cond_9

    :cond_6
    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_7
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->C:Ljava/util/ArrayList;

    move-object v12, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v4

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v8}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v9}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_a
    move v1, v10

    :goto_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_c

    if-nez v1, :cond_d

    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->m:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(Landroid/graphics/Canvas;Lcom/miui/weather2/structures/AqiQualityTablePoint;Landroid/graphics/Paint;I)V

    :cond_c
    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->m:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(Landroid/graphics/Canvas;Lcom/miui/weather2/structures/AqiQualityTablePoint;Landroid/graphics/Paint;I)V

    goto :goto_9

    :cond_e
    move v2, v10

    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getAqiDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v2, :cond_11

    iget-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    if-eqz v3, :cond_11

    :cond_f
    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v10, v4, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v0

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->h:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_10
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_11
    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v10, v4, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionX()I

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->getPositionY()I

    move-result v0

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->h:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setShowingHoursTable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b(I)V

    goto :goto_0
.end method

.method public setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getPreHourData()Lcom/miui/weather2/structures/PreHourData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->y:Lcom/miui/weather2/structures/PreHourData;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b(Lcom/miui/weather2/structures/ForecastData;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getHourlyData()Lcom/miui/weather2/structures/HourlyData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(Lcom/miui/weather2/structures/HourlyData;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(Lcom/miui/weather2/structures/ForecastData;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getHourlyData()Lcom/miui/weather2/structures/HourlyData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->a(Ljava/lang/String;Lcom/miui/weather2/structures/HourlyData;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->D:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->b(I)V

    goto :goto_0
.end method
