.class public Lcom/miui/antispam/service/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final aaf:Ljava/lang/String;

.field private static final aag:[C

.field private static aah:Lcom/miui/antispam/service/b/b;

.field private static aai:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/antispam/service/b/b;->aag:[C

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/service/b/b;->aaf:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/antispam/service/b/b;->aai:Z

    return-void

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/b/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method private adg([Z[JLandroid/app/DownloadManager;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/a/c;->bOq(Z)V

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_3

    aget-boolean v0, p1, v2

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    aget-wide v4, p2, v2

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    invoke-virtual {p3, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "status"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_2
    const/16 v3, 0x8

    if-ne v3, v0, :cond_1

    sget-object v0, Lcom/xiaomi/a/c;->bqx:[Ljava/lang/String;

    aget-object v0, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/miui/antispam/service/b/b;->aaf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_3
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "SmsEngineUpdateManager"

    const-string/jumbo v3, "Exception when copy tmp files ! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_6

    sget-object v2, Lcom/xiaomi/a/c;->bqx:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p4, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v0, "SmsEngineUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "afterDownload: delete tmpFileName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [J

    aget-wide v4, p2, v2

    const/4 v3, 0x0

    aput-wide v4, v0, v3

    invoke-virtual {p3, v0}, Landroid/app/DownloadManager;->remove([J)I

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p4, v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setSMSClassifierUpdateTime(Landroid/content/Context;J)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/antispam/service/b/b;->aai:Z

    if-eqz p5, :cond_4

    check-cast p5, Lcom/miui/antivirus/service/b;

    invoke-virtual {p5}, Lcom/miui/antivirus/service/b;->aBh()V

    :cond_4
    if-eqz p6, :cond_5

    const/4 v0, 0x2

    invoke-interface {p6, v0}, Lcom/miui/antispam/service/b/c;->Ws(I)V

    :cond_5
    const-string/jumbo v0, "SmsEngineUpdateManager"

    const-string/jumbo v2, " xiaomi engine update success !"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/xiaomi/a/c;->bOq(Z)V

    :goto_5
    return-void

    :cond_6
    invoke-static {v1}, Lcom/xiaomi/a/c;->bOq(Z)V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/xiaomi/a/c;->bOq(Z)V

    throw v0

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method private adh(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;Z)I
    .locals 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    const-string/jumbo v0, "http://staging.api.sec.miui.com/GuardProviderV1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v0, "/GetVersion?ver="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "1.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/miui/antispam/service/b/b;->aaf:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "https://api.sec.miui.com/GuardProviderV1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/k;->Jg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmsEngineUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "maxVersion"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {p1}, Lcom/xiaomi/a/c;->bOp(Landroid/content/Context;)[[I

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v0, v2

    const/4 v1, 0x4

    if-eq v1, v0, :cond_5

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/xiaomi/a/c;->bqx:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v0, 0x4

    new-array v4, v0, [Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_3
    const/4 v3, 0x4

    if-ge v1, v3, :cond_7

    const/4 v3, 0x0

    aput-boolean v3, v4, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/miui/antispam/service/b/b;->aag:[C

    aget-char v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v5, v2, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    if-le v3, v5, :cond_6

    const/4 v0, 0x1

    aput-boolean v0, v4, v1

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-string/jumbo v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    const/4 v0, 0x4

    new-array v3, v0, [J

    const/4 v0, 0x4

    new-array v2, v0, [Z

    const/4 v0, 0x0

    :goto_4
    array-length v1, v4

    if-ge v0, v1, :cond_9

    aget-boolean v1, v4, v0

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/miui/antispam/service/b/f;

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/antispam/service/b/f;-><init>(Lcom/miui/antispam/service/b/b;[Z[J[ZLandroid/app/DownloadManager;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    aget-boolean v2, v4, v1

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/miui/antispam/service/b/b;->aag:[C

    aget-char v6, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p4}, Lcom/miui/antispam/service/b/b;->adi(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Landroid/app/DownloadManager$Request;

    invoke-direct {v6, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/xiaomi/a/c;->bqx:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    aput-wide v6, v3, v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x2

    return v0

    :cond_c
    const-string/jumbo v0, "desc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmsEngineUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get server version error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SmsEngineUpdateManager"

    const-string/jumbo v2, "Exception when checkUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private adi(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string/jumbo v1, "http://staging.api.sec.miui.com/GuardProviderV1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "/GetFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/antispam/service/b/b;->aag:[C

    aget-char v1, v1, p1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "?ver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "https://api.sec.miui.com/GuardProviderV1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic adj(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/antispam/service/b/b;->aai:Z

    return p0
.end method

.method static synthetic adk(Lcom/miui/antispam/service/b/b;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/service/b/b;->adh(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;Z)I

    move-result v0

    return v0
.end method

.method static synthetic adl(Lcom/miui/antispam/service/b/b;[Z[JLandroid/app/DownloadManager;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/antispam/service/b/b;->adg([Z[JLandroid/app/DownloadManager;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/antispam/service/b/b;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/b/b;->aah:Lcom/miui/antispam/service/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/service/b/b;

    invoke-direct {v0, p0}, Lcom/miui/antispam/service/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antispam/service/b/b;->aah:Lcom/miui/antispam/service/b/b;

    :cond_0
    sget-object v0, Lcom/miui/antispam/service/b/b;->aah:Lcom/miui/antispam/service/b/b;

    return-object v0
.end method


# virtual methods
.method public adf(Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;Z)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    sget-boolean v0, Lcom/miui/antispam/service/b/b;->aai:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/service/b/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getSMSClassifierUpdateTime(Landroid/content/Context;)J

    move-result-wide v0

    if-nez p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SmsEngineUpdateManager"

    const-string/jumbo v1, " update start!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/antispam/service/b/b;->aai:Z

    new-instance v0, Lcom/miui/antispam/service/b/d;

    iget-object v1, p0, Lcom/miui/antispam/service/b/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/miui/antispam/service/b/d;-><init>(Lcom/miui/antispam/service/b/b;Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/service/b/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method
