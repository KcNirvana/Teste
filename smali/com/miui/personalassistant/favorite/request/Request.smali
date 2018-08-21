.class public abstract Lcom/miui/personalassistant/favorite/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "yellowpage"

.field private static final APP_SECRET:Ljava/lang/String; = "77eb2e8a5755abd016c0d69ba74b219c"

.field private static final DECODE_KEY:Ljava/lang/String; = "d101b17c77ff93cs"

.field private static final DEFAULT_HTTP_REQUEST_CONNECT_TIMEOUT_MS:I = 0x2710

.field private static final DEFAULT_HTTP_REQUEST_READ_TIMEOUT_MS_MOBILE:I = 0x7530

.field private static final DEFAULT_HTTP_REQUEST_READ_TIMEOUT_MS_WIFI:I = 0x2710

.field public static final NETWORK_ACCESS_ALLOWED:I = 0x1

.field public static final NETWORK_ACCESS_DEFAULT:I = 0x0

.field public static final NETWORK_ACCESS_DENIED:I = -0x1

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
.field private isEncrypt:Z

.field protected mConnectTimeout:I

.field protected mContext:Landroid/content/Context;

.field protected mDecryptDownloadData:Z

.field private mHeadersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkAccess:I

.field private mParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadTimeout:I

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequestUrl:Ljava/lang/String;

.field protected mRequireLogin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->isEncrypt:Z

    iput v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mNetworkAccess:I

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestMethod:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mDecryptDownloadData:Z

    iput-boolean v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequireLogin:Z

    return-void
.end method

.method private addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "d101b17c77ff93cs"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CoderUtils;->base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "d101b17c77ff93cs"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CoderUtils;->base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static genUrlSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getCookies()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequireLogin:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/request/Request;->getLoginCookies()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEncryptedParam(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    :goto_1
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "_encparam"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/request/Request;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getLoginCookies()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "assistant"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/utils/XiaomiAccount;->getAuthToken(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceToken"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cUserId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/personalassistant/utils/XiaomiExtendedAuthToken;->getCUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getRequestParams(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getSignedUri(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/miui/personalassistant/favorite/request/Request;->genUrlSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&sign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static signUrlParams(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v1, "lg"

    invoke-static {p0}, Lcom/miui/personalassistant/util/Device;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/personalassistant/util/Device;->getSupports(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sup"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcom/miui/personalassistant/favorite/request/Request;->getEncryptedParam(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "yellowpage"

    const-string/jumbo v3, "77eb2e8a5755abd016c0d69ba74b219c"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/favorite/request/Request;->getSignedUri(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static signUrlParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "GET"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/favorite/request/Request;->signUrlParams(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mHeadersMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearParams()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected getConn()Ljava/net/HttpURLConnection;
    .locals 10

    const/16 v7, 0x2710

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Request"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The connection url is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    iget v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mReadTimeout:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mReadTimeout:I

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :goto_1
    iget v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mConnectTimeout:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mConnectTimeout:I

    :goto_2
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestMethod:Ljava/lang/String;

    const-string/jumbo v7, "POST"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/request/Request;->getCookies()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "Cookie"

    invoke-virtual {v1, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/personalassistant/favorite/request/Request;->addHeaders(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "Request"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " MalformedURLException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/personalassistant/util/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x2710

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v6, "Request"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " IOException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x7530

    :try_start_2
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_5
    move v6, v7

    goto/16 :goto_2
.end method

.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mConnectTimeout:I

    return v0
.end method

.method protected getParams()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/request/Request;->isEncrypt()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestMethod:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/favorite/request/Request;->signUrlParams(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mParamsMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/personalassistant/favorite/request/Request;->getRequestParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getReadTimeout()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->mReadTimeout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestMethod:Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/request/Request;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "%s?%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isEncrypt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/request/Request;->isEncrypt:Z

    return v0
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

.method public overwriteNetworkAccess(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mNetworkAccess:I

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mConnectTimeout:I

    return-void
.end method

.method public setDecryptDownloadData(Z)Lcom/miui/personalassistant/favorite/request/Request;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mDecryptDownloadData:Z

    return-object p0
.end method

.method public setEncrypt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->isEncrypt:Z

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/miui/personalassistant/favorite/request/Request;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mReadTimeout:I

    return-void
.end method

.method public setRequireLogin(Z)Lcom/miui/personalassistant/favorite/request/Request;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/request/Request;->mRequireLogin:Z

    return-object p0
.end method
