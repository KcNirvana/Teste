.class Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;
.super Ljava/lang/Object;
.source "AppInvokeCmdExecutor.java"

# interfaces
.implements Lcom/sina/weibo/sdk/cmd/CmdExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/cmd/CmdExecutor",
        "<",
        "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x2

.field private static final SHOW_NOTICIATION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;-><init>(Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;

    return-void
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)V

    return-void
.end method

.method private static buildInvokePendingIntent(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)Landroid/app/PendingIntent;
    .locals 10

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getAppPackage()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v6, v4}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->buildOpenSchemeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v8, 0x10000

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v3, v2

    :cond_0
    if-nez v3, :cond_1

    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->buildOpenUrlIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static buildOpenSchemeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildOpenUrlIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)V
    .locals 2

    invoke-static {}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->buildUpon()Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationContent(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->buildInvokePendingIntent(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationPendingIntent(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setTickerText(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->build(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/SDKNotification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification;->show(I)V

    return-void
.end method


# virtual methods
.method public doExecutor(Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)Z
    .locals 6

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->getNotificationDelay()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public bridge synthetic doExecutor(Lcom/sina/weibo/sdk/cmd/BaseCmd;)Z
    .locals 1

    check-cast p1, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)Z

    move-result v0

    return v0
.end method
