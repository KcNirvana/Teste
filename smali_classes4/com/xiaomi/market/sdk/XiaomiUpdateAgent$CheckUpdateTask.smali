.class Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>()V

    return-void
.end method

.method static synthetic access$1200()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->showUpdateDialog()V

    return-void
.end method

.method private getFilterParams()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screenSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/xiaomi/market/sdk/Client;->DISPLAY_WIDTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaomi/market/sdk/Client;->DISPLAY_HEIGHT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resolution"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "density"

    sget v2, Lcom/xiaomi/market/sdk/Client;->DISPLAY_DENSITY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchScreen"

    sget v2, Lcom/xiaomi/market/sdk/Client;->TOUCH_SCREEN:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "glEsVersion"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->GLES_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feature"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "library"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "glExtension"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    sget v2, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "version"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "release"

    sget-object v2, Lcom/xiaomi/market/sdk/Client;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private parseUpdateInfo(Lorg/json/JSONObject;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MarketUpdateAgent"

    const-string v1, "update info json obj null"

    invoke-static {p1, v1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/xiaomi/market/sdk/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MarketUpdateAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    :try_start_0
    const-string v2, "host"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    const-string v2, "fitness"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    const-string v2, "source"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const-string v2, "updateLog"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    const-string v2, "versionCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string v2, "versionName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    const-string v2, "apk"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v2, "apkHash"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v2, "apkSize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "diffFile"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    const-string v2, "diffFileHash"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    const-string v2, "diffFileSize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "MarketUpdateAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get update info failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MarketUpdateAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original content : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static showUpdateDialog()V
    .locals 7

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "MarketUpdateAgent"

    const-string v1, "activity not running!"

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_dialog_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/xiaomi/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    sget v2, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_dialog_message:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    invoke-static {v5, v6, v0}, Lcom/xiaomi/market/sdk/Utils;->getByteString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v2, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_dialog_message_diff:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    invoke-static {v5, v6, v0}, Lcom/xiaomi/market/sdk/Utils;->getByteString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;

    invoke-direct {v2}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x4

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/market/sdk/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/market/sdk/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$402(Lcom/xiaomi/market/sdk/LocalAppInfo;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/xiaomi/market/sdk/Connection;

    sget-object v1, Lcom/xiaomi/market/sdk/Constants;->UPDATE_URL:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/xiaomi/market/sdk/Connection;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/market/sdk/Connection$Parameter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/xiaomi/market/sdk/Connection$Parameter;-><init>(Lcom/xiaomi/market/sdk/Connection;)V

    const-string v2, "info"

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->getFilterParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "packageName"

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "versionCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v4

    iget v4, v4, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "apkHash"

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaomi/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "signature"

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaomi/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "sdk"

    sget v3, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "os"

    sget-object v3, Lcom/xiaomi/market/sdk/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "la"

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "co"

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "lo"

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "androidId"

    sget-object v3, Lcom/xiaomi/market/sdk/Client;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "xiaomiSDKVersion"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "debug"

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    goto :goto_0

    :cond_4
    const-string v3, "0"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "miuiBigVersionName"

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getMiuiBigVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "miuiBigVersionCode"

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$600()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "imei"

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getImeiMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    :cond_5
    sget-object v1, Lcom/xiaomi/market/sdk/Connection$NetworkError;->OK:Lcom/xiaomi/market/sdk/Connection$NetworkError;

    invoke-virtual {p1}, Lcom/xiaomi/market/sdk/Connection;->requestJSON()Lcom/xiaomi/market/sdk/Connection$NetworkError;

    move-result-object v2

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/market/sdk/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->parseUpdateInfo(Lorg/json/JSONObject;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$702(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p1, "MarketUpdateAgent"

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/market/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p1

    iget p1, p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$802(Z)Z

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;-><init>(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lcom/xiaomi/market/sdk/UpdateResponse;

    invoke-direct {v0}, Lcom/xiaomi/market/sdk/UpdateResponse;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    iput v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    iput-wide v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->apkSize:J

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->apkHash:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    iput-wide v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->diffSize:J

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/market/sdk/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->path:Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$1000()Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$1000()Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "MarketUpdateAgent"

    const-string v1, "start to check update"

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/market/sdk/Patcher;->tryLoadLibrary()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$102(Z)Z

    :cond_0
    return-void
.end method
