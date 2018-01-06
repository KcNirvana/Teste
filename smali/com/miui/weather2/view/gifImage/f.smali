.class Lcom/miui/weather2/view/gifImage/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/gifImage/GifImageView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/gifImage/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/f;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/f;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-static {v0, v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/f;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-static {v0, v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;Lcom/miui/weather2/view/gifImage/a;)Lcom/miui/weather2/view/gifImage/a;

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/f;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-static {v0, v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/f;->a:Lcom/miui/weather2/view/gifImage/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(Lcom/miui/weather2/view/gifImage/GifImageView;Z)Z

    return-void
.end method
