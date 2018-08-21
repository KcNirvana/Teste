.class public Lcom/miui/personalassistant/hybrid/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static final KEY_FILE_NAME:Ljava/lang/String; = "hybrid_key.pem"

.field private static sPublicKey:Ljava/lang/String;


# instance fields
.field private mConfig:Lcom/miui/personalassistant/hybrid/Config;

.field private mExpiredTime:J

.field private mSign:Ljava/lang/String;

.field private mValidSignature:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/personalassistant/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/hybrid/SecurityManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "miuisdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/hybrid/SecurityManager;->getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "hybrid_key.pem"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/miui/personalassistant/hybrid/SecurityManager;->readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-object v6

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "keys/hybrid_key.pem"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "cannot read hybrid key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method private isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Lcom/miui/personalassistant/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/personalassistant/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/miui/personalassistant/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public isExpired(Lcom/miui/personalassistant/hybrid/Config;)Z
    .locals 4

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mConfig:Lcom/miui/personalassistant/hybrid/Config;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/hybrid/Config;->getSecurity()Lcom/miui/personalassistant/hybrid/Security;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/hybrid/Config;->getSecurity()Lcom/miui/personalassistant/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/hybrid/Security;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mExpiredTime:J

    invoke-virtual {p1}, Lcom/miui/personalassistant/hybrid/Config;->getSecurity()Lcom/miui/personalassistant/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/hybrid/Security;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mExpiredTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidSignature()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mConfig:Lcom/miui/personalassistant/hybrid/Config;

    invoke-static {v1}, Lcom/miui/personalassistant/hybrid/ConfigUtils;->getRawConfig(Lcom/miui/personalassistant/hybrid/Config;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/miui/personalassistant/hybrid/SecurityManager;->isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    goto :goto_0
.end method
