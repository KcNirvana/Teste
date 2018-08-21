.class public abstract Lcom/miui/personalassistant/stock/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final DEFAULT_HTTP_REQUEST_CONNECT_TIMEOUT_MS:I = 0x2710

.field private static final DEFAULT_HTTP_REQUEST_READ_TIMEOUT_MS_MOBILE:I = 0x7530

.field private static final DEFAULT_HTTP_REQUEST_READ_TIMEOUT_MS_WIFI:I = 0x2710

.field public static final STATUS_CLIENT_ERROR:I = 0x3

.field public static final STATUS_NETWORK_ACCESS_DENIED:I = 0x6

.field public static final STATUS_NETWORK_UNAVAILABLE:I = 0x1

.field public static final STATUS_NOT_MODIFIED:I = 0x7

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_ERROR:I = 0x4

.field public static final STATUS_SERVICE_UNAVAILABLE:I = 0x2

.field public static final STATUS_UNKNOWN_ERROR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/stock/http/Request;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestUrl:Ljava/lang/String;

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestMethod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/stock/http/Request;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getConn()Ljava/net/HttpURLConnection;
    .locals 7

    const-string/jumbo v4, "Request"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The connection url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    iget-object v4, p0, Lcom/miui/personalassistant/stock/http/Request;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/util/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :goto_1
    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v4, p0, Lcom/miui/personalassistant/stock/http/Request;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Request"

    const-string/jumbo v5, " MalformedURLException:"

    invoke-static {v4, v5, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/16 v4, 0x7530

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v4, "Request"

    const-string/jumbo v5, " IOException:"

    invoke-static {v4, v5, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected isServerError(I)Z
    .locals 2

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    const/16 v0, 0x196

    if-eq p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
