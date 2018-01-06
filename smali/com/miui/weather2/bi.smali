.class Lcom/miui/weather2/bi;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/bh;


# direct methods
.method constructor <init>(Lcom/miui/weather2/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bi;->a:Lcom/miui/weather2/bh;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/bi;->a:Lcom/miui/weather2/bh;

    iget-object v0, v0, Lcom/miui/weather2/bh;->a:Lcom/miui/weather2/WeatherIndexActivity;

    invoke-static {v0}, Lcom/miui/weather2/WeatherIndexActivity;->a(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/bi;->a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/bi;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
