.class public Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;
.super Lcom/miui/gamebooster/service/INotificationListener$Stub;
.source ""


# instance fields
.field final synthetic lE:Lcom/miui/gamebooster/service/NotificationListener;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/NotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->lE:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ot(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    .locals 2

    const-string/jumbo v0, "GBNotificationListener"

    const-string/jumbo v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->lE:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0}, Lcom/miui/gamebooster/service/NotificationListener;->os(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->lE:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0}, Lcom/miui/gamebooster/service/NotificationListener;->os(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ou(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->lE:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0}, Lcom/miui/gamebooster/service/NotificationListener;->os(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->lE:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0}, Lcom/miui/gamebooster/service/NotificationListener;->os(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
