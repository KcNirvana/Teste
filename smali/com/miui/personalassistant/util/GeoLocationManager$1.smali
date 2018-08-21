.class Lcom/miui/personalassistant/util/GeoLocationManager$1;
.super Landroid/os/Handler;
.source "GeoLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/GeoLocationManager;->checkLocationThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/GeoLocationManager;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/GeoLocationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    iget-object v2, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$000(Lcom/miui/personalassistant/util/GeoLocationManager;)I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$002(Lcom/miui/personalassistant/util/GeoLocationManager;I)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-virtual {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->requestLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Assist.GeoLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    iget-object v2, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$000(Lcom/miui/personalassistant/util/GeoLocationManager;)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$002(Lcom/miui/personalassistant/util/GeoLocationManager;I)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->requestCondition(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    iget-object v2, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$000(Lcom/miui/personalassistant/util/GeoLocationManager;)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$002(Lcom/miui/personalassistant/util/GeoLocationManager;I)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$100(Lcom/miui/personalassistant/util/GeoLocationManager;)V

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$200(Lcom/miui/personalassistant/util/GeoLocationManager;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "Assist.GeoLocationManager"

    const-string/jumbo v2, "MSG_MAP_TASK_REMOVE "

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    iget-object v2, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$000(Lcom/miui/personalassistant/util/GeoLocationManager;)I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$002(Lcom/miui/personalassistant/util/GeoLocationManager;I)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$200(Lcom/miui/personalassistant/util/GeoLocationManager;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$1;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$300(Lcom/miui/personalassistant/util/GeoLocationManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
