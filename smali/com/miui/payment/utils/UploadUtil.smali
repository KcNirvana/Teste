.class public Lcom/miui/payment/utils/UploadUtil;
.super Ljava/lang/Object;
.source "UploadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/utils/UploadUtil$UploadTask;,
        Lcom/miui/payment/utils/UploadUtil$DataBundle;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "payment_data"

.field private static final MAX_FILE_SIZE:I = 0xbb8

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "UploadUtil"

.field public static final TYPE_PARSE_FAILED:I = 0x0

.field public static final TYPE_PARSE_MISMATCHED:I = 0x1

.field public static final TYPE_PARSE_UNSUPPORT:I = 0x2

.field private static final URL_UPLOAD:Ljava/lang/String; = "http://api.assistant.miui.com/blackwhite/payment/feedback"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/miui/payment/utils/UploadUtil;->deleteCache()V

    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "closeStream"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static decorateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const-string/jumbo v6, "\\d"

    const-string/jumbo v7, "*"

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "personalassistant_payment_v2"

    invoke-static {p0, v6}, Lcom/miui/personalassistant/cloudsync/Preferences;->getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v5, "fail"

    const/4 v6, 0x1

    if-ne p3, v6, :cond_1

    const-string/jumbo v5, "mismatch"

    :cond_0
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v6, "miuiVersion"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "configVersion"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "time"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "activity"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    const/4 v6, 0x2

    if-ne p3, v6, :cond_0

    const-string/jumbo v5, "unsupported"

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "UploadUtil"

    const-string/jumbo v7, "decorateData"

    invoke-static {v6, v2, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static deleteCache()V
    .locals 5

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "payment_data"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "UploadUtil"

    const-string/jumbo v4, "deleted cache file"

    invoke-static {v3, v4}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static persistData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "payment_data"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0xbb8

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v7, "UploadUtil"

    const-string/jumbo v8, "deleted cache file"

    invoke-static {v7, v8}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, p0, p1, p2}, Lcom/miui/payment/utils/UploadUtil;->decorateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v6}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    :try_start_2
    const-string/jumbo v7, "persistData"

    invoke-static {v3, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_3
    const-string/jumbo v7, "persistData"

    invoke-static {v3, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v5}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v5, v6

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v5, v6

    goto :goto_1
.end method

.method private static readDataFromCache()Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "payment_data"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v0, v1

    :goto_2
    :try_start_2
    const-string/jumbo v8, "readDataFromCache"

    invoke-static {v3, v8}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {v2}, Lcom/miui/payment/PaymentPrefs;->getCloudSyncFailedCount(Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_3

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "syncFailed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/miui/payment/PaymentPrefs;->clearCloudSyncFailedCount(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    invoke-static {v1}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_4
    :try_start_4
    const-string/jumbo v8, "readDataFromCache"

    invoke-static {v3, v8}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v8

    :goto_5
    invoke-static {v0}, Lcom/miui/payment/utils/UploadUtil;->closeStream(Ljava/io/Closeable;)V

    throw v8

    :catchall_1
    move-exception v8

    move-object v0, v1

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static uploadData()V
    .locals 4

    invoke-static {}, Lcom/miui/payment/utils/UploadUtil;->readDataFromCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b0335

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/miui/payment/utils/UploadUtil$UploadTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/payment/utils/UploadUtil$UploadTask;-><init>(Lcom/miui/payment/utils/UploadUtil$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/payment/utils/UploadUtil$UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
