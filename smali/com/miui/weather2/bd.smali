.class Lcom/miui/weather2/bd;
.super Lmiui/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/bd$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-super {p0}, Lmiui/a/b;->a()V

    const-string v0, "WeatherApplication onCreate"

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/weather2/tools/aj;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/weather2/bd$a;

    invoke-virtual {p0}, Lcom/miui/weather2/bd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/weather2/bd$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/bd$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->i(Landroid/content/Context;)V

    :cond_0
    const-string v0, "WeatherApplication onCreate"

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;)V

    return-void
.end method
