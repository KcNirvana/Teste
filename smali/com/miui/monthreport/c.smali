.class Lcom/miui/monthreport/c;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private aYS:Ljava/util/List;

.field private aYT:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/monthreport/c;->aYT:Landroid/location/LocationManager;

    invoke-virtual {p2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/c;->aYS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/miui/monthreport/d;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/miui/monthreport/d;

    invoke-static {v2}, Lcom/miui/monthreport/d;->buK(Lcom/miui/monthreport/d;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/monthreport/c;->aYT:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-static {v2}, Lcom/miui/monthreport/d;->buL(Lcom/miui/monthreport/d;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/miui/monthreport/d;->buN(Lcom/miui/monthreport/d;)Lcom/miui/monthreport/e;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/miui/monthreport/d;->buN(Lcom/miui/monthreport/d;)Lcom/miui/monthreport/e;

    move-result-object v3

    invoke-static {v2}, Lcom/miui/monthreport/d;->buM(Lcom/miui/monthreport/d;)Landroid/location/Location;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/miui/monthreport/e;->buQ(ZLandroid/location/Location;)V

    :cond_1
    invoke-static {v2, v6}, Lcom/miui/monthreport/d;->buP(Lcom/miui/monthreport/d;Z)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/miui/monthreport/d;->buO(Lcom/miui/monthreport/d;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/miui/monthreport/d;->buO(Lcom/miui/monthreport/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/miui/monthreport/b;->buH(ILcom/miui/monthreport/d;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/monthreport/c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    invoke-static {v2, v6}, Lcom/miui/monthreport/d;->buP(Lcom/miui/monthreport/d;Z)Z

    invoke-static {v2}, Lcom/miui/monthreport/d;->buN(Lcom/miui/monthreport/d;)Lcom/miui/monthreport/e;

    move-result-object v2

    invoke-interface {v2, v5, v4}, Lcom/miui/monthreport/e;->buQ(ZLandroid/location/Location;)V

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/miui/monthreport/d;

    if-eqz v2, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/miui/monthreport/d;

    invoke-static {v7}, Lcom/miui/monthreport/d;->buO(Lcom/miui/monthreport/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v7}, Lcom/miui/monthreport/d;->buO(Lcom/miui/monthreport/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v7}, Lcom/miui/monthreport/d;->buO(Lcom/miui/monthreport/d;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    move-object v3, v0

    iget-object v2, p0, Lcom/miui/monthreport/c;->aYS:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/monthreport/LocationGetterManager$LocateType;->buI(Lcom/miui/monthreport/LocationGetterManager$LocateType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/monthreport/c;->aYT:Landroid/location/LocationManager;

    invoke-static {v3}, Lcom/miui/monthreport/LocationGetterManager$LocateType;->buI(Lcom/miui/monthreport/LocationGetterManager$LocateType;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1388

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v2, 0x1

    invoke-static {v2, v7}, Lcom/miui/monthreport/b;->buH(ILcom/miui/monthreport/d;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {p0, v2, v4, v5}, Lcom/miui/monthreport/c;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
