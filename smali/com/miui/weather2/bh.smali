.class Lcom/miui/weather2/bh;
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
.field final synthetic a:Lcom/miui/weather2/WeatherIndexActivity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/WeatherIndexActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bh;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;ZZ)Z
    .locals 3
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

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/weather2/bi;

    invoke-direct {v0, p0}, Lcom/miui/weather2/bi;-><init>(Lcom/miui/weather2/bh;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/weather2/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return v2
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/g/b/j;Z)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/weather2/bh;->a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;Z)Z
    .locals 2
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

    const-string v0, "Wth2:WeatherIndexActivity"

    const-string v1, "mHeaderImageListener.onException()"

    invoke-static {v0, v1, p1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/bh;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/g/b/j;ZZ)Z

    move-result v0

    return v0
.end method
