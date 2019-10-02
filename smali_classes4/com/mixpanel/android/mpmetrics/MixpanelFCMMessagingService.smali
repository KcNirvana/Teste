.class public Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MixpanelFCMMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.MixpanelFCMMessagingService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method public static addToken(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$2;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->allInstances(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;)V

    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/mixpanel/android/mpmetrics/ResourceIds;)Landroid/app/Notification;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->readInboundIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/mixpanel/android/mpmetrics/ResourceIds;Landroid/content/Intent;)Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p2, "MixpanelAPI.MixpanelFCMMessagingService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MP FCM notification received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mixpanel/android/util/MPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->intent:Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->makeNotificationSDK26OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-static {p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->makeNotificationSDK21OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-static {p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->makeNotificationSDK16OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->makeNotificationSDK11OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static buildNotificationIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "mp_campaign_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "mp_message_id"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "mp"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-object p0
.end method

.method static init()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$1;

    invoke-direct {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected static makeNotificationSDK11OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationDefaults()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p2, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method protected static makeNotificationSDK16OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationDefaults()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p2, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method protected static makeNotificationSDK21OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v1, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationDefaults()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->whiteIcon:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->whiteIcon:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->icon:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_1
    iget p0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->color:I

    if-eq p0, v1, :cond_2

    iget p0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->color:I

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method protected static makeNotificationSDK26OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;)Landroid/app/Notification;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationChannelImportance()I

    move-result v3

    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getNotificationDefaults()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    :cond_1
    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->whiteIcon:I

    if-eq v0, v5, :cond_4

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->whiteIcon:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_4
    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->icon:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    if-eq v0, v5, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_5
    iget p0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->color:I

    if-eq p0, v5, :cond_6

    iget p0, p2, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->color:I

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_6
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method static readInboundIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/mixpanel/android/mpmetrics/ResourceIds;Landroid/content/Intent;)Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "mp_message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "mp_icnm"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mp_icnm_l"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp_icnm_w"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mp_cta"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mp_title"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mp_color"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "mp_campaign_id"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mp_message_id"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mp"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->trackCampaignReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    if-eqz v8, :cond_0

    :try_start_0
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v8

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v13, -0x1

    :goto_0
    const/4 v8, 0x0

    if-nez v9, :cond_1

    return-object v8

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v1, v3}, Lcom/mixpanel/android/mpmetrics/ResourceIds;->knownIdName(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v1, v3}, Lcom/mixpanel/android/mpmetrics/ResourceIds;->idFromName(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v1, v4}, Lcom/mixpanel/android/mpmetrics/ResourceIds;->knownIdName(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v1, v4}, Lcom/mixpanel/android/mpmetrics/ResourceIds;->idFromName(Ljava/lang/String;)I

    move-result v4

    move v14, v4

    goto :goto_2

    :cond_3
    const/4 v14, -0x1

    :goto_2
    if-eqz v5, :cond_4

    invoke-interface {v1, v5}, Lcom/mixpanel/android/mpmetrics/ResourceIds;->knownIdName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v5}, Lcom/mixpanel/android/mpmetrics/ResourceIds;->idFromName(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-object v4, v8

    :goto_4
    if-ne v3, v12, :cond_5

    if-eqz v4, :cond_5

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_5
    if-ne v3, v12, :cond_6

    const v3, 0x1080093

    const v5, 0x1080093

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    if-nez v7, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_7
    if-nez v7, :cond_8

    const-string v2, "A message for you"

    goto :goto_6

    :cond_8
    move-object v2, v7

    :goto_6
    if-eqz v6, :cond_9

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :cond_9
    if-nez v8, :cond_a

    move-object/from16 v3, p3

    goto :goto_7

    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_7
    invoke-static {v3, v10, v11, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->buildNotificationIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;

    const/4 v12, 0x0

    move-object v4, v0

    move v6, v14

    move v7, v1

    move-object v8, v2

    move v11, v13

    invoke-direct/range {v4 .. v12}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;-><init>(IIILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;ILcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$1;)V

    return-object v0
.end method

.method public static showPushNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getResourcePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/mixpanel/android/mpmetrics/ResourceReader$Drawables;

    invoke-direct {v1, v0, p0}, Lcom/mixpanel/android/mpmetrics/ResourceReader$Drawables;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->buildNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/mixpanel/android/mpmetrics/ResourceIds;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private static trackCampaignReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->allInstances(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->showPushNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    const-string v0, "MixpanelAPI.MixpanelFCMMessagingService"

    const-string v1, "MP FCM on new message received"

    invoke-static {v0, v1}, Lcom/mixpanel/android/util/MPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->toIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->onMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    const-string v0, "MixpanelAPI.MixpanelFCMMessagingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MP FCM on new push token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mixpanel/android/util/MPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;->addToken(Ljava/lang/String;)V

    return-void
.end method
