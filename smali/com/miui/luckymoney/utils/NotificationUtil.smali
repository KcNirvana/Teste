.class public Lcom/miui/luckymoney/utils/NotificationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static NOTIFY_CHANNEL_ID:Ljava/lang/String;

.field private static currentUniqueNotificationId:I

.field private static final prefDefinedNotificationIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "luckymoney_notify_channel_high"

    sput-object v0, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f060000

    aput v1, v0, v2

    sput-object v0, Lcom/miui/luckymoney/utils/NotificationUtil;->prefDefinedNotificationIds:[I

    sput v2, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {v0, p1}, Lcom/miui/common/b/n;->aIS(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public static cancelNotificationDelay(Landroid/content/Context;IJ)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/luckymoney/utils/NotificationUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/luckymoney/utils/NotificationUtil$1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getUniqueNotificationId()I
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, Lcom/miui/luckymoney/utils/NotificationUtil;

    monitor-enter v3

    :cond_0
    :try_start_0
    sget v0, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    sget v0, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    :cond_1
    sget-object v4, Lcom/miui/luckymoney/utils/NotificationUtil;->prefDefinedNotificationIds:[I

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_3

    aget v6, v4, v0

    sget v7, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    if-ne v7, v6, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    sget v0, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static notifyAsUser(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "notifyAsUser"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/app/Notification;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Landroid/os/UserHandle;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/miui/a/c/c;->btL(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NotificationUtil"

    const-string/jumbo v2, "notifyAsUser exception!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized playNotification(Landroid/content/Context;I)V
    .locals 5

    const-class v2, Lcom/miui/luckymoney/utils/NotificationUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/miui/luckymoney/utils/SettingsUtil;->isQuietModeEnable(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    const v3, 0x7f07016f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4}, Lcom/miui/common/b/p;->aJa(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/miui/common/b/p;->aJb(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    :goto_0
    invoke-static {p0, p1}, Lcom/miui/luckymoney/utils/NotificationUtil;->playNotificationSound(Landroid/content/Context;I)V

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v3

    invoke-static {v3}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, p1, v1, v3}, Lcom/miui/luckymoney/utils/NotificationUtil;->notifyAsUser(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    const v3, 0x7f0201b6

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201b5

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07018a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/miui/a/a/a;->btk(Landroid/app/Notification;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static playNotificationSound(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/luckymoney/utils/NotificationUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    return-void
.end method

.method public static setAudioAttr(Landroid/app/Notification;)V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "android.media.AudioAttributes$Builder"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/a/c/d;->btW([Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "setUsage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "setContentType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "build"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btR()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "audioAttributes"

    invoke-static {p0, v1, v0}, Lcom/miui/a/c/c;->btJ(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NotificationUtil"

    const-string/jumbo v2, "setAudioAttr exception!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static showFloatNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    const v2, 0x7f07016f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/p;->aJa(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/miui/common/b/p;->aJb(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0201b6

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201b5

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz p6, :cond_0

    invoke-static {p0, p5}, Lcom/miui/luckymoney/utils/NotificationUtil;->playNotificationSound(Landroid/content/Context;I)V

    :cond_0
    invoke-static {v1, v6}, Lcom/miui/a/a/a;->btn(Landroid/app/Notification;Z)V

    invoke-static {v1, v6}, Lcom/miui/a/a/a;->btk(Landroid/app/Notification;Z)V

    invoke-static {v1, v7}, Lcom/miui/a/a/a;->btp(Landroid/app/Notification;I)V

    if-eqz p7, :cond_1

    const-wide/16 v2, 0x1770

    invoke-static {p0, p1, v2, v3}, Lcom/miui/luckymoney/utils/NotificationUtil;->cancelNotificationDelay(Landroid/content/Context;IJ)V

    :cond_1
    invoke-static {v0, p1, v1}, Lcom/miui/common/b/n;->aIR(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method public static showPushNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/a/a/a;->btn(Landroid/app/Notification;Z)V

    invoke-static {v1, v4}, Lcom/miui/a/a/a;->btk(Landroid/app/Notification;Z)V

    invoke-static {v1, v5}, Lcom/miui/a/a/a;->btp(Landroid/app/Notification;I)V

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v0, p1, v1}, Lcom/miui/common/b/n;->aIR(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method public static declared-synchronized stopNotification(Landroid/content/Context;I)V
    .locals 2

    const-class v1, Lcom/miui/luckymoney/utils/NotificationUtil;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
