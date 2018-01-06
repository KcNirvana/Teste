.class Lcom/amap/api/col/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/s;


# instance fields
.field private a:Lcom/amap/api/col/h;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method constructor <init>(Lcom/amap/api/col/h;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/col/bm;->b:Z

    iput-boolean v0, p0, Lcom/amap/api/col/bm;->c:Z

    iput-boolean v1, p0, Lcom/amap/api/col/bm;->d:Z

    iput-boolean v1, p0, Lcom/amap/api/col/bm;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/col/bm;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/col/bm;->g:Z

    iput v0, p0, Lcom/amap/api/col/bm;->h:I

    iput v0, p0, Lcom/amap/api/col/bm;->i:I

    new-instance v0, Lcom/amap/api/col/bn;

    invoke-direct {v0, p0}, Lcom/amap/api/col/bn;-><init>(Lcom/amap/api/col/bm;)V

    iput-object v0, p0, Lcom/amap/api/col/bm;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/col/bm;->a:Lcom/amap/api/col/h;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/bm;)Lcom/amap/api/col/h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bm;->a:Lcom/amap/api/col/h;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/bm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/bm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/col/bm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/col/bm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->c:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bm;->h:I

    iget-object v0, p0, Lcom/amap/api/col/bm;->a:Lcom/amap/api/col/h;

    invoke-interface {v0, p1}, Lcom/amap/api/col/h;->b(I)V

    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bm;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/bm;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->g:Z

    return v0
.end method

.method public b(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bm;->e:Z

    iget-object v0, p0, Lcom/amap/api/col/bm;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->c:Z

    return v0
.end method

.method public c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bm;->f:Z

    iget-object v0, p0, Lcom/amap/api/col/bm;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->b:Z

    return v0
.end method

.method public d(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bm;->c:Z

    iget-object v0, p0, Lcom/amap/api/col/bm;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->d:Z

    return v0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bm;->b:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bm;->k:Z

    return v0
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bm;->d:Z

    return-void
.end method
