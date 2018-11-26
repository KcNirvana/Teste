.class public Lcom/miui/hybrid/accessory/sdk/icondialog/f;
.super Ljava/lang/Object;


# static fields
.field private static final bho:[I

.field private static final bhp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [F

    const/high16 v1, 0x3fc00000    # 1.5f

    aput v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    aput v1, v0, v3

    const/high16 v1, 0x40300000    # 2.75f

    aput v1, v0, v4

    const/high16 v1, 0x40400000    # 3.0f

    aput v1, v0, v5

    const/high16 v1, 0x40800000    # 4.0f

    aput v1, v0, v6

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x5a

    aput v1, v0, v2

    const/16 v1, 0x88

    aput v1, v0, v3

    const/16 v1, 0xa8

    aput v1, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v5

    const/16 v1, 0xe0

    aput v1, v0, v6

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bho:[I

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    aget v0, v0, v2

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    array-length v2, v2

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    sget-object v2, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    aget v2, v2, v0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    sget-object v2, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    aget v2, v2, v0

    sub-float/2addr v2, v1

    sget-object v3, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bhp:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([B)Landroid/util/Pair;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static bCH(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bho:[I

    invoke-static {p0}, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->a(Landroid/content/Context;)I

    move-result v1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->bCI([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method private static bCI([BI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/miui/hybrid/accessory/sdk/icondialog/f;->a([B)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, p1, :cond_2

    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v0, p1

    if-eqz v0, :cond_3

    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v4

    :cond_2
    if-ne v0, p1, :cond_0

    invoke-static {v2, v4, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
