.class public Lcom/miui/video/biz/videoplus/player/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# static fields
.field public static final FLAG_ALL:I = 0xffff

.field public static final FLAG_EXPOSURE_TIME:I = 0x40

.field public static final FLAG_FOCAL_LENGTH:I = 0x100

.field public static final FLAG_F_NUMBER:I = 0x20

.field public static final FLAG_HEIGHT:I = 0x2

.field public static final FLAG_ISO:I = 0x80

.field public static final FLAG_MAKE:I = 0x10

.field public static final FLAG_MODEL:I = 0x8

.field public static final FLAG_ROTATION:I = 0x4

.field public static final FLAG_WIDTH:I = 0x1


# instance fields
.field private exposureTime:Ljava/lang/String;

.field private fNumber:Ljava/lang/String;

.field private focalLength:Ljava/lang/String;

.field private height:I

.field private iso:Ljava/lang/String;

.field private make:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/ImageInfo;
    .locals 5

    new-instance v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->width:I

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->height:I

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_5

    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_5

    and-int/lit8 v4, p1, 0x10

    if-nez v4, :cond_5

    and-int/lit8 v4, p1, 0x20

    if-nez v4, :cond_5

    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_5

    and-int/lit16 v4, p1, 0x80

    if-nez v4, :cond_5

    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_f

    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    const-string p0, "Orientation"

    invoke-virtual {v4, p0, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_8

    const/4 v1, 0x6

    if-eq p0, v1, :cond_7

    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    iput v2, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->rotation:I

    goto :goto_4

    :cond_6
    const/16 p0, 0x10e

    iput p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->rotation:I

    goto :goto_4

    :cond_7
    const/16 p0, 0x5a

    iput p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->rotation:I

    goto :goto_4

    :cond_8
    const/16 p0, 0xb4

    iput p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->rotation:I

    :cond_9
    :goto_4
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_a

    const-string p0, "Model"

    invoke-virtual {v4, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->model:Ljava/lang/String;

    :cond_a
    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_b

    const-string p0, "Make"

    invoke-virtual {v4, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->make:Ljava/lang/String;

    :cond_b
    and-int/lit8 p0, p1, 0x20

    const/16 v1, 0x18

    if-eqz p0, :cond_c

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_c

    const-string p0, "FNumber"

    invoke-virtual {v4, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->wrapFNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->fNumber:Ljava/lang/String;

    :cond_c
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_d

    const-string p0, "ExposureTime"

    invoke-virtual {v4, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->wrapExposureTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->exposureTime:Ljava/lang/String;

    :cond_d
    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_e

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_e

    const-string p0, "ISOSpeedRatings"

    invoke-virtual {v4, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->wrapIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->iso:Ljava/lang/String;

    :cond_e
    and-int/lit16 p0, p1, 0x100

    if-eqz p0, :cond_f

    const-string p0, "FocalLength"

    invoke-virtual {v4, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->wrapFocalLength(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "mm"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->focalLength:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_5
    return-object v0
.end method

.method private static wrapExposureTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "1/%d"

    new-array v6, v6, [Ljava/lang/Object;

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    double-to-int v4, v0

    int-to-double v7, v4

    sub-double/2addr v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'\'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double p0, v0, v7

    if-lez p0, :cond_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, " 1/%d"

    new-array v6, v6, [Ljava/lang/Object;

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v4

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_0
    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method private static wrapFNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static wrapFocalLength(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static wrapIso(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExposureTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->exposureTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFocalLength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->focalLength:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->height:I

    return v0
.end method

.method public getIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->iso:Ljava/lang/String;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->make:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->width:I

    return v0
.end method

.method public getfNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/ImageInfo;->fNumber:Ljava/lang/String;

    return-object v0
.end method
