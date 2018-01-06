.class public Lcom/amap/api/col/ih;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/ih;->b:Lcom/amap/api/col/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps2d/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/bz;->a()Lcom/amap/api/col/de;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "11K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/amap/api/col/cw;->a(Landroid/content/Context;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/cw$a;

    move-result-object v1

    sget v2, Lcom/amap/api/col/cw;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/ih;->b:Lcom/amap/api/col/h;

    invoke-interface {v2}, Lcom/amap/api/col/h;->d()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, v1, Lcom/amap/api/col/cw$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/amap/api/col/cw$a;->a:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/ih;->b:Lcom/amap/api/col/h;

    invoke-interface {v3}, Lcom/amap/api/col/h;->d()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/amap/api/col/cw$a;->p:Lcom/amap/api/col/cw$a$a;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/amap/api/col/bz;->a()Lcom/amap/api/col/de;

    move-result-object v2

    iget-object v3, v1, Lcom/amap/api/col/cw$a;->p:Lcom/amap/api/col/cw$a$a;

    iget-boolean v3, v3, Lcom/amap/api/col/cw$a$a;->a:Z

    invoke-virtual {v2, v3}, Lcom/amap/api/col/de;->a(Z)V

    :cond_3
    iget-object v2, v1, Lcom/amap/api/col/cw$a;->r:Lcom/amap/api/col/cw$a$c;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/amap/api/col/dd;

    iget-object v3, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    const-string v4, "2dmap"

    iget-object v5, v1, Lcom/amap/api/col/cw$a;->r:Lcom/amap/api/col/cw$a$c;

    iget-object v5, v5, Lcom/amap/api/col/cw$a$c;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/amap/api/col/cw$a;->r:Lcom/amap/api/col/cw$a$c;

    iget-object v6, v6, Lcom/amap/api/col/cw$a$c;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/col/dd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amap/api/col/dd;->a()V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/amap/api/col/cw$a;->q:Lcom/amap/api/col/cw$a$d;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/amap/api/col/cw$a;->q:Lcom/amap/api/col/cw$a$d;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/amap/api/col/cw$a$d;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/amap/api/col/cw$a$d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/amap/api/col/cw$a$d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    new-instance v1, Lcom/amap/api/col/el;

    iget-object v2, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {}, Lcom/amap/api/col/bz;->a()Lcom/amap/api/col/de;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/el;-><init>(Landroid/content/Context;Lcom/amap/api/col/em;Lcom/amap/api/col/de;)V

    invoke-virtual {v1}, Lcom/amap/api/col/el;->a()V

    :cond_6
    :goto_1
    sput-object v0, Lcom/amap/api/col/it;->q:Lcom/amap/api/col/de;

    iget-object v1, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/dq;->a(Landroid/content/Context;Lcom/amap/api/col/de;)Lcom/amap/api/col/dq;

    invoke-virtual {p0}, Lcom/amap/api/col/ih;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amap/api/col/ih;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dq;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    new-instance v4, Lcom/amap/api/col/em;

    invoke-direct {v4, v3, v2, v1}, Lcom/amap/api/col/em;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/el;

    iget-object v2, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/bz;->a()Lcom/amap/api/col/de;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Lcom/amap/api/col/el;-><init>(Landroid/content/Context;Lcom/amap/api/col/em;Lcom/amap/api/col/de;)V

    invoke-virtual {v1}, Lcom/amap/api/col/el;->a()V

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/amap/api/col/el;

    iget-object v2, p0, Lcom/amap/api/col/ih;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {}, Lcom/amap/api/col/bz;->a()Lcom/amap/api/col/de;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/el;-><init>(Landroid/content/Context;Lcom/amap/api/col/em;Lcom/amap/api/col/de;)V

    invoke-virtual {v1}, Lcom/amap/api/col/el;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
