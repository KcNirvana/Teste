.class Lcom/amap/api/col/ak$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/ak;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/ak;Lcom/amap/api/col/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/ak$a;-><init>(Lcom/amap/api/col/ak;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v1, "run"

    const-string v0, "MarkerThread"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ak$a;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->a(Lcom/amap/api/col/ak;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->a(Lcom/amap/api/col/ak;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->b(Lcom/amap/api/col/ak;)I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v2}, Lcom/amap/api/col/ak;->a(Lcom/amap/api/col/ak;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/col/ak;->a(Lcom/amap/api/col/ak;I)I

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->d(Lcom/amap/api/col/ak;)Lcom/amap/api/col/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->a()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->e(Lcom/amap/api/col/ak;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xfa

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->a(Lcom/amap/api/col/ak;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/ak$a;->a:Lcom/amap/api/col/ak;

    invoke-static {v0}, Lcom/amap/api/col/ak;->c(Lcom/amap/api/col/ak;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
