.class Lse/dirac/acs/api/AudioControlService$2;
.super Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;
.source "AudioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-direct {p0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterAdd(J[I)V
    .locals 1

    iget-object p3, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {p3}, Lse/dirac/acs/api/AudioControlService;->access$400(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    move-result-object p3

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {p3, p1, p2}, Lse/dirac/acs/api/AudioControlService;->getDevice(J)Lse/dirac/acs/api/Device;

    move-result-object p1

    iget-object p2, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {p2}, Lse/dirac/acs/api/AudioControlService;->access$400(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    move-result-object p2

    iget-object p3, p1, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    sget-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->ADD:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-interface {p2, p1, p3, v0}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;->onChange(Lse/dirac/acs/api/Device;Ljava/util/List;Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {p2, p1}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onRoutingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "se.dirac.acs-api"

    const-string v1, "Routing change callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$900(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$900(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;->onRoutingChanged(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, p1}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSetUser(Ljava/lang/String;)V
    .locals 2

    const-string v0, "se.dirac.acs-api"

    const-string v1, "Set user callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$700(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$700(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AudioControlService$SetUserFunctor;->onSetUser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, p1}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSettingsChanged(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V
    .locals 2

    const-string v0, "se.dirac.acs-api"

    const-string v1, "Settings changed callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$800(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$800(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;->onSettingsChanged(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {p2, p1}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSyncDone()V
    .locals 3

    const-string v0, "se.dirac.acs-api"

    const-string v1, "Sync done callback received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$600(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1}, Lse/dirac/acs/api/AudioControlService;->access$600(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;->onSyncDone(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v2, v1}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v2, v0}, Lse/dirac/acs/api/AudioControlService;->access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method
