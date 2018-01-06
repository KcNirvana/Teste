.class Lcom/miui/weather2/view/onOnePage/ax;
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
        "Lcom/bumptech/glide/load/resource/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/d/b;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;ZZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/g/b/j",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;ZZ)Z"
        }
    .end annotation

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    const-string v0, "DOWNLOAD_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, v1, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0, v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ay;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ay;-><init>(Lcom/miui/weather2/view/onOnePage/ax;)V

    invoke-static {v0, v1, v2, v8, v9}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->g(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1, v6, v8, v9}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/az;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/az;-><init>(Lcom/miui/weather2/view/onOnePage/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    return v3
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/g/b/j;Z)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/onOnePage/ax;->a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/g/b/j",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    const-string v0, "DOWNLOAD_FAIL"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, v1, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/ax;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/g/b/j;ZZ)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/d/b;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/ax;->a(Lcom/bumptech/glide/load/resource/d/b;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;ZZ)Z

    move-result v0

    return v0
.end method
