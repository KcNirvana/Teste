.class Lcom/alipay/birdnest/a/h$c;
.super Ljava/lang/Object;
.source "ThreadPoolTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/birdnest/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field

.field b:Lcom/alipay/birdnest/a/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/birdnest/a/h$b",
            "<TProgress;TResult;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/alipay/birdnest/a/h;


# direct methods
.method varargs constructor <init>(Lcom/alipay/birdnest/a/h;Lcom/alipay/birdnest/a/h$b;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/birdnest/a/h$b",
            "<TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/birdnest/a/h$c;->c:Lcom/alipay/birdnest/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FATAL ERROR! TaskResult is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/alipay/birdnest/a/h$c;->b:Lcom/alipay/birdnest/a/h$b;

    iput-object p3, p0, Lcom/alipay/birdnest/a/h$c;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/birdnest/a/h$c;->b:Lcom/alipay/birdnest/a/h$b;

    iget-object v1, p0, Lcom/alipay/birdnest/a/h$c;->c:Lcom/alipay/birdnest/a/h;

    iget-object v2, p0, Lcom/alipay/birdnest/a/h$c;->a:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/alipay/birdnest/a/h;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/birdnest/a/h$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/birdnest/a/h$c;->b:Lcom/alipay/birdnest/a/h$b;

    iget-object v1, p0, Lcom/alipay/birdnest/a/h$c;->c:Lcom/alipay/birdnest/a/h;

    iput-object v1, v0, Lcom/alipay/birdnest/a/h$b;->a:Lcom/alipay/birdnest/a/h;

    invoke-static {}, Lcom/alipay/birdnest/a/h;->access$000()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/alipay/birdnest/a/h$c;->b:Lcom/alipay/birdnest/a/h$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
