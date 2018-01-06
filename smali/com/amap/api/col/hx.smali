.class Lcom/amap/api/col/hx;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/amap/api/col/hw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/hw;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/hx;->a:Lcom/amap/api/col/hw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hx;->a:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "TimerTask run"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
