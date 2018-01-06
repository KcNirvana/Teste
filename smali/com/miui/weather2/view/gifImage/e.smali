.class Lcom/miui/weather2/view/gifImage/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/gifImage/GifImageView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/gifImage/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/e;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/e;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-static {v0}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/e;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-static {v0}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/e;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    iget-object v1, p0, Lcom/miui/weather2/view/gifImage/e;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-static {v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
