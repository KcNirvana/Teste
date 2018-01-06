.class Lcom/amap/api/col/cp$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cp;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/cp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    invoke-static {v0}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;)Lcom/amap/api/col/gt;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    new-instance v1, Lcom/amap/api/col/gt;

    iget-object v2, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    iget-object v2, v2, Lcom/amap/api/col/cp;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/col/gt;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;Lcom/amap/api/col/gt;)Lcom/amap/api/col/gt;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    new-instance v1, Lcom/amap/api/col/ga;

    iget-object v2, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    iget-object v2, v2, Lcom/amap/api/col/cp;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/col/ga;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;Lcom/amap/api/col/ga;)Lcom/amap/api/col/ga;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/cp$b;->a:Lcom/amap/api/col/cp;

    new-instance v1, Lcom/amap/api/col/gk;

    invoke-direct {v1}, Lcom/amap/api/col/gk;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/cp;->h:Lcom/amap/api/col/gk;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
