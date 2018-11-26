.class final Lcom/nostra13/universalimageloader/core/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/nostra13/universalimageloader/a/c;


# instance fields
.field private final bjA:Lcom/nostra13/universalimageloader/core/download/c;

.field final bjB:Lcom/nostra13/universalimageloader/core/b/b;

.field private final bjC:Lcom/nostra13/universalimageloader/core/download/c;

.field private final bjD:Z

.field private final bjE:Lcom/nostra13/universalimageloader/core/assist/b;

.field final bjF:Ljava/lang/String;

.field private final bjr:Lcom/nostra13/universalimageloader/core/d;

.field private final bjs:Lcom/nostra13/universalimageloader/core/a/a;

.field private final bjt:Lcom/nostra13/universalimageloader/core/download/c;

.field private final bju:Lcom/nostra13/universalimageloader/core/c;

.field final bjv:Lcom/nostra13/universalimageloader/core/e/d;

.field private final bjw:Lcom/nostra13/universalimageloader/core/h;

.field final bjx:Lcom/nostra13/universalimageloader/core/b/a;

.field private bjy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private final bjz:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field final options:Lcom/nostra13/universalimageloader/core/n;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/h;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/a;->bjw:Lcom/nostra13/universalimageloader/core/h;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/a;->handler:Landroid/os/Handler;

    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bjX:Lcom/nostra13/universalimageloader/core/download/c;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjt:Lcom/nostra13/universalimageloader/core/download/c;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bjY:Lcom/nostra13/universalimageloader/core/download/c;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjA:Lcom/nostra13/universalimageloader/core/download/c;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bjZ:Lcom/nostra13/universalimageloader/core/download/c;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjC:Lcom/nostra13/universalimageloader/core/download/c;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bka:Lcom/nostra13/universalimageloader/core/a/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjs:Lcom/nostra13/universalimageloader/core/a/a;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkS:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkT:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkU:Lcom/nostra13/universalimageloader/core/e/d;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkV:Lcom/nostra13/universalimageloader/core/assist/b;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjE:Lcom/nostra13/universalimageloader/core/assist/b;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->options:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkW:Lcom/nostra13/universalimageloader/core/b/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjx:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkX:Lcom/nostra13/universalimageloader/core/b/b;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjB:Lcom/nostra13/universalimageloader/core/b/b;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjD:Z

    return-void
.end method

.method private bFY()V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGk()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/nostra13/universalimageloader/core/a;)V

    throw v0

    :cond_0
    return-void
.end method

.method private bFZ()V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGa()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGb()V

    return-void
.end method

.method private bGa()V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGm()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/nostra13/universalimageloader/core/a;)V

    throw v0

    :cond_0
    return-void
.end method

.method private bGb()V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/nostra13/universalimageloader/core/a;)V

    throw v0

    :cond_0
    return-void
.end method

.method private bGc(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/e/d;->bFP()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v5

    new-instance v0, Lcom/nostra13/universalimageloader/core/a/b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjE:Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGi()Lcom/nostra13/universalimageloader/core/download/c;

    move-result-object v6

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/c;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjs:Lcom/nostra13/universalimageloader/core/a/a;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/a/a;->bER(Lcom/nostra13/universalimageloader/core/a/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private bGd()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Delay %d ms before loading...  [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHT()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHT()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGl()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Task was interrupted [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    return v3
.end method

.method private bGe()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGi()Lcom/nostra13/universalimageloader/core/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHV()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/c;->bFs(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "No stream for image [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/nostra13/universalimageloader/b/a/a;->bJj(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/a/c;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    throw v0
.end method

.method private bGf()V
    .locals 4

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjD:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGk()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/r;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/r;-><init>(Lcom/nostra13/universalimageloader/core/a;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/core/a;->bGp(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/c;)V

    return-void
.end method

.method private bGg(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjD:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/q;-><init>(Lcom/nostra13/universalimageloader/core/a;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/core/a;->bGp(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/c;)V

    return-void
.end method

.method private bGh(II)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjB:Lcom/nostra13/universalimageloader/core/b/b;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nostra13/universalimageloader/core/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/p;-><init>(Lcom/nostra13/universalimageloader/core/a;II)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/core/a;->bGp(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/c;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private bGi()Lcom/nostra13/universalimageloader/core/download/c;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->bGx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjA:Lcom/nostra13/universalimageloader/core/download/c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->bGy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjC:Lcom/nostra13/universalimageloader/core/download/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjt:Lcom/nostra13/universalimageloader/core/download/c;

    goto :goto_0
.end method

.method private bGk()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Task was interrupted [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    return v3
.end method

.method private bGl()Z
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bGm()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/e/d;->bFS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    return v3
.end method

.method private bGn()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjv:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c;->bGz(Lcom/nostra13/universalimageloader/core/e/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    return v3
.end method

.method private bGo(II)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/b/a/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-direct {v4, p1, p2}, Lcom/nostra13/universalimageloader/core/assist/b;-><init>(II)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIH(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bij:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bII(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v7

    new-instance v0, Lcom/nostra13/universalimageloader/core/a/b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->biE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGi()Lcom/nostra13/universalimageloader/core/download/c;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/c;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjs:Lcom/nostra13/universalimageloader/core/a/a;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/a/a;->bER(Lcom/nostra13/universalimageloader/core/a/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/d;->bkf:Lcom/nostra13/universalimageloader/core/d/a;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Process image before cache on disk [%s]"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/d;->bkf:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/d/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "Bitmap processor for disk cache returned null [%s]"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/nostra13/universalimageloader/b/a/a;->bJi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    return v0

    :cond_0
    move v0, v8

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static bGp(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/c;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p3, p0}, Lcom/nostra13/universalimageloader/core/c;->bGA(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private bGq()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "Cache image on disk [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGe()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget v2, v2, Lcom/nostra13/universalimageloader/core/d;->bkd:I

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget v3, v3, Lcom/nostra13/universalimageloader/core/d;->bke:I

    if-gtz v2, :cond_0

    if-lez v3, :cond_1

    :cond_0
    const-string/jumbo v4, "Resize image in disk cache [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3}, Lcom/nostra13/universalimageloader/core/a;->bGo(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method private bGr()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nostra13/universalimageloader/b/a/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    const-string/jumbo v2, "Load image from disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biz:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFZ()V

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/a;->bGc(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_0
    :goto_1
    const-string/jumbo v2, "Load image from network [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/n;->bHU()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGq()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/b/a/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFZ()V

    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/a;->bGc(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_2
    :goto_2
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->bis:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/nostra13/universalimageloader/core/a;->bGg(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    :cond_3
    move-object v1, v0

    :goto_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->biw:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/universalimageloader/core/a;->bGg(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_5
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->biv:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/universalimageloader/core/a;->bGg(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_6
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->biu:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/universalimageloader/core/a;->bGg(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    move-object v0, v1

    :goto_7
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->bit:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lcom/nostra13/universalimageloader/core/a;->bGg(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4
.end method

.method private bGs()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->bGv()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c;->bGw()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->bGw()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, ".. Resume loading [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGl()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v0, "Task was interrupted [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic bGt(Lcom/nostra13/universalimageloader/core/a;)Lcom/nostra13/universalimageloader/core/d;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    return-object v0
.end method


# virtual methods
.method public bEa(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjD:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/a;->bGh(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method bGj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjF:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGs()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjw:Lcom/nostra13/universalimageloader/core/h;

    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/h;->bkY:Ljava/util/concurrent/locks/ReentrantLock;

    const-string/jumbo v0, "Start display image task [%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Image already is loading. Waiting... [%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFZ()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkb:Lcom/nostra13/universalimageloader/b/b/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nostra13/universalimageloader/b/b/a;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGr()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFZ()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFY()V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHN()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "PreProcess image before caching in memory [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHO()Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/nostra13/universalimageloader/core/d/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v2, "Pre-processor returned null [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHP()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Cache image in memory [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjr:Lcom/nostra13/universalimageloader/core/d;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/d;->bkb:Lcom/nostra13/universalimageloader/b/b/a;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/nostra13/universalimageloader/b/b/a;->bKi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHQ()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "PostProcess image before displaying [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/n;->bHR()Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/nostra13/universalimageloader/core/d/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    const-string/jumbo v2, "Post-processor returned null [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDQ(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFZ()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bFY()V
    :try_end_1
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Lcom/nostra13/universalimageloader/core/b;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjw:Lcom/nostra13/universalimageloader/core/h;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/b;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/h;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a;->bjD:Z

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->bju:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/a;->bGp(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/c;)V

    return-void

    :cond_8
    :try_start_2
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biA:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->bjy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string/jumbo v2, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/a;->bjz:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->bGf()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
