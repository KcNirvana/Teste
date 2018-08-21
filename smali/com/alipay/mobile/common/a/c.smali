.class public final Lcom/alipay/mobile/common/a/c;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# static fields
.field private static final a:I

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Lcom/alipay/mobile/common/cache/c;

.field private static final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lcom/alipay/mobile/common/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    new-instance v2, Lcom/alipay/mobile/common/common/task/a;

    invoke-direct {v2, v1, v1}, Lcom/alipay/mobile/common/common/task/a;-><init>(IZ)V

    sput-object v2, Lcom/alipay/mobile/common/a/c;->d:Ljava/util/concurrent/Executor;

    const-string/jumbo v2, "inside_img_thumb"

    invoke-static {v2}, Lcom/alipay/mobile/common/cache/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/c;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/common/a/c;->e:Lcom/alipay/mobile/common/cache/c;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/alipay/mobile/common/a/c;->f:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    sput v1, Lcom/alipay/mobile/common/a/c;->a:I

    return-void
.end method

.method public static a(IIII)I
    .locals 4

    const/4 v0, 0x1

    if-gt p0, p2, :cond_0

    if-le p1, p3, :cond_2

    :cond_0
    if-le p0, p1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_3

    :goto_1
    mul-int v1, p0, p1

    int-to-float v1, v1

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    :goto_2
    mul-int v3, v0, v0

    int-to-float v3, v3

    div-float v3, v1, v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    int-to-float v1, p0

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ImageDecoder"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v3, p1, :cond_1

    if-ne v2, p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v4, v2

    div-float/2addr v1, v4

    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    int-to-float v1, v2

    int-to-float v4, p2

    div-float/2addr v4, v0

    sub-float/2addr v1, v4

    div-float/2addr v1, v7

    float-to-int v4, v1

    int-to-float v1, v2

    int-to-float v2, p2

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    div-float/2addr v1, v7

    float-to-int v1, v1

    move v2, v4

    move v4, v1

    move v1, v6

    move v6, v3

    move v3, v0

    :goto_1
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    sub-int v3, v6, v1

    sub-int/2addr v4, v2

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_3

    if-eq v0, p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    goto :goto_0

    :cond_2
    int-to-float v0, v3

    int-to-float v4, p1

    div-float/2addr v4, v1

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    float-to-int v4, v0

    int-to-float v0, v3

    int-to-float v3, p1

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    div-float/2addr v0, v7

    float-to-int v0, v0

    move v3, v1

    move v8, v1

    move v1, v4

    move v4, v2

    move v2, v6

    move v6, v0

    move v0, v8

    goto :goto_1

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    :cond_0
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ImageDecoder"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz p2, :cond_3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    :goto_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    int-to-float v9, v0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v8, p1

    int-to-float v9, p1

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v6, p0, v2, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v3

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v1, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Lcom/alipay/mobile/common/a/j;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/a/c;->e:Lcom/alipay/mobile/common/cache/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/cache/c;->c(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/DiskCacheFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/DiskCacheFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "ImageDecoder"

    invoke-interface {v3, v4, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$b;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled during decode image"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/common/a/c;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v3, Lcom/alipay/mobile/common/a/c;->a:I

    if-lt v0, v3, :cond_5

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled during decode image"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/common/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    sget-object v1, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_5
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_6

    :try_start_7
    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled during decode image"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Lcom/alipay/mobile/common/a/c;->a(Ljava/io/File;Lcom/alipay/mobile/common/a/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_7

    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/a/c;->b(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->k()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/alipay/mobile/common/a/c;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/alipay/mobile/common/a/d;

    invoke-direct {v3, p0, p1, v0}, Lcom/alipay/mobile/common/a/d;-><init>(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    sget-object v2, Lcom/alipay/mobile/common/a/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    sget-object v2, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    sget-object v3, Lcom/alipay/mobile/common/a/c;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_8

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/a/c;->b(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, p0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static b(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$b;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/alipay/mobile/common/a/j;->a:Lcom/alipay/mobile/common/a/j;

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->a()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->b()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/a/j;->a(Landroid/widget/ImageView;)V

    :cond_4
    if-eqz p2, :cond_5

    :try_start_0
    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_5
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->l()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->c()I

    move-result v5

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->d()I

    move-result v6

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->j()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/a/c;->a(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v7, v3, 0x5a

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v8, :cond_6

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->e()Z

    move-result v7

    if-nez v7, :cond_7

    if-lez v5, :cond_7

    if-lez v6, :cond_7

    div-int/lit8 v7, v3, 0x5a

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v8, :cond_8

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->a()I

    move-result v7

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->b()I

    move-result v8

    invoke-static {v2, v1, v7, v8}, Lcom/alipay/mobile/common/a/c;->a(IIII)I

    move-result v1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ImageDecoder"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-eqz v3, :cond_c

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/common/a/c;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v1, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->e()Z

    move-result v2

    if-eqz v2, :cond_e

    if-lez v5, :cond_e

    if-lez v6, :cond_e

    const/4 v2, 0x1

    invoke-static {v1, v5, v6, v2}, Lcom/alipay/mobile/common/a/c;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_e
    if-nez v1, :cond_f

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz p2, :cond_10

    invoke-interface {p2}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v1, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->h()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/a/c;->b(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_11
    :goto_2
    if-nez v1, :cond_14

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->f()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->f()I

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->g()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/common/a/c;->a(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_13
    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->g()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/a/c;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2

    :cond_14
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static b(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/mobile/common/cache/a;

    invoke-direct {v0}, Lcom/alipay/mobile/common/cache/a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/cache/a;->setKey(Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/a/c;->e:Lcom/alipay/mobile/common/cache/c;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/cache/c;->b(Lcom/alipay/mobile/common/cache/a;)Lcom/alipay/mobile/common/cache/DiskCacheFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-boolean v1, Lcom/alipay/mobile/common/a/c;->f:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v3, 0x50

    invoke-virtual {p2, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/DiskCacheFile;->commit()Lcom/alipay/mobile/common/cache/DiskCacheFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_4
    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/File;)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "ImageDecoder"

    invoke-interface {v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method
