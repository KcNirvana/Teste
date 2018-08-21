.class public abstract Lcom/alipay/mobile/common/common/task/AbsTask;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lcom/alipay/mobile/common/common/Callback$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/common/task/AbsTask$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/common/common/Callback$b;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/common/task/d;

.field private final b:Lcom/alipay/mobile/common/common/Callback$b;

.field private volatile c:Z

.field private volatile d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/common/Callback$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->c:Z

    sget-object v0, Lcom/alipay/mobile/common/common/task/AbsTask$State;->IDLE:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    iput-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    iput-object p1, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->b:Lcom/alipay/mobile/common/common/Callback$b;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected varargs a(I[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    return-void
.end method

.method final a(Lcom/alipay/mobile/common/common/task/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;Z)V
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->c:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/common/common/task/AbsTask;->h()V

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->b:Lcom/alipay/mobile/common/common/Callback$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->b:Lcom/alipay/mobile/common/common/Callback$b;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->b:Lcom/alipay/mobile/common/common/Callback$b;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    sget-object v1, Lcom/alipay/mobile/common/common/task/AbsTask$State;->WAITING:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    sget-object v1, Lcom/alipay/mobile/common/common/task/AbsTask$State;->STARTED:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/common/task/AbsTask;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    new-instance v1, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v2, "cancelled by user"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/task/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    instance-of v0, p0, Lcom/alipay/mobile/common/common/task/d;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled by user"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/common/task/AbsTask;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final varargs b(I[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->a:Lcom/alipay/mobile/common/common/task/d;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/common/task/d;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->e:Ljava/lang/Object;

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    sget-object v1, Lcom/alipay/mobile/common/common/task/AbsTask$State;->CANCELLED:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->b:Lcom/alipay/mobile/common/common/Callback$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->b:Lcom/alipay/mobile/common/common/Callback$b;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method public g()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->d:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/task/AbsTask$State;->value()I

    move-result v0

    sget-object v1, Lcom/alipay/mobile/common/common/task/AbsTask$State;->STARTED:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/common/task/AbsTask$State;->value()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/AbsTask;->e:Ljava/lang/Object;

    return-object v0
.end method
