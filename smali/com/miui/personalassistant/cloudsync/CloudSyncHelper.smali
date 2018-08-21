.class public Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;
.super Ljava/lang/Object;
.source "CloudSyncHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final FUNCTION_SOURCE:Ljava/lang/String; = "function.source"

.field private static final KEY_ACTIVATED:Ljava/lang/String; = "activated"

.field private static final KEY_CARDS:Ljava/lang/String; = "cards"

.field private static final KEY_CARD_ID:Ljava/lang/String; = "cardId"

.field private static final TAG:Ljava/lang/String; = "CloudSyncHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/config/PALog;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->cloudSyncCards(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->cloudSyncQuickstart(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->cloudSyncPayment(Landroid/content/Context;)V

    return-void
.end method

.method public static cloudSync(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->shouldSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static cloudSyncCards(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v1, "personalassistant_cards"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->getCloudConfig(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    const-string/jumbo v1, "CloudSyncHelper"

    const-string/jumbo v2, "cloudSync: cards --> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->setCardStatus(Landroid/content/Context;Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)V

    return-void
.end method

.method private static cloudSyncPayment(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v1, "personalassistant_payment_v2"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->getCloudConfig(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    const-string/jumbo v1, "CloudSyncHelper"

    const-string/jumbo v2, "cloudSync: payment --> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "personalassistant_payment_v2"

    invoke-static {p0, v1, v0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->isNewVersion(Landroid/content/Context;Ljava/lang/String;Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->savePaymentConfigs(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static cloudSyncQuickstart(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v1, "personalassistant_quickstart_v2"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->getCloudConfig(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    const-string/jumbo v1, "CloudSyncHelper"

    const-string/jumbo v2, "cloudSync: quickstart --> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "personalassistant_quickstart_v2"

    invoke-static {p0, v1, v0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->isNewVersion(Landroid/content/Context;Ljava/lang/String;Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->saveConfigToDb(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static findNewestConfig(Ljava/util/List;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;)",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    :try_start_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v9, "minAppVersion"

    const-string/jumbo v10, "0"

    invoke-virtual {v0, v9, v10}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v7, v4, :cond_0

    const-string/jumbo v9, "configVersion"

    const-string/jumbo v10, "0"

    invoke-virtual {v0, v9, v10}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ge v6, v1, :cond_0

    move v6, v1

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v9, "CloudSyncHelper"

    const-string/jumbo v10, "findNewestConfig: "

    invoke-static {v9, v10, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "CloudSyncHelper"

    const-string/jumbo v9, "findNewestConfig: size %d, version %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static getCloudConfig(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->isValidConfig(Ljava/util/List;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->findNewestConfig(Ljava/util/List;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v1

    goto :goto_0
.end method

.method private static isNewVersion(Landroid/content/Context;Ljava/lang/String;Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z
    .locals 8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v4, "configVersion"

    const-string/jumbo v5, "-1"

    invoke-virtual {p2, v4, v5}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p1}, Lcom/miui/personalassistant/cloudsync/Preferences;->getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/miui/personalassistant/cloudsync/Preferences;->setConfigVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->recordPaymentVersion(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v4, "CloudSyncHelper"

    const-string/jumbo v5, "isNewVersion: %s "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->recordPaymentVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isValidConfig(Ljava/util/List;)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;)",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    :try_start_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v4, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v6, "minAppVersion"

    const-string/jumbo v7, "0"

    invoke-virtual {v0, v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v4, v3, :cond_0

    const-string/jumbo v6, "CloudSyncHelper"

    const-string/jumbo v7, "invalid config: now version = %s, min version = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "CloudSyncHelper"

    const-string/jumbo v7, "isValidConfig: "

    invoke-static {v6, v7, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    goto :goto_0
.end method

.method private static recordPaymentVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "personalassistant_payment_v2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/payment/utils/StatUtil;->recordVersionEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static saveConfigToDb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "function.source"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    const-string/jumbo v0, "CloudSyncHelper"

    const-string/jumbo v1, "saveConfigToDb: success"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static saveConfigToInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    const-string/jumbo v4, "CloudSyncHelper"

    const-string/jumbo v5, "saveConfigToInternal: success"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "CloudSyncHelper"

    const-string/jumbo v4, "saveConfigToInternal: "

    invoke-static {v3, v4, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    const-string/jumbo v4, "CloudSyncHelper"

    const-string/jumbo v5, "saveConfigToInternal: "

    invoke-static {v4, v5, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v4, "CloudSyncHelper"

    const-string/jumbo v5, "saveConfigToInternal: "

    invoke-static {v4, v5, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v3

    :catch_3
    move-exception v2

    const-string/jumbo v4, "CloudSyncHelper"

    const-string/jumbo v5, "saveConfigToInternal: "

    invoke-static {v4, v5, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method public static savePaymentConfigs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "payment_pattern_config.json"

    invoke-static {p0, v1, p1}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->saveConfigToInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->addCloudSyncFailedCount(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static sendUpdateScreenBroadcast(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isFromSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "isFromLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "CloudSyncHelper"

    const-string/jumbo v2, "sendUpdateScreenBroadcast"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setCardStatus(Landroid/content/Context;Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "cards"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "cardId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "activated"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v2, v0}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardCloudState(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v2, v0}, Lcom/miui/personalassistant/cloudsync/CloudSyncHelper;->updateCatcherSwitch(Ljava/lang/String;Z)V

    const-string/jumbo v5, "CloudSyncHelper"

    const-string/jumbo v6, "setCardStatus: %s = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static shouldSync(Landroid/content/Context;)Z
    .locals 10

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getLastSyncTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xa4cb80

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/cloudsync/Preferences;->setLastSyncTime(Landroid/content/Context;J)V

    const-string/jumbo v4, "CloudSyncHelper"

    const-string/jumbo v5, "shouldSync: true"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static updateCatcherSwitch(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "key_payment"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchPaymentCatcher(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "key_express"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchExpressCatcher(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "key_favorite"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "key_shopping"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchShoppingCatcher(Z)V

    goto :goto_0
.end method
