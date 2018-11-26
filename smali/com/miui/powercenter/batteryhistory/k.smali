.class public Lcom/miui/powercenter/batteryhistory/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aHZ:[I

.field aIa:I

.field aIb:I

.field aIc:I

.field aId:[Landroid/graphics/Paint;

.field aIe:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aTX([I)V
    .locals 3

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k;->aHZ:[I

    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aTY(Landroid/graphics/Canvas;IIIZ)V
    .locals 10

    const/4 v0, 0x0

    add-int v9, p3, p4

    move v6, v0

    move v1, v0

    move v0, p2

    :goto_0
    iget v2, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    if-ge v6, v2, :cond_2

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/k;->aIe:[I

    aget v2, v2, v6

    const v3, 0xffff

    and-int v7, v2, v3

    if-eqz p5, :cond_0

    sub-int v7, p2, v7

    :cond_0
    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    shr-int/lit8 v8, v2, 0x10

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_1
    int-to-float v1, v0

    int-to-float v2, p3

    int-to-float v3, v7

    int-to-float v4, v9

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aId:[Landroid/graphics/Paint;

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v8

    move v0, v7

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v5, v1

    goto :goto_1
.end method

.method public aTZ(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIe:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIa:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aIe:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIb:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIe:[I

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p1

    aput v2, v0, v1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/k;->aIa:I

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/k;->aIb:I

    :cond_2
    return-void
.end method

.method public aUa(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIa:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/miui/powercenter/batteryhistory/k;->aTZ(II)V

    :cond_0
    return-void
.end method

.method public init(I)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIe:[I

    :goto_0
    iput v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aIc:I

    iput v1, p0, Lcom/miui/powercenter/batteryhistory/k;->aIa:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIb:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/k;->aIe:[I

    goto :goto_0
.end method
