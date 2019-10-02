.class public Lcom/miui/video/common/library/widget/glide/GussianBlur;
.super Ljava/lang/Object;
.source "GussianBlur.java"


# static fields
.field private static final INSTANCE:Lcom/miui/video/common/library/widget/glide/GussianBlur;


# instance fields
.field private kernel:[D

.field private radius:I

.field private sigma:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;

    invoke-direct {v0}, Lcom/miui/video/common/library/widget/glide/GussianBlur;-><init>()V

    sput-object v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->INSTANCE:Lcom/miui/video/common/library/widget/glide/GussianBlur;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    iget v0, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    iget v0, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    return-void
.end method

.method public static getInstance()Lcom/miui/video/common/library/widget/glide/GussianBlur;
    .locals 2

    sget-object v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->INSTANCE:Lcom/miui/video/common/library/widget/glide/GussianBlur;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/miui/video/common/library/widget/glide/GussianBlur;->setRadius(I)V

    sget-object v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->INSTANCE:Lcom/miui/video/common/library/widget/glide/GussianBlur;

    return-object v0
.end method

.method public static getInstance(I)Lcom/miui/video/common/library/widget/glide/GussianBlur;
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->INSTANCE:Lcom/miui/video/common/library/widget/glide/GussianBlur;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/widget/glide/GussianBlur;->setRadius(I)V

    sget-object p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->INSTANCE:Lcom/miui/video/common/library/widget/glide/GussianBlur;

    return-object p0
.end method

.method public static getTransparentBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit16 p1, p1, 0xff

    div-int/lit8 p1, p1, 0x64

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    shl-int/lit8 v2, p1, 0x18

    aget v3, v0, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private initKernel()V
    .locals 15

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    const-wide v5, 0x3fd9883ba3443d47L    # 0.39894

    mul-int v7, v1, v1

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double v7, v7, v9

    neg-double v7, v7

    iget v9, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    iget v13, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    int-to-double v13, v13

    mul-double v9, v9, v13

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    iget v5, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    int-to-double v5, v5

    div-double/2addr v7, v5

    aput-wide v7, v4, v1

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    aget-wide v5, v4, v1

    mul-double v5, v5, v11

    add-double/2addr v2, v5

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    aget-wide v5, v4, v1

    add-double/2addr v2, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    iget-object v4, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    aget-wide v5, v4, v0

    div-double/2addr v5, v2

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    iget p1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->sigma:I

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    iget p1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/glide/GussianBlur;->initKernel()V

    return-void
.end method

.method public static toGrayScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p0, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v11, v9, v10

    new-array v12, v11, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-ge v2, v11, :cond_1

    rem-int v3, v2, v9

    div-int v4, v2, v9

    new-array v5, v15, [D

    iget v6, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    neg-int v6, v6

    :goto_1
    iget v7, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    if-gt v6, v7, :cond_0

    add-int v7, v3, v6

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v9, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v8, v4, v9

    add-int/2addr v8, v7

    aget v7, v12, v8

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    aget v15, v12, v8

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v15

    aget v19, v12, v8

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->green(I)I

    move-result v14

    aget v8, v12, v8

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const/16 v19, 0x0

    aget-wide v20, v5, v19

    move/from16 v22, v10

    move/from16 v23, v11

    int-to-double v10, v7

    iget-object v7, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v24

    aget-wide v24, v7, v24

    mul-double v10, v10, v24

    add-double v20, v20, v10

    aput-wide v20, v5, v19

    aget-wide v10, v5, v18

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    int-to-double v12, v15

    iget-object v7, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    aget-wide v24, v7, v15

    mul-double v12, v12, v24

    add-double/2addr v10, v12

    aput-wide v10, v5, v18

    aget-wide v10, v5, v17

    int-to-double v12, v14

    iget-object v7, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v14

    aget-wide v14, v7, v14

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v17

    aget-wide v10, v5, v16

    int-to-double v7, v8

    iget-object v12, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    aget-wide v13, v12, v13

    mul-double v7, v7, v13

    add-double/2addr v10, v7

    aput-wide v10, v5, v16

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_0
    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    double-to-int v6, v7

    aget-wide v7, v5, v18

    double-to-int v7, v7

    aget-wide v10, v5, v17

    double-to-int v8, v10

    aget-wide v10, v5, v16

    double-to-int v5, v10

    invoke-static {v6, v7, v8, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v22

    move/from16 v11, v23

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v26

    move v4, v9

    move v7, v9

    move/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v10, v23

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_3

    rem-int v2, v1, v9

    div-int v3, v1, v9

    new-array v4, v15, [D

    iget v5, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    neg-int v5, v5

    :goto_3
    iget v6, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->radius:I

    if-gt v5, v6, :cond_2

    add-int v6, v3, v5

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v22, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v6, v6, v9

    add-int/2addr v6, v2

    aget v7, v26, v6

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    aget v8, v26, v6

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    aget v11, v26, v6

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    aget v6, v26, v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/4 v12, 0x0

    aget-wide v13, v4, v12

    move-wide/from16 v28, v13

    int-to-double v12, v6

    iget-object v6, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    aget-wide v19, v6, v14

    mul-double v12, v12, v19

    add-double v13, v28, v12

    const/4 v6, 0x0

    aput-wide v13, v4, v6

    aget-wide v12, v4, v18

    int-to-double v6, v7

    iget-object v14, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v19

    aget-wide v23, v14, v19

    mul-double v6, v6, v23

    add-double/2addr v12, v6

    aput-wide v12, v4, v18

    aget-wide v6, v4, v17

    int-to-double v12, v8

    iget-object v8, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    aget-wide v23, v8, v14

    mul-double v12, v12, v23

    add-double/2addr v6, v12

    aput-wide v6, v4, v17

    aget-wide v6, v4, v16

    int-to-double v11, v11

    iget-object v8, v0, Lcom/miui/video/common/library/widget/glide/GussianBlur;->kernel:[D

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    aget-wide v13, v8, v13

    mul-double v11, v11, v13

    add-double/2addr v6, v11

    aput-wide v6, v4, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    aget-wide v6, v4, v5

    double-to-int v6, v6

    aget-wide v7, v4, v18

    double-to-int v7, v7

    aget-wide v11, v4, v17

    double-to-int v8, v11

    aget-wide v11, v4, v16

    double-to-int v4, v11

    invoke-static {v6, v7, v8, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move-object/from16 v6, v27

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_3
    move-object/from16 v6, v27

    return-object v6
.end method
