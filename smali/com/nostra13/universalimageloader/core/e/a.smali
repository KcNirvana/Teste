.class public Lcom/nostra13/universalimageloader/core/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/core/e/d;


# instance fields
.field protected final bjm:Lcom/nostra13/universalimageloader/core/assist/b;

.field protected final bjn:Ljava/lang/String;

.field protected final bjo:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/nostra13/universalimageloader/core/e/a;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "imageSize must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scaleType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjn:Ljava/lang/String;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjm:Lcom/nostra13/universalimageloader/core/assist/b;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjo:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-void
.end method


# virtual methods
.method public bFO()I
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjm:Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/b;->bEL()I

    move-result v0

    return v0
.end method

.method public bFP()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjo:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public bFQ()I
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjm:Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/b;->bEM()I

    move-result v0

    return v0
.end method

.method public bFR()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bFS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bFT(Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bFU(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/a;->bjn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
