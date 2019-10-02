.class Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;
.super Ljava/lang/Object;
.source "AirkanManager.java"

# interfaces
.implements Lcom/milink/api/v1/MilinkClientManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "device manager closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$202(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;I)I

    const-string v0, "AirkanManager"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$300(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->startPlay()V

    return-void
.end method

.method public onConnectedFailed(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 1

    const-string p1, "AirkanManager"

    const-string v0, "onConnectedFailed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->takebackToPhone()V

    :cond_0
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/type/DeviceType;)V
    .locals 2

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    const-string p3, "AirkanManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {p3}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/Hashtable;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

    invoke-interface {p3, p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;->onDeviceAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

    invoke-interface {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;->onDeviceRemoved(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoading()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "onLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNextAudio(Z)V
    .locals 0

    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "open device manager success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;->onOpened()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPaused()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "onPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$600(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V

    return-void
.end method

.method public onPlaying()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "onPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$400(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V

    return-void
.end method

.method public onPrevAudio(Z)V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$200(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->access$500(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->takebackToPhone()V

    :cond_0
    return-void
.end method

.method public onVolume(I)V
    .locals 0

    return-void
.end method
