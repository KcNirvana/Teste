.class Lcom/amap/api/col/cd$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/cd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/col/cd;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cd$b;->a:Lcom/amap/api/col/cd;

    iput-object p2, p0, Lcom/amap/api/col/cd$b;->a:Lcom/amap/api/col/cd;

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd$b;->a:Lcom/amap/api/col/cd;

    iget-object v1, p0, Lcom/amap/api/col/cd$b;->a:Lcom/amap/api/col/cd;

    iget-object v1, v1, Lcom/amap/api/col/cd;->l:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
