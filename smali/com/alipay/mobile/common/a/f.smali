.class final Lcom/alipay/mobile/common/a/f;
.super Lcom/alipay/mobile/common/cache/b;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/b",
        "<",
        "Lcom/alipay/mobile/common/a/k;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cache/b;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/f;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/alipay/mobile/common/a/k;Landroid/graphics/drawable/Drawable;)I
    .locals 1

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/cache/b;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/mobile/common/a/k;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/a/f;->a(Lcom/alipay/mobile/common/a/k;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/f;->a:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/cache/b;->b(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/f;->a:Z

    return-void
.end method
