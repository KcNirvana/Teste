.class Lcom/amap/api/col/bn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/amap/api/col/bm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v0}, Lcom/amap/api/col/bm;->a(Lcom/amap/api/col/bm;)Lcom/amap/api/col/h;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v0}, Lcom/amap/api/col/bm;->a(Lcom/amap/api/col/bm;)Lcom/amap/api/col/h;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v1}, Lcom/amap/api/col/bm;->b(Lcom/amap/api/col/bm;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UiSettingsDelegateImp"

    const-string v2, "handle_handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v0}, Lcom/amap/api/col/bm;->a(Lcom/amap/api/col/bm;)Lcom/amap/api/col/h;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v1}, Lcom/amap/api/col/bm;->c(Lcom/amap/api/col/bm;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->f(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v0}, Lcom/amap/api/col/bm;->a(Lcom/amap/api/col/bm;)Lcom/amap/api/col/h;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v1}, Lcom/amap/api/col/bm;->d(Lcom/amap/api/col/bm;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->e(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v0}, Lcom/amap/api/col/bm;->a(Lcom/amap/api/col/bm;)Lcom/amap/api/col/h;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bn;->a:Lcom/amap/api/col/bm;

    invoke-static {v1}, Lcom/amap/api/col/bm;->e(Lcom/amap/api/col/bm;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->d(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
