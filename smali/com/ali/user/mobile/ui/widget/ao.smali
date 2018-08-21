.class public Lcom/ali/user/mobile/ui/widget/ao;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->e()Lcom/alipay/mobile/common/c;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/ali/user/mobile/ui/widget/ap;

    invoke-direct {v2, p1}, Lcom/ali/user/mobile/ui/widget/ap;-><init>(Landroid/widget/ImageView;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/alipay/mobile/common/c;->a(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;

    const-string/jumbo v0, "ImageLoader"

    const-string/jumbo v1, "download"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImageLoader"

    const-string/jumbo v2, "download image error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
