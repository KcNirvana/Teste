.class public Lcom/miui/video/service/push/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/push/NotificationUtils$NoticeType;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_INSTALL:Ljava/lang/String; = "ACTION_NOTIFY_INSTALL"

.field public static final defaultChannelID:Ljava/lang/String; = "1"

.field public static final defaultChannelName:Ljava/lang/String; = "default_channel_name"

.field private static volatile mInstance:Lcom/miui/video/service/push/NotificationUtils;


# instance fields
.field private builder:Landroid/app/Notification$Builder;

.field protected isVibrateOpened:Z

.field protected isVoiceOpened:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field protected notificationId:I

.field protected showUnreadCount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/service/push/NotificationUtils;->isVoiceOpened:Z

    iput-boolean v0, p0, Lcom/miui/video/service/push/NotificationUtils;->isVibrateOpened:Z

    iput-boolean v0, p0, Lcom/miui/video/service/push/NotificationUtils;->showUnreadCount:Z

    return-void
.end method

.method private NotificationUtils()V
    .locals 2

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/video/service/push/NotificationUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/service/push/NotificationUtils;->mInstance:Lcom/miui/video/service/push/NotificationUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/service/push/NotificationUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/service/push/NotificationUtils;->mInstance:Lcom/miui/video/service/push/NotificationUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/service/push/NotificationUtils;

    invoke-direct {v1}, Lcom/miui/video/service/push/NotificationUtils;-><init>()V

    sput-object v1, Lcom/miui/video/service/push/NotificationUtils;->mInstance:Lcom/miui/video/service/push/NotificationUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/service/push/NotificationUtils;->mInstance:Lcom/miui/video/service/push/NotificationUtils;

    return-object v0
.end method


# virtual methods
.method public getNotification(Lcom/xiaomi/mipush/sdk/MiPushMessage;)Landroid/app/Notification;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyId()I

    move-result v0

    iput v0, p0, Lcom/miui/video/service/push/NotificationUtils;->notificationId:I

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/miui/video/service/push/NotificationUtils;->makeUpDefault()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected makeUpDefault()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/service/push/NotificationUtils;->isVibrateOpened:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/service/push/NotificationUtils;->isVoiceOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/service/push/NotificationUtils;->isVoiceOpened:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    sget v3, Lcom/miui/video/service/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method public noticeAppUpdateDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Launcher"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.video.ACTION_APP_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "run_action"

    const-string v3, "ACTION_NOTIFY_INSTALL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    sget v4, Lcom/miui/video/service/R$drawable;->ic_launcher:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v4}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const-string p1, ""

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/miui/video/service/push/NotificationUtils;->sendNotice(Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/Notification;)V

    return-void
.end method

.method public noticeAppUpdateDownloading(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "Launcher"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$drawable;->ic_launcher:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-static {p1, v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const-string p1, ""

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/miui/video/service/push/NotificationUtils;->sendNotice(Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 4

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "1"

    const-string v2, "default_channel_name"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/miui/video/service/push/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/push/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyId()I

    move-result v0

    iput v0, p0, Lcom/miui/video/service/push/NotificationUtils;->notificationId:I

    iget v0, p0, Lcom/miui/video/service/push/NotificationUtils;->notificationId:I

    invoke-virtual {p0, p1}, Lcom/miui/video/service/push/NotificationUtils;->getNotification(Lcom/xiaomi/mipush/sdk/MiPushMessage;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/service/push/NotificationUtils;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public sendNotice(Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/Notification;)V
    .locals 0

    invoke-static {}, Lcom/miui/video/service/application/GlobalApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/push/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, p3, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
