.class final Lcom/nostra13/universalimageloader/b/a/b/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/k;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJC(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-object v3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJJ(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJI(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJF(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJH(Lcom/nostra13/universalimageloader/b/a/b/a/c;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/k;->bmX:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJE(Lcom/nostra13/universalimageloader/b/a/b/a/c;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
