.class public Lcom/nostra13/universalimageloader/core/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final biH:Z

.field private final biI:Landroid/graphics/BitmapFactory$Options;

.field private final biJ:Lcom/nostra13/universalimageloader/core/download/c;

.field private final biK:Ljava/lang/Object;

.field private final biL:Ljava/lang/String;

.field private final biM:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final biN:Ljava/lang/String;

.field private final biO:Ljava/lang/String;

.field private final biP:Lcom/nostra13/universalimageloader/core/assist/b;

.field private final biQ:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/c;Lcom/nostra13/universalimageloader/core/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a/b;->biL:Ljava/lang/String;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/a/b;->biN:Ljava/lang/String;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/a/b;->biO:Ljava/lang/String;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/a/b;->biP:Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/n;->bIa()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biM:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/a/b;->biQ:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/a/b;->biJ:Lcom/nostra13/universalimageloader/core/download/c;

    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/n;->bHV()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biK:Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/n;->bIb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biH:Z

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biI:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/n;->bIc()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a/b;->biI:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/a/b;->bES(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private bES(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/a/b;->bET(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/a/b;->bEU(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_1
    return-void
.end method

.method private bET(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method private bEU(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public bEV()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biI:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public bEW()Lcom/nostra13/universalimageloader/core/download/c;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biJ:Lcom/nostra13/universalimageloader/core/download/c;

    return-object v0
.end method

.method public bEX()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biK:Ljava/lang/Object;

    return-object v0
.end method

.method public bEY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biL:Ljava/lang/String;

    return-object v0
.end method

.method public bEZ()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biM:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public bFa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biN:Ljava/lang/String;

    return-object v0
.end method

.method public bFb()Lcom/nostra13/universalimageloader/core/assist/b;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biP:Lcom/nostra13/universalimageloader/core/assist/b;

    return-object v0
.end method

.method public bFc()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biQ:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public bFd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a/b;->biH:Z

    return v0
.end method
