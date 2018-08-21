.class Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;
.super Ljava/lang/Object;
.source "AppInstallCmdExecutor.java"

# interfaces
.implements Lcom/sina/weibo/sdk/cmd/CmdExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;,
        Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$NOTIFICATION_CONSTANTS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/cmd/CmdExecutor",
        "<",
        "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_DO_CMD:I = 0x1

.field private static final MESSAGE_QUIT_LOOP:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final WB_APK_FILE_DIR:Ljava/lang/String;


# instance fields
.field private isStarted:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

.field private mLooper:Landroid/os/Looper;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->WB_APK_FILE_DIR:Ljava/lang/String;

    const-class v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->handleCmd(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    return-void
.end method

.method private static buildInstallApkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_0
.end method

.method private static checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static checkApkSign(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-lt v0, v4, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static checkPackageName(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static generateSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Weibo"

    const-string/jumbo v1, "\u5fae\u535a"

    const-string/jumbo v2, "\u5fae\u535a"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private handleCmd(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V
    .locals 14

    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->needActivate(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->WB_APK_FILE_DIR:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppVersion()J

    move-result-wide v8

    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, v0, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->walkDir(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v8

    if-ltz v10, :cond_2

    iget-object v11, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, p1, v10}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isWifiValid(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v4, ""

    :try_start_0
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "GET"

    new-instance v12, Lcom/sina/weibo/sdk/net/WeiboParameters;

    const-string/jumbo v13, ""

    invoke-direct {v12, v13}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v1, v11, v12}, Lcom/sina/weibo/sdk/net/NetUtils;->internalGetRedirectUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->generateSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, ".apk"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    sget-object v10, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "redirectDownloadUrl is illeagle"

    invoke-static {v10, v11}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, v7, v0, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/exception/WeiboException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mContext:Landroid/content/Context;

    invoke-static {v11, p1, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V

    :cond_5
    throw v10
.end method

.method private static isSpecifiedApk(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->checkApkSign(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->checkPackageName(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static needActivate(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppPackage()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppSign()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v6, "com.sina.weibo"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sina/weibo/sdk/WeiboAppManager;->getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0
.end method

.method private static showNotification(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->buildUpon()Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationContent(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->buildInstallApkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationPendingIntent(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->setTickerText(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;->build(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/SDKNotification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/SDKNotification;->show(I)V

    return-void
.end method

.method private static walkDir(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    const/4 v8, 0x0

    array-length v10, v3

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_2

    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    aget-object v1, v3, v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, ".apk"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x40

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppPackage()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->getAppSign()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isSpecifiedApk(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget v11, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v11, v5, :cond_3

    iget v5, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v8, v1

    goto :goto_2
.end method


# virtual methods
.method public doExecutor(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z
    .locals 3

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "no thread running. please call start method first!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic doExecutor(Lcom/sina/weibo/sdk/cmd/BaseCmd;)Z
    .locals 1

    check-cast p1, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->isStarted:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;-><init>(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->thread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no thread running. please call start method first!"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->mHandler:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
