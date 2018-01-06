.class public Lcom/miui/weather2/model/ag$i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/weather2/structures/WeatherData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/ag;

.field private b:Lcom/miui/weather2/structures/CityData;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/model/ag$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/weather2/model/ag;Lcom/miui/weather2/model/ag$c;Lcom/miui/weather2/structures/CityData;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/miui/weather2/model/ag$i;->a:Lcom/miui/weather2/model/ag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/ag$i;->b:Lcom/miui/weather2/structures/CityData;

    iput-object v0, p0, Lcom/miui/weather2/model/ag$i;->c:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/ag$i;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p3, p0, Lcom/miui/weather2/model/ag$i;->b:Lcom/miui/weather2/structures/CityData;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/weather2/structures/WeatherData;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/ag$i;->b:Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/ag$i;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ag$i;->a:Lcom/miui/weather2/model/ag;

    invoke-static {v0}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/ag$i;->b:Lcom/miui/weather2/structures/CityData;

    invoke-static {v0, v1}, Lcom/miui/weather2/model/ag;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/ag$i;->a:Lcom/miui/weather2/model/ag;

    invoke-static {v1}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Z)Z

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ag$i;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ag$i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/ag$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/weather2/model/ag$c;->a(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$i;->a([Ljava/lang/Void;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$i;->a(Lcom/miui/weather2/structures/WeatherData;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
