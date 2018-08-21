.class public Lcom/miui/voicesdk/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceNotificationListener"

.field private static mListener:Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;

.field private static sInstance:Lcom/miui/voicesdk/NotificationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public static getAllNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;
    .locals 4

    :try_start_0
    sget-object v1, Lcom/miui/voicesdk/NotificationListener;->sInstance:Lcom/miui/voicesdk/NotificationListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/voicesdk/NotificationListener;->sInstance:Lcom/miui/voicesdk/NotificationListener;

    invoke-virtual {v1}, Lcom/miui/voicesdk/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "VoiceNotificationListener"

    const-string/jumbo v2, "getActiveNotifications null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VoiceNotificationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveNotifications "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setListener(Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;)V
    .locals 0

    sput-object p0, Lcom/miui/voicesdk/NotificationListener;->mListener:Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    sput-object p0, Lcom/miui/voicesdk/NotificationListener;->sInstance:Lcom/miui/voicesdk/NotificationListener;

    const-string/jumbo v0, "VoiceNotificationListener"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/voicesdk/NotificationListener;->sInstance:Lcom/miui/voicesdk/NotificationListener;

    const-string/jumbo v0, "VoiceNotificationListener"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const-string/jumbo v0, "VoiceNotificationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/voicesdk/NotificationListener;->mListener:Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/voicesdk/NotificationListener;->mListener:Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;

    invoke-interface {v0, p1}, Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const-string/jumbo v0, "VoiceNotificationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/voicesdk/NotificationListener;->mListener:Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/voicesdk/NotificationListener;->mListener:Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;

    invoke-interface {v0, p1}, Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method
