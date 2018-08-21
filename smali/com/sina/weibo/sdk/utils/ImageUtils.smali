.class public Lcom/sina/weibo/sdk/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delete(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " doesn\'t be deleted!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static deleteDependon(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    const/4 v2, 0x5

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_3
    :goto_0
    if-nez v1, :cond_0

    if-gt v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static isFileExisted(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isParentExist(Ljava/io/File;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static makesureFileExist(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/ImageUtils;->isParentExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/ImageUtils;->delete(Ljava/io/File;)V

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static revitionImageSize(Ljava/lang/String;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "size must be greater than 0!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->isFileExisted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/io/FileNotFoundException;

    if-nez p0, :cond_1

    const-string/jumbo p0, "null"

    :cond_1
    invoke-direct {v7, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_1
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v7, v1

    if-gt v7, p1, :cond_4

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v7, v1

    if-gt v7, p1, :cond_4

    move v5, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ImageUtils;->safeDecodeBimtapFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Bitmap decode error!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->deleteDependon(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->makesureFileExist(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v8, "png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_6
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static revitionImageSizeHD(Ljava/lang/String;II)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "size must be greater than 0!"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->isFileExisted(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    new-instance v16, Ljava/io/FileNotFoundException;

    if-nez p0, :cond_1

    const-string/jumbo p0, "null"

    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, ""

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_3
    mul-int/lit8 v12, p1, 0x2

    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v6, v0, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v13, 0x0

    const/4 v5, 0x0

    :goto_1
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    shr-int v16, v16, v5

    move/from16 v0, v16

    if-gt v0, v12, :cond_4

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    shr-int v16, v16, v5

    move/from16 v0, v16

    if-gt v0, v12, :cond_4

    move v13, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/sina/weibo/sdk/utils/ImageUtils;->safeDecodeBimtapFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    if-nez v15, :cond_5

    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "Bitmap decode error!"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->deleteDependon(Ljava/lang/String;)Z

    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->makesureFileExist(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    :goto_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v14, v16, v17

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v16, v14, v16

    if-gez v16, :cond_7

    :goto_3
    :try_start_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v14

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v16 .. v18}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    if-nez v11, :cond_6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    move-object v15, v11

    :cond_7
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_9

    iget-object v0, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    iget-object v0, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_8
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-static {}, Ljava/lang/System;->gc()V

    float-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    goto/16 :goto_3

    :cond_9
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public static revitionPostImageSize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isWifiValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x640

    const/16 v2, 0x4b

    invoke-static {p1, v1, v2}, Lcom/sina/weibo/sdk/utils/ImageUtils;->revitionImageSizeHD(Ljava/lang/String;II)V

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/16 v1, 0x400

    const/16 v2, 0x4b

    invoke-static {p1, v1, v2}, Lcom/sina/weibo/sdk/utils/ImageUtils;->revitionImageSize(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static safeDecodeBimtapFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    move-object v7, p1

    if-nez v7, :cond_0

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x5

    const/4 v4, 0x0

    move-object v6, v5

    :goto_0
    const/4 v8, 0x5

    if-lt v4, v8, :cond_1

    move-object v5, v6

    :goto_1
    return-object v1

    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v8, 0x0

    :try_start_1
    invoke-static {v5, v8, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v5, v6

    :goto_4
    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v5, v6

    goto :goto_2
.end method
