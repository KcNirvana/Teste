.class Lcom/miui/weather2/ActivityWeatherMain$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityWeatherMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$b;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bj;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v1}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/ax;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->q(Lcom/miui/weather2/ActivityWeatherMain;)V

    const-string v0, "Wth2:ActivityWeatherMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitAsyncTask app version info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$b;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v2}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
