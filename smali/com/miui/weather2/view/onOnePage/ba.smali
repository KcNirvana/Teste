.class Lcom/miui/weather2/view/onOnePage/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/f",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;ZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/g/b/j",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/miui/weather2/view/onOnePage/bb;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/bb;-><init>(Lcom/miui/weather2/view/onOnePage/ba;)V

    invoke-static {v0, v1, v2, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ba;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->g(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/miui/weather2/view/onOnePage/bc;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/bc;-><init>(Lcom/miui/weather2/view/onOnePage/ba;)V

    invoke-static {v0, v1, v2, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    return v3
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/g/b/j;Z)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/onOnePage/ba;->a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/g/b/j",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/g/b/j;ZZ)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/ba;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;ZZ)Z

    move-result v0

    return v0
.end method
