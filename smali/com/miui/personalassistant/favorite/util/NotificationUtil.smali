.class public Lcom/miui/personalassistant/favorite/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "personalassistant.favorite.CHANNEL_ID"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "personalassistant.favorite.CHANNEL_NAME"

.field private static notifyIdFavorite:I

.field private static notifyIdShopping:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->notifyIdFavorite:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->notifyIdShopping:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11

    const v10, 0x1b02031b

    const v9, 0x1b020172

    const/high16 v8, 0x8000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz p2, :cond_2

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const v4, 0x1b0b03c6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v4, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->notifyIdShopping:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    const-string/jumbo v4, "personalassistant.favorite.CHANNEL_ID"

    invoke-static {v0, v4}, Lcom/miui/personalassistant/util/NotificationUtils;->configureNotification(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    const-string/jumbo v4, "personalassistant.favorite.CHANNEL_ID"

    const-string/jumbo v5, "personalassistant.favorite.CHANNEL_NAME"

    invoke-static {v1, v4, v5}, Lcom/miui/personalassistant/util/NotificationUtils;->addNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v4, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v4, v7}, Landroid/app/MiuiNotification;->setCustomizedIcon(Z)Landroid/app/MiuiNotification;

    if-eqz p2, :cond_3

    sget v4, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->notifyIdShopping:I

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const v4, 0x1b0b02df

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v4, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->notifyIdFavorite:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_1

    :cond_3
    sget v4, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->notifyIdFavorite:I

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
