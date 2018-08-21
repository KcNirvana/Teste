.class public Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
.super Ljava/lang/Object;
.source "SDKNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/SDKNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKNotificationBuilder"
.end annotation


# instance fields
.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationPendingIntent:Landroid/app/PendingIntent;

.field private mNotificationTitle:Ljava/lang/String;

.field private mSoundUri:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/String;

.field private mVibrate:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUpon()Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;-><init>()V

    return-object v0
.end method

.method private static getNotificationIcon(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v1, "com_sina_weibo_sdk_weibo_logo"

    const-string/jumbo v2, "drawable"

    invoke-static {p0, v1, v2}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0x108009b

    goto :goto_0
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/SDKNotification;
    .locals 6

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mTickerText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->getNotificationIcon(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mSoundUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mVibrate:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mVibrate:[J

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    const-string/jumbo v3, "weibosdk_notification_icon.png"

    invoke-static {p1, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationContent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    new-instance v3, Lcom/sina/weibo/sdk/utils/SDKNotification;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Lcom/sina/weibo/sdk/utils/SDKNotification;-><init>(Landroid/content/Context;Landroid/app/Notification;Lcom/sina/weibo/sdk/utils/SDKNotification;)V

    return-object v3
.end method

.method public setNotificationContent(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationContent:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationPendingIntent(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSoundUri(Landroid/net/Uri;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mSoundUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setTickerText(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mTickerText:Ljava/lang/String;

    return-object p0
.end method

.method public setVibrate([J)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->mVibrate:[J

    return-object p0
.end method
