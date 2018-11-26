.class final Lcom/nostra13/universalimageloader/core/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic blZ:Lcom/nostra13/universalimageloader/core/c;

.field final synthetic bma:Lcom/nostra13/universalimageloader/core/a;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/s;->blZ:Lcom/nostra13/universalimageloader/core/c;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/s;->bma:Lcom/nostra13/universalimageloader/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/s;->blZ:Lcom/nostra13/universalimageloader/core/c;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/s;->bma:Lcom/nostra13/universalimageloader/core/a;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/a;->bGj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/b/a/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/s;->blZ:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/c;->bGL(Lcom/nostra13/universalimageloader/core/c;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/s;->blZ:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/c;->bGK(Lcom/nostra13/universalimageloader/core/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/s;->bma:Lcom/nostra13/universalimageloader/core/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/s;->blZ:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/c;->bGJ(Lcom/nostra13/universalimageloader/core/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/s;->bma:Lcom/nostra13/universalimageloader/core/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
