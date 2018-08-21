.class Lcom/flybird/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# instance fields
.field final synthetic this$0:Lcom/flybird/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/flybird/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-static {v0}, Lcom/flybird/CountDownTimer;->access$000(Lcom/flybird/CountDownTimer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-static {v0}, Lcom/flybird/CountDownTimer;->access$100(Lcom/flybird/CountDownTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->onFinish()V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-static {v3}, Lcom/flybird/CountDownTimer;->access$200(Lcom/flybird/CountDownTimer;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flybird/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/flybird/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-virtual {v3, v0, v1}, Lcom/flybird/CountDownTimer;->onTick(J)V

    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-static {v0}, Lcom/flybird/CountDownTimer;->access$200(Lcom/flybird/CountDownTimer;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    :goto_1
    cmp-long v3, v0, v6

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-static {v3}, Lcom/flybird/CountDownTimer;->access$200(Lcom/flybird/CountDownTimer;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->this$0:Lcom/flybird/CountDownTimer;

    invoke-static {v3}, Lcom/flybird/CountDownTimer;->access$300(Lcom/flybird/CountDownTimer;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flybird/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/flybird/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
