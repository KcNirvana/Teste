.class public Lcom/miui/personalassistant/express/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static isCloudFileExist(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/util/FileUtil;->isCloudFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FileUtil"

    const-string/jumbo v4, "readFile: "

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private static readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FileUtil"

    const-string/jumbo v4, "readFileFromAssets: "

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private static readFileFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readFileFromInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v3, "readFileFromInternal: "

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static readFileFromInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/personalassistant/express/util/FileUtil;->readFileFromInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string/jumbo v5, "FileUtil"

    const-string/jumbo v6, "readFileFromReader: "

    invoke-static {v5, v6, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcom/miui/personalassistant/express/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/express/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/miui/personalassistant/express/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {p0}, Lcom/miui/personalassistant/express/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1
.end method
