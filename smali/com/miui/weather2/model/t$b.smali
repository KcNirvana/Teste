.class Lcom/miui/weather2/model/t$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/weather2/structures/RadarCloudImageData;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/model/t$b;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/t$b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/t$b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/t$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/t$b;Lcom/miui/weather2/structures/RadarCloudImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/t$b;->a(Lcom/miui/weather2/structures/RadarCloudImageData;)V

    return-void
.end method

.method private a(Lcom/miui/weather2/structures/RadarCloudImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/t$b;->b:Lcom/miui/weather2/structures/RadarCloudImageData;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/model/t$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()Lcom/bumptech/glide/a;

    move-result-object v0

    const/16 v2, 0x1f4

    const/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/a;->c(II)Lcom/bumptech/glide/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/g/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/t$b;->b:Lcom/miui/weather2/structures/RadarCloudImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/t$b;->b:Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->setCloudImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/t$b;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/t$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
