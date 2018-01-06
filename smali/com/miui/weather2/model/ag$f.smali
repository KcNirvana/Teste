.class Lcom/miui/weather2/model/ag$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
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
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/weather2/structures/CityData;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/model/ag$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/weather2/model/ag$e;Lcom/miui/weather2/structures/CityData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/ag$f;->b:Lcom/miui/weather2/structures/CityData;

    iput-object v0, p0, Lcom/miui/weather2/model/ag$f;->c:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/ag$f;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p1, p0, Lcom/miui/weather2/model/ag$f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/weather2/model/ag$f;->b:Lcom/miui/weather2/structures/CityData;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/weather2/structures/WeatherData;
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/model/ag$f;->b:Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/ag$f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ag$f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/weather2/model/ag$f;->b:Lcom/miui/weather2/structures/CityData;

    invoke-static {v0, v1}, Lcom/miui/weather2/model/ag;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/model/ag$f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Z)Z

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ag$f;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ag$f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/ag$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/weather2/model/ag$e;->a(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$f;->a([Ljava/lang/Void;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$f;->a(Lcom/miui/weather2/structures/WeatherData;)V

    return-void
.end method
