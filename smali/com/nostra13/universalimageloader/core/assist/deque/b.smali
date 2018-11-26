.class abstract Lcom/nostra13/universalimageloader/core/assist/deque/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private bib:Lcom/nostra13/universalimageloader/core/assist/deque/a;

.field bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

.field bid:Ljava/lang/Object;

.field final synthetic bie:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bie:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bEI()Lcom/nostra13/universalimageloader/core/assist/deque/a;

    move-result-object v2

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    if-nez v2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bid:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/a;->bhY:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private bEK(Lcom/nostra13/universalimageloader/core/assist/deque/a;)Lcom/nostra13/universalimageloader/core/assist/deque/a;
    .locals 3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bEJ(Lcom/nostra13/universalimageloader/core/assist/deque/a;)Lcom/nostra13/universalimageloader/core/assist/deque/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/a;->bhY:Ljava/lang/Object;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bEI()Lcom/nostra13/universalimageloader/core/assist/deque/a;

    move-result-object v0

    return-object v0

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method bEH()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bie:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bEK(Lcom/nostra13/universalimageloader/core/assist/deque/a;)Lcom/nostra13/universalimageloader/core/assist/deque/a;

    move-result-object v2

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    if-nez v2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bid:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/a;->bhY:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method abstract bEI()Lcom/nostra13/universalimageloader/core/assist/deque/a;
.end method

.method abstract bEJ(Lcom/nostra13/universalimageloader/core/assist/deque/a;)Lcom/nostra13/universalimageloader/core/assist/deque/a;
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bic:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bib:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bid:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bEH()V

    return-object v0
.end method

.method public remove()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bib:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bib:Lcom/nostra13/universalimageloader/core/assist/deque/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bie:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/a;->bhY:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/b;->bie:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->bEE(Lcom/nostra13/universalimageloader/core/assist/deque/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
