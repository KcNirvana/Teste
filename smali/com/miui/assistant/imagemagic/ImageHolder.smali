.class public Lcom/miui/assistant/imagemagic/ImageHolder;
.super Ljava/lang/Object;
.source "ImageHolder.java"


# instance fields
.field public h:I

.field public pixels:[I

.field public w:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    iget v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v1, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->pixels:[I

    iget-object v1, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->pixels:[I

    iget v3, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v6, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v7, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    iget v1, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v3, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->pixels:[I

    iget v3, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v6, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v7, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method public getImageData(Landroid/graphics/Bitmap;)Lcom/miui/assistant/imagemagic/ImageHolder;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    iget v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v1, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->pixels:[I

    iget-object v1, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->pixels:[I

    iget v3, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v6, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    iget v7, p0, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object p0
.end method
