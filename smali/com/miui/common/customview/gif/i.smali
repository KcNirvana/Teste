.class final Lcom/miui/common/customview/gif/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ayb:Lcom/miui/common/customview/gif/GifImageView;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/gif/i;->ayb:Lcom/miui/common/customview/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/customview/gif/i;->ayb:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/miui/common/customview/gif/GifImageView;->aEL(Lcom/miui/common/customview/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/common/customview/gif/i;->ayb:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/miui/common/customview/gif/GifImageView;->aEJ(Lcom/miui/common/customview/gif/GifImageView;Lcom/miui/common/customview/gif/e;)Lcom/miui/common/customview/gif/e;

    iget-object v0, p0, Lcom/miui/common/customview/gif/i;->ayb:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/miui/common/customview/gif/GifImageView;->aEI(Lcom/miui/common/customview/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/common/customview/gif/i;->ayb:Lcom/miui/common/customview/gif/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/customview/gif/GifImageView;->aEK(Lcom/miui/common/customview/gif/GifImageView;Z)Z

    return-void
.end method
