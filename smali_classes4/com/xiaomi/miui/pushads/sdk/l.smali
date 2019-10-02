.class public Lcom/xiaomi/miui/pushads/sdk/l;
.super Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/c;


# static fields
.field private static a:Lcom/xiaomi/miui/pushads/sdk/l;

.field static final synthetic a:Z


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Lcom/xiaomi/miui/pushads/sdk/e;

.field private a:Lcom/xiaomi/miui/pushads/sdk/g;

.field private a:Lcom/xiaomi/push/cd;

.field private a:Lcom/xiaomi/push/cj;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/miui/pushads/sdk/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Z

    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/h;I)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v2, "intenttype"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v2, p1}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Lcom/xiaomi/miui/pushads/sdk/h;)V

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v3, v2}, Lcom/xiaomi/miui/pushads/sdk/e;->a(Lcom/xiaomi/miui/pushads/sdk/h;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "pendingintent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-wide v1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->a:J

    long-to-int p1, v1

    mul-int p1, p1, p1

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {p2, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/miui/pushads/sdk/l;
    .locals 2

    const-class v0, Lcom/xiaomi/miui/pushads/sdk/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/h;)V
    .locals 7

    const-string v0, "sdk handle notify"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v1}, Lcom/xiaomi/miui/pushads/sdk/e;->a()I

    move-result v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_0
    new-instance v3, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;-><init>(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a(I)V

    invoke-direct {p0, p1, v0, v3}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/miui/pushads/sdk/h;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/xiaomi/miui/pushads/sdk/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/miui/pushads/sdk/h;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-direct {p0, p1, v4}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/miui/pushads/sdk/h;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "big picture"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;-><init>(Landroid/content/Context;)V

    iget-object v5, p1, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->a(I)V

    invoke-virtual {v4, v3}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->a(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0, v4}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/miui/pushads/sdk/h;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    iput-object v4, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/h;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Lcom/xiaomi/miui/pushads/sdk/h;)V

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v1, v0}, Lcom/xiaomi/miui/pushads/sdk/e;->b(Lcom/xiaomi/miui/pushads/sdk/h;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v3, "intenttype"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "notifyid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pendingintent"

    invoke-virtual {v2, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/h;->a:J

    long-to-int p2, v2

    mul-int p2, p2, p2

    add-int/lit8 p2, p2, 0x3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/ce;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/push/cj;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--->receivedT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/xiaomi/push/ce;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/push/cj;

    new-instance v1, Lcom/xiaomi/push/cg;

    invoke-direct {v1, p1}, Lcom/xiaomi/push/cg;-><init>(Lcom/xiaomi/push/ce;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/cj;->c(Lcom/xiaomi/push/cg;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/xiaomi/miui/pushads/sdk/j;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/c;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/lang/String;JI)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/g;->a(Ljava/lang/String;JI)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/g;->a()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/ce;)Z
    .locals 4

    iget v0, p1, Lcom/xiaomi/push/ce;->c:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    const-string p1, "white user"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    iget v0, p1, Lcom/xiaomi/push/ce;->a:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    iget p1, p1, Lcom/xiaomi/push/ce;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify uplimit: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    const-string v3, "notifycount"

    goto :goto_0

    :pswitch_1
    iget p1, p1, Lcom/xiaomi/push/ce;->c:I

    mul-int/lit8 p1, p1, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bubble uplimit: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    const-string v3, "bubblecount"

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reach up limit---already count\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e0a\u9650: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "showType"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/push/cd;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/push/cd;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/xiaomi/push/cd;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string p1, "ads-notify-fd5dfce4"

    const-string v1, "\u63a5\u53d7\u5230\u5916\u90e8\u7684\u6d88\u606f\uff0c\u4f46\u662f\u5916\u90e8\u7684listener"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :catch_0
    return v0
.end method

.method private b(Lcom/xiaomi/push/ce;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/push/ce;)V

    iget v0, p1, Lcom/xiaomi/push/ce;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/xiaomi/miui/pushads/sdk/a;

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/e;->a(Lcom/xiaomi/miui/pushads/sdk/a;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/xiaomi/push/ce;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/xiaomi/miui/pushads/sdk/h;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--->get notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Lcom/xiaomi/miui/pushads/sdk/h;)V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v1, v0}, Lcom/xiaomi/miui/pushads/sdk/e;->a(Lcom/xiaomi/miui/pushads/sdk/h;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/miui/pushads/sdk/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ads-notify-fd5dfce4"

    const-string v0, "SDK \u53d1\u51fanotification \u5931\u8d25"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    const-string v0, "notifycount"

    :goto_0
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    const-string v0, "bubblecount"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    const-string v0, "notifycount"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifycount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    const-string v0, "bubblecount"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubblecount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public a(ILcom/xiaomi/push/ce;Lcom/xiaomi/miui/pushads/sdk/j;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--->cell is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--->download failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->a:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget p3, p2, Lcom/xiaomi/push/ce;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/xiaomi/push/ce;->d:I

    iget p3, p2, Lcom/xiaomi/push/ce;->d:I

    const/16 v0, 0xa

    if-ge p3, v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->b:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/xiaomi/push/ce;->d:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->b:J

    iget v2, p2, Lcom/xiaomi/push/ce;->d:I

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_1
    const-string p3, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    :goto_0
    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    iget p3, p2, Lcom/xiaomi/push/ce;->c:I

    if-lez p3, :cond_3

    iget p3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:I

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/l;->a()Lcom/xiaomi/miui/pushads/sdk/l;

    move-result-object p3

    iget v0, p2, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {p3, v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(I)V

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--->download sucess: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "id: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/xiaomi/push/ce;->a:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/l;->a()Lcom/xiaomi/miui/pushads/sdk/l;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p3, "com.miui.ads"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz p3, :cond_6

    if-nez p1, :cond_6

    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Lcom/xiaomi/push/ce;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/l;->b(Lcom/xiaomi/push/ce;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--->reach limit, no return to app"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--->onCommandResult == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " reason: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "param: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "set-alias"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Ljava/lang/String;

    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "--->alias ok: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--->alias failed, retry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x4

    iput v0, p3, Landroid/os/Message;->what:I

    long-to-int v0, p1

    iput v0, p3, Landroid/os/Message;->arg1:I

    iput-object p4, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--->cahnel OK"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--->chanle failed\uff0c need app reopen"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--->##"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Ljava/lang/String;

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "--->no alias\uff0cignore the msg "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Ljava/lang/String;

    invoke-static {p4}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Ljava/lang/String;

    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--->get msg for different alias. unset "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/l;->getCategory()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "--->get msg for old topic, unset "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "##"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/l;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--->topic resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " topic: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->a:Landroid/os/Handler;

    const/4 p2, 0x6

    const-wide/32 p3, 0x36ee80

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--->unsuscribe topic resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " topic: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    return-void
.end method
