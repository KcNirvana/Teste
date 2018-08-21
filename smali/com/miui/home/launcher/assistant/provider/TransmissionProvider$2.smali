.class Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;
.super Landroid/os/Handler;
.source "TransmissionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->checkTread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string/jumbo v1, "TransmissionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$100(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$200(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$300(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Lmiui/assistant/provider/ITransmissionService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$200(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$300(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Lmiui/assistant/provider/ITransmissionService;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;->args:[Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;->method:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;->s1:[Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;->s2:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Lmiui/assistant/provider/ITransmissionService;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$200(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$400(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$500(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
