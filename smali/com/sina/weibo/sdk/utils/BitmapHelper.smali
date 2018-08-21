.class public final Lcom/sina/weibo/sdk/utils/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSampleSizeAutoFitToScreen(IIII)I
    .locals 4

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    div-int v2, p2, p0

    div-int v3, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v2, p3, p0

    div-int v3, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public static getSampleSizeOfNotTooLarge(Landroid/graphics/Rect;)I
    .locals 8

    const/high16 v0, 0x500000

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4154000000000000L    # 5242880.0

    div-double v2, v4, v6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    double-to-int v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static makesureSizeNotTooLarge(Landroid/graphics/Rect;)Z
    .locals 3

    const/high16 v0, 0x500000

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x500000

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static verifyBitmap(Ljava/io/InputStream;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    instance-of v2, p0, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_1

    :goto_1
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static verifyBitmap(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static verifyBitmap([B)Z
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method
