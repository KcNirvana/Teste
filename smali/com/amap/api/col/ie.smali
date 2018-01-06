.class abstract Lcom/amap/api/col/ie;
.super Lcom/amap/api/col/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/col/ai;"
    }
.end annotation


# instance fields
.field protected c:Lcom/amap/api/col/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/col/ba",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/col/bb;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/am;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ai;-><init>(Lcom/amap/api/col/am;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/ie;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    new-instance v0, Lcom/amap/api/col/if;

    invoke-direct {v0, p0}, Lcom/amap/api/col/if;-><init>(Lcom/amap/api/col/ie;)V

    iput-object v0, p0, Lcom/amap/api/col/ie;->f:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/col/ig;

    invoke-direct {v0, p0}, Lcom/amap/api/col/ig;-><init>(Lcom/amap/api/col/ie;)V

    iput-object v0, p0, Lcom/amap/api/col/ie;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/ie;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/ie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/ie;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/ie;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ie;->d:Z

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/ie;->c:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ie;->c:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/ie;->i()V

    iget-object v0, p0, Lcom/amap/api/col/ie;->c:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ie;->c:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->b()V

    :cond_1
    iput-object v1, p0, Lcom/amap/api/col/ie;->c:Lcom/amap/api/col/ba;

    iput-object v1, p0, Lcom/amap/api/col/ie;->g:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/amap/api/col/ie;->f:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/amap/api/col/ie;->a:Lcom/amap/api/col/am;

    iput-object v1, p0, Lcom/amap/api/col/ie;->b:Landroid/content/Context;

    return-void
.end method

.method protected abstract b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/ie;->d:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/ie;->d:Z

    iget-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/bb;

    invoke-virtual {p0}, Lcom/amap/api/col/ie;->g()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/ie;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/col/ie;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/col/bb;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    iget-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    invoke-virtual {v0}, Lcom/amap/api/col/bb;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/amap/api/col/ai;->c()V

    invoke-virtual {p0}, Lcom/amap/api/col/ie;->i()V

    return-void
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method

.method protected h()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    :cond_0
    new-instance v0, Lcom/amap/api/col/bb;

    invoke-virtual {p0}, Lcom/amap/api/col/ie;->g()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/ie;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/col/ie;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/col/bb;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    iget-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    invoke-virtual {v0}, Lcom/amap/api/col/bb;->a()V

    return-void
.end method

.method public i()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/ie;->d:Z

    iget-object v1, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ie;->e:Ljava/util/Vector;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;

    invoke-virtual {v0}, Lcom/amap/api/col/bb;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ie;->h:Lcom/amap/api/col/bb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncServer"

    const-string v2, "stopThreads"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
