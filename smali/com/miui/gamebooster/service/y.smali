.class final Lcom/miui/gamebooster/service/y;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic na:Lcom/miui/gamebooster/service/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/y;->na:Lcom/miui/gamebooster/service/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/y;->na:Lcom/miui/gamebooster/service/b;

    invoke-static {v0}, Lcom/miui/gamebooster/service/b;->oU(Lcom/miui/gamebooster/service/b;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/y;->na:Lcom/miui/gamebooster/service/b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gamebooster/service/y;->na:Lcom/miui/gamebooster/service/b;

    invoke-static {v4}, Lcom/miui/gamebooster/service/b;->oZ(Lcom/miui/gamebooster/service/b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gamebooster/service/b;->oP(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qN(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/y;->na:Lcom/miui/gamebooster/service/b;

    invoke-static {v0}, Lcom/miui/gamebooster/service/b;->oX(Lcom/miui/gamebooster/service/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/gamebooster/service/y;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
