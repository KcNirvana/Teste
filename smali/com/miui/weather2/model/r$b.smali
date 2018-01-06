.class Lcom/miui/weather2/model/r$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/weather2/structures/MinuteRainData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Lcom/miui/weather2/structures/CityData;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/miui/weather2/model/r$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/model/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/weather2/structures/MinuteRainData;
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/weather2/model/r$b;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/model/r$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/weather2/model/r$b;->d:Lcom/miui/weather2/structures/CityData;

    invoke-static {v1, v2}, Lcom/miui/weather2/model/ag;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/model/r$b;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Z)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/miui/weather2/model/r$b;->b:Z

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/model/r$b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/model/r$b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/r$b;->d:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/CityData;->getLocale()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/model/r$b;->d:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/model/r$b;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/f/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/weather2/model/r$b;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3, v1}, Lcom/miui/weather2/e/c;->a(Ljava/lang/String;JLandroid/content/Context;)Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method a(DD)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/r$b;->e:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/r$b;->f:Ljava/lang/String;

    return-void
.end method

.method a(Lcom/miui/weather2/ActivityMinuteRain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/r$b;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/weather2/model/r$b;->g:Lcom/miui/weather2/model/r$a;

    return-void
.end method

.method a(Lcom/miui/weather2/structures/CityData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/r$b;->d:Lcom/miui/weather2/structures/CityData;

    return-void
.end method

.method protected a(Lcom/miui/weather2/structures/MinuteRainData;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/model/r$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/r$b;->g:Lcom/miui/weather2/model/r$a;

    invoke-interface {v0, p1}, Lcom/miui/weather2/model/r$a;->b(Lcom/miui/weather2/structures/MinuteRainData;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/r$b;->g:Lcom/miui/weather2/model/r$a;

    invoke-interface {v0, p1}, Lcom/miui/weather2/model/r$a;->a(Lcom/miui/weather2/structures/MinuteRainData;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/r$b;->b:Z

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/r$b;->c:Z

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/r$b;->a([Ljava/lang/Void;)Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/r$b;->a(Lcom/miui/weather2/structures/MinuteRainData;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
