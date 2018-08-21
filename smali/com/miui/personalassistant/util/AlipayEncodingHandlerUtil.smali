.class public Lcom/miui/personalassistant/util/AlipayEncodingHandlerUtil;
.super Ljava/lang/Object;
.source "AlipayEncodingHandlerUtil.java"


# static fields
.field private static final DEFAULT_BAR_CODE_HEIGHT:I = 0x12c

.field private static final DEFAULT_BAR_CODE_WIDTH:I = 0x320

.field private static final DEFAULT_QR_CODE_SIZE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AlipayEncodingHandlerUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBarCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v0, 0x320

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/AlipayEncodingHandlerUtil;->createBarCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, p0, v4, p1, p2}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    mul-int v3, p1, p2

    new-array v1, v3, [I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, p2, :cond_2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, p1, :cond_1

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int v3, v10, p1

    add-int/2addr v3, v9

    const/high16 v4, -0x1000000

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method public static createQrCodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v0, 0x1f4

    invoke-static {p0, v0, v0}, Lcom/miui/personalassistant/util/AlipayEncodingHandlerUtil;->createQrCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQrCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, p0, v4, p1, p2}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    mul-int v3, p1, p2

    new-array v1, v3, [I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, p2, :cond_2

    mul-int v8, v11, p1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, p1, :cond_1

    add-int v4, v8, v10

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, -0x1000000

    :goto_2
    aput v3, v1, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v3, 0x1f4

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method
