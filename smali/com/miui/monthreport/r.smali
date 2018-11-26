.class final Lcom/miui/monthreport/r;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aZX:Lcom/miui/monthreport/i;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/r;->aZX:Lcom/miui/monthreport/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handle task message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/monthreport/r;->aZX:Lcom/miui/monthreport/i;

    invoke-static {v1, v0, v3}, Lcom/miui/monthreport/i;->bvo(Lcom/miui/monthreport/i;Ljava/lang/String;Lcom/miui/monthreport/o;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/miui/monthreport/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/monthreport/o;

    iget-object v1, p0, Lcom/miui/monthreport/r;->aZX:Lcom/miui/monthreport/i;

    invoke-virtual {v0}, Lcom/miui/monthreport/o;->bvE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/monthreport/i;->bvo(Lcom/miui/monthreport/i;Ljava/lang/String;Lcom/miui/monthreport/o;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/monthreport/r;->aZX:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvp(Lcom/miui/monthreport/i;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
