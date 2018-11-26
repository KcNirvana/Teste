.class Lcom/miui/appmanager/w;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aVZ:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method private constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/w;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bow(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnZ(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boR(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boz(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bow(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bol(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/r;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_2
    invoke-static {v1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpf(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boq(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/w;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/w;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boq(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/w;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Lcom/miui/appmanager/w;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bol(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/r;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bow(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnZ(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boS(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boz(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "size"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/appmanager/w;->aVZ:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v1, v2, v4, v5}, Lcom/miui/appmanager/AppManagerMainActivity;->bpd(Lcom/miui/appmanager/AppManagerMainActivity;ILjava/lang/String;J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
