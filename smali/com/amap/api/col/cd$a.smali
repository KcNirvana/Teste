.class public Lcom/amap/api/col/cd$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cd;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/cd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManage$MHandlerr"

    const-string v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/col/cd;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->c(Lcom/amap/api/col/cd;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->d(Lcom/amap/api/col/cd;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/fence/GeoFence;

    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v1, v0}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;Lcom/amap/api/fence/GeoFence;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage ADD_GEOFENCE"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    :try_start_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v1, v0}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_GEOFENCE"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    :try_start_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/fence/GeoFence;

    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v1, v0}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/col/cd;Lcom/amap/api/fence/GeoFence;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_GEOFENCE_ONE"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    :try_start_7
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->e(Lcom/amap/api/col/cd;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    :try_start_8
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v0, v0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v1, v1, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/en;->a(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    :try_start_9
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->f(Lcom/amap/api/col/cd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-boolean v0, v0, Lcom/amap/api/col/cd;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    const/16 v1, 0x3f8

    const/4 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;ILjava/lang/Object;J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_LBS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_a
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->g(Lcom/amap/api/col/cd;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    :pswitch_b
    :try_start_b
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v0, v0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    invoke-virtual {v0}, Lcom/amap/api/col/en;->a()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage STOP_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    :try_start_c
    iget-object v1, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, v1, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    iget-object v0, v0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->h(Lcom/amap/api/col/cd;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage SET_OPTION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    :try_start_d
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->i(Lcom/amap/api/col/cd;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    :try_start_e
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->j(Lcom/amap/api/col/cd;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    :try_start_f
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-virtual {v0}, Lcom/amap/api/col/cd;->b()V

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    const/16 v1, 0x3fc

    const/4 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    const/16 v1, 0x3fd

    const/4 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    const/16 v1, 0x3fe

    const/4 v2, 0x0

    const-wide/16 v4, 0x7530

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/cd;ILjava/lang/Object;J)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_START_SENSOR"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    :try_start_10
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-virtual {v0}, Lcom/amap/api/col/cd;->c()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_f

    goto/16 :goto_0

    :catch_f
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_GET_PRESSURE"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    :try_start_11
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-virtual {v0}, Lcom/amap/api/col/cd;->d()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_STOP_SENSOR"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    :try_start_12
    iget-object v0, p0, Lcom/amap/api/col/cd$a;->a:Lcom/amap/api/col/cd;

    invoke-virtual {v0}, Lcom/amap/api/col/cd;->f()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_11

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_SAVE_GPSINFO"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
