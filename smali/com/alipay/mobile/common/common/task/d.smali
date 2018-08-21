.class Lcom/alipay/mobile/common/common/task/d;
.super Lcom/alipay/mobile/common/common/task/AbsTask;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/common/task/d$b;,
        Lcom/alipay/mobile/common/common/task/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/common/common/task/AbsTask",
        "<TResultType;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/alipay/mobile/common/common/task/d$b;

.field static final b:Lcom/alipay/mobile/common/common/task/a;


# instance fields
.field private final c:Lcom/alipay/mobile/common/common/task/AbsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/task/AbsTask",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/common/task/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/task/d$b;-><init>(Lcom/alipay/mobile/common/common/task/e;)V

    sput-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    new-instance v0, Lcom/alipay/mobile/common/common/task/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/task/a;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/common/common/task/d;->b:Lcom/alipay/mobile/common/common/task/a;

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/common/common/task/AbsTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/common/task/AbsTask",
            "<TResultType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/common/task/AbsTask;-><init>(Lcom/alipay/mobile/common/common/Callback$b;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/common/common/task/d;->e:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/common/task/d;->f:Z

    iput-object p1, p0, Lcom/alipay/mobile/common/common/task/d;->c:Lcom/alipay/mobile/common/common/task/AbsTask;

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/d;->c:Lcom/alipay/mobile/common/common/task/AbsTask;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Lcom/alipay/mobile/common/common/task/d;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/d;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/common/task/AbsTask;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->b:Lcom/alipay/mobile/common/common/task/a;

    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/common/common/task/d;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/common/common/task/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/common/task/d;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/common/common/task/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/common/task/d;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/common/common/task/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/common/task/d;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/d;->c:Lcom/alipay/mobile/common/common/task/AbsTask;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/common/common/task/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/common/task/d;->f:Z

    return v0
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p0}, Lcom/alipay/mobile/common/common/task/d;->d()V

    new-instance v0, Lcom/alipay/mobile/common/common/task/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/common/task/e;-><init>(Lcom/alipay/mobile/common/common/task/d;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/common/task/d;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs a(I[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca05

    new-instance v2, Lcom/alipay/mobile/common/common/task/d$a;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/common/common/task/d$a;-><init>(Lcom/alipay/mobile/common/common/task/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p1, v2}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V
    .locals 5

    sget-object v0, Lcom/alipay/mobile/common/common/task/AbsTask$State;->CANCELLED:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca06

    new-instance v2, Lcom/alipay/mobile/common/common/task/d$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/common/task/d$a;-><init>(Lcom/alipay/mobile/common/common/task/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/d;->c:Lcom/alipay/mobile/common/common/task/AbsTask;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    sget-object v0, Lcom/alipay/mobile/common/common/task/AbsTask$State;->SUCCESS:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca03

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;Z)V
    .locals 5

    sget-object v0, Lcom/alipay/mobile/common/common/task/AbsTask$State;->ERROR:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca04

    new-instance v2, Lcom/alipay/mobile/common/common/task/d$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/common/task/d$a;-><init>(Lcom/alipay/mobile/common/common/task/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected d()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/common/task/AbsTask$State;->WAITING:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca01

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected e()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/common/task/AbsTask$State;->STARTED:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca02

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected f()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    const v1, 0x3b9aca07

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/common/task/d;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method
