.class final Lcom/miui/common/customview/gif/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aya:Lcom/miui/common/customview/gif/GifImageView;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/gif/h;->aya:Lcom/miui/common/customview/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/gif/h;->aya:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/customview/gif/GifImageView;->aEG(Lcom/miui/common/customview/gif/GifImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/h;->aya:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/customview/gif/GifImageView;->aEH(Lcom/miui/common/customview/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/h;->aya:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/customview/gif/GifImageView;->aEH(Lcom/miui/common/customview/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/h;->aya:Lcom/miui/common/customview/gif/GifImageView;

    iget-object v1, p0, Lcom/miui/common/customview/gif/h;->aya:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v1}, Lcom/miui/common/customview/gif/GifImageView;->aEH(Lcom/miui/common/customview/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
