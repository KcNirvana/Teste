.class public Lcom/miui/antispam/policy/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method private Xh(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    const-string/jumbo v2, "URLFilterPolicy"

    const-string/jumbo v3, "Exception when get redirect url :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private Xi(Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "https://security.browser.miui.com/phish?q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "&version=1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/k;->Jg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "phish"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_1
    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    if-eq v4, v0, :cond_3

    if-ne v3, v0, :cond_4

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "URLFilterPolicy"

    const-string/jumbo v3, "JSONException when resolve result string :"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1
.end method

.method private Xl(I)I
    .locals 1

    or-int/lit16 v0, p1, 0x80

    return v0
.end method


# virtual methods
.method public Xj(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/miui/antispam/a/a;->Yp()V

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/antispam/util/f;->Xx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, p2}, Lcom/miui/antispam/policy/a;->Xh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/d;

    iget-object v3, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/miui/antispam/policy/PolicyUtils/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xb(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    const-string/jumbo v0, "URLFilterPolicy"

    const-string/jumbo v3, "check by browser!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/miui/antispam/policy/a;->Xi(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string/jumbo v3, "URLFilterPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AVL black url check done : url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    if-ne v0, v6, :cond_1

    return v9

    :cond_1
    if-ne v0, v9, :cond_2

    return v8

    :cond_2
    return v7

    :cond_3
    if-ne v0, v6, :cond_4

    return v9

    :cond_4
    invoke-static {p2}, Lcom/miui/antispam/util/f;->Xy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/antispam/util/f;->XA(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v3, "URLFilterPolicy"

    const-string/jumbo v4, "URL WhiteList Check done "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v8

    :cond_5
    invoke-static {}, Lcom/miui/antispam/db/a;->YO()Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v0, "URLFilterPolicy"

    const-string/jumbo v1, "SecurityCenter is not allowed to access internet, check failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    invoke-static {v2}, Lcom/miui/antispam/util/f;->Xy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/antispam/a/a;->Yq()V

    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    return v8

    :cond_8
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v1, "URLFilterPolicy"

    const-string/jumbo v2, "exception when get URL Scan Result : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method public Xk(ILcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/b;
    .locals 8

    const/16 v2, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-object v7

    :cond_1
    if-ne p1, v2, :cond_2

    return-object v7

    :cond_2
    :try_start_0
    iget-object v0, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Yr:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antispam/util/f;->Xw(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v7

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/antispam/util/f;->Xx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/miui/antispam/policy/b;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/a;->Xl(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/antispam/policy/b;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object v0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antispam/util/f;->Xy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "URLFilterPolicy"

    const-string/jumbo v2, "Exception when check message urls ! "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v7

    :cond_5
    :try_start_1
    const-string/jumbo v0, "URLFilterPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "urls : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "URLFilterPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mainUrls : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/d;

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/miui/antispam/policy/PolicyUtils/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xb(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_6

    const-string/jumbo v1, "black"

    invoke-static {v1}, Lcom/miui/antispam/a/a;->Ym(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yn(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ge p1, v0, :cond_7

    new-instance v0, Lcom/miui/antispam/policy/b;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/antispam/policy/b;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object v0

    :cond_7
    const-string/jumbo v0, "URLFilterPolicy"

    const-string/jumbo v1, "url marked by AVL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/antispam/policy/b;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/a;->Xl(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/antispam/policy/b;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object v0

    :cond_8
    iget-object v0, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Yr:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antispam/util/f;->Xz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "number"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Ym(Ljava/lang/String;)V

    const-string/jumbo v0, "URLFilterPolicy"

    const-string/jumbo v1, "url marked by phoneNumber in text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/antispam/policy/b;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/a;->Xl(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/antispam/policy/b;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/util/f;->XA(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_b

    const-string/jumbo v1, "non_white_black_single_url"

    invoke-static {v1}, Lcom/miui/antispam/a/a;->Ym(Ljava/lang/String;)V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yo(Ljava/lang/String;)V

    const-string/jumbo v0, "URLFilterPolicy"

    const-string/jumbo v1, "url marked by risky url in text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/antispam/policy/b;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/a;->Xl(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/antispam/policy/b;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object v0

    :cond_b
    const-string/jumbo v1, "non_white_black_multi_url"

    invoke-static {v1}, Lcom/miui/antispam/a/a;->Ym(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string/jumbo v0, "white"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Ym(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
