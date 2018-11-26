.class public Lcom/nostra13/universalimageloader/core/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/core/a/a;


# instance fields
.field protected final biR:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/a/c;->biR:Z

    return-void
.end method

.method private bFe(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFL(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public bER(Lcom/nostra13/universalimageloader/core/a/b;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/a/c;->bFi(Lcom/nostra13/universalimageloader/core/a/b;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "No stream for image [%s]"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/b;->bEY()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    instance-of v1, v2, Lcom/nostra13/universalimageloader/core/download/b;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/nostra13/universalimageloader/core/download/b;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/b;->bFJ()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/nostra13/universalimageloader/core/a/c;->bFh(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/a/b;)Lcom/nostra13/universalimageloader/core/a/e;

    move-result-object v3

    invoke-virtual {p0, v2, p1}, Lcom/nostra13/universalimageloader/core/a/c;->bFk(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/a/b;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v1, v3, Lcom/nostra13/universalimageloader/core/a/e;->biV:Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-virtual {p0, v1, p1}, Lcom/nostra13/universalimageloader/core/a/c;->bFj(Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/a/b;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    if-nez v1, :cond_2

    const-string/jumbo v2, "Image can\'t be decoded [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/b;->bEY()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    throw v1

    :cond_2
    iget-object v2, v3, Lcom/nostra13/universalimageloader/core/a/e;->biU:Lcom/nostra13/universalimageloader/core/a/d;

    iget v2, v2, Lcom/nostra13/universalimageloader/core/a/d;->biT:I

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/a/e;->biU:Lcom/nostra13/universalimageloader/core/a/d;

    iget-boolean v3, v3, Lcom/nostra13/universalimageloader/core/a/d;->biS:Z

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/nostra13/universalimageloader/core/a/c;->bFf(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/a/b;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bFf(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/a/b;IZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEZ()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bik:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bil:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lcom/nostra13/universalimageloader/core/assist/b;-><init>(III)V

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bFb()Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bFc()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bil:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v7, :cond_5

    move v0, v6

    :goto_0
    invoke-static {v2, v3, v4, v0}, Lcom/nostra13/universalimageloader/a/d;->bEd(Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/a/c;->biR:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/assist/b;->bEN(F)Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEY()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p4, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a/c;->biR:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Flip image horizontally [%s]"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEY()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a/c;->biR:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Rotate image on %1$d\u00b0 [%2$s]"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEY()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected bFg(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/a/d;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    :pswitch_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/a/d;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/a/d;-><init>(IZ)V

    return-object v2

    :pswitch_2
    move v0, v1

    :pswitch_3
    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_4
    move v0, v1

    :pswitch_5
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_6
    move v0, v1

    :pswitch_7
    const/16 v1, 0x10e

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v2, "Can\'t read EXIF tags from file [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method protected bFh(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/a/b;)Lcom/nostra13/universalimageloader/core/a/e;
    .locals 6

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bFa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bFd()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/nostra13/universalimageloader/core/a/c;->bFe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/a/c;->bFg(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/a/d;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/nostra13/universalimageloader/core/a/e;

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/b;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v0, Lcom/nostra13/universalimageloader/core/a/d;->biT:I

    invoke-direct {v3, v4, v1, v5}, Lcom/nostra13/universalimageloader/core/assist/b;-><init>(III)V

    invoke-direct {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/a/e;-><init>(Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/a/d;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/a/d;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/a/d;-><init>()V

    goto :goto_0
.end method

.method protected bFi(Lcom/nostra13/universalimageloader/core/a/b;)Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/b;->bEW()Lcom/nostra13/universalimageloader/core/download/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/b;->bFa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/a/b;->bEX()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/c;->bFs(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected bFj(Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/a/b;)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEZ()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bin:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    if-le v0, v1, :cond_0

    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/a/c;->biR:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/assist/b;->bEO(I)Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEY()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEV()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v1

    :cond_1
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bio:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v3, :cond_2

    invoke-static {p1}, Lcom/nostra13/universalimageloader/a/d;->bEb(Lcom/nostra13/universalimageloader/core/assist/b;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bFb()Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object v3

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bim:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/a/b;->bFc()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    invoke-static {p1, v3, v4, v0}, Lcom/nostra13/universalimageloader/a/d;->bEc(Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected bFk(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/a/b;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/core/a/c;->bFi(Lcom/nostra13/universalimageloader/core/a/b;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
