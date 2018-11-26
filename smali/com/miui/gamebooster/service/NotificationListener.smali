.class public Lcom/miui/gamebooster/service/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source ""


# instance fields
.field private lD:Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

.field private mCallbackList:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method private onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    iget-object v2, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/service/INotificationListenerCallback;->onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "GBNotificationListener"

    const-string/jumbo v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method

.method private onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    iget-object v2, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/service/INotificationListenerCallback;->onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "GBNotificationListener"

    const-string/jumbo v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method

.method static synthetic os(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "GBNotificationListener"

    const-string/jumbo v1, "return onBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->lD:Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    new-instance v0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;-><init>(Lcom/miui/gamebooster/service/NotificationListener;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->lD:Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/NotificationListener;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/NotificationListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/gamebooster/service/NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GBNotificationListener"

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/NotificationListener;->unregisterAsSystemService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GBNotificationListener"

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/NotificationListener;->onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/NotificationListener;->onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
