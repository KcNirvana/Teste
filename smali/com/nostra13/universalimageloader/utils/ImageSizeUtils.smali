.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [I

    const/16 v2, 0xd33

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v2, v1, v3

    const/16 v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v0, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v5

    const/4 v2, 0x1

    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v4, v3, v2, p3}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result v2

    return v2

    :pswitch_0
    if-eqz p3, :cond_3

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v0, v3, 0x2

    :goto_1
    div-int v7, v1, v2

    if-gt v7, v6, :cond_2

    div-int v7, v0, v2

    if-le v7, v5, :cond_0

    :cond_2
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    div-int v7, v4, v6

    div-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_4

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v0, v3, 0x2

    :goto_2
    div-int v7, v1, v2

    if-le v7, v6, :cond_0

    div-int v7, v0, v2

    if-le v7, v5, :cond_0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    div-int v7, v4, v6

    div-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v6

    int-to-float v9, v5

    int-to-float v10, v7

    div-float v8, v9, v10

    int-to-float v9, v4

    int-to-float v10, v6

    div-float v2, v9, v10

    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_0

    cmpl-float v9, v8, v2

    if-gez v9, :cond_1

    :cond_0
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_5

    cmpg-float v9, v8, v2

    if-gez v9, :cond_5

    :cond_1
    move v1, v7

    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v0, v9

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p3, :cond_2

    if-ge v1, v5, :cond_2

    if-lt v0, v4, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v0, v4, :cond_4

    :cond_3
    int-to-float v9, v1

    int-to-float v10, v5

    div-float v3, v9, v10

    :cond_4
    return v3

    :cond_5
    int-to-float v9, v5

    div-float/2addr v9, v2

    float-to-int v1, v9

    move v0, v6

    goto :goto_0
.end method

.method public static computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)I
    .locals 8

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    sget-object v6, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    sget-object v6, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    int-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    int-to-float v6, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    return v6
.end method

.method private static considerMaxTextureSize(IIIZ)I
    .locals 3

    sget-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    sget-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    :goto_0
    div-int v2, p0, p2

    if-gt v2, v1, :cond_0

    div-int v2, p1, p2

    if-le v2, v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3

    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    :cond_0
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2
.end method
