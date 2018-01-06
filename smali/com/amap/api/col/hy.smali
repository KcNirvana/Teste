.class Lcom/amap/api/col/hy;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/hw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/hw;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/hy;->b:Lcom/amap/api/col/hw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "onTouchHandler"

    iput-object v0, p0, Lcom/amap/api/col/hy;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hy;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hy;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$i;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/a$i;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    iget-object v2, p0, Lcom/amap/api/col/hy;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
