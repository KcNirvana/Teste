.class Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;
.super Ljava/lang/Object;
.source "MediationConfigServer.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

.field private f:J

.field private g:I

.field private h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iput p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->b:I

    iput-object p3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->f:J

    return-wide p1
.end method

.method private a()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "av="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getMIUIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mvt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getMIUIBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "inter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->isInternationalBuild()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "hid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->getInstance()Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->getGAId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v2, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->sUseStaging:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->isGaidEnableInCurrentRegion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->getInstance()Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->getGAId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "asv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "apv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "cfts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "tk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getTrackInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const-string v2, "MediationConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->g:I

    iget v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->g:I

    const/16 v2, 0xc8

    const/4 v3, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    iget-object v5, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->reset(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x800

    new-array v4, v4, [B

    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_2

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MediationConfig"

    const-string v2, "buildRequest exception : "

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->f:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->saveTrackInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "MediationConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MediationConfig"

    const-string v0, "response is empty!"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    invoke-virtual {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->saveLastClockTime()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(I)V

    if-eqz p1, :cond_3

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediationConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->save(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "interval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    invoke-virtual {v3, v2, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->saveConfigInterval(Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    if-eqz p1, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "MediationConfig"

    const-string v1, "parseResponse"

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    if-eqz p1, :cond_5

    :goto_1
    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    :cond_5
    return-void

    :goto_2
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    :cond_6
    throw p1
.end method

.method private a(JJ)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x83

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/HashUtils;->murmurHash([BII)I

    move-result p1

    rem-int/lit16 p1, p1, 0x2710

    return p1
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->sUseStaging:Z

    if-eqz v0, :cond_0

    const-string v0, "https://test.ad.intl.xiaomi.com/config/v1.0/getdspconfig"

    return-object v0

    :cond_0
    const-string v0, "https://api.ad.intl.xiaomi.com/config/v1.0/getdspconfig"

    return-object v0
.end method


# virtual methods
.method public doRequest()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->isNetAccessible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediationConfig"

    const-string v1, "Network is not accessible !"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->saveCountRequest(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getConfigInterval(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_1

    if-eqz v3, :cond_1

    move v0, v3

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a0

    if-le v0, v1, :cond_4

    const/16 v0, 0x5a0

    :cond_4
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    invoke-virtual {v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getLastClockTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    int-to-long v0, v0

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer$1;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method

.method public resetTime()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->h:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    invoke-virtual {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->resetLastClockTime()V

    return-void
.end method
