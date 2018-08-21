.class Lcom/alipay/android/app/ui/quickpay/util/c;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

.field final synthetic d:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->f:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->c:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    iput-object p5, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->d:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

    iput-object p6, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->f:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->f:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->c:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->d:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->e:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->f:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/c;->c:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
