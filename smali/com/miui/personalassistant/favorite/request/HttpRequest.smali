.class public Lcom/miui/personalassistant/favorite/request/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final SHOPPING_ALL:Ljava/lang/String; = "0"

.field public static final SHOPPING_PRICE:Ljava/lang/String; = "1"

.field public static final URL_HOST:Ljava/lang/String; = "http://api.assistant.miui.com"

.field public static final URL_PARSER:Ljava/lang/String; = "http://api.assistant.miui.com/urlparser"

.field public static final URL_PARSER_SHOPPING:Ljava/lang/String; = "http://api.assistant.miui.com/shopping"

.field public static final URL_SUPPORT:Ljava/lang/String; = "http://api.assistant.miui.com/urlparser/appListV2"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public reqMiShoppPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://m.mi.com/v1/hd/messageAid"

    invoke-direct {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "client_id"

    const-string/jumbo v4, "180100031058"

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "action"

    const-string/jumbo v4, "productPrice"

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ids"

    invoke-virtual {v1, v3, p1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->setEncrypt(Z)V

    invoke-virtual {v1, v5}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->setDecryptDownloadData(Z)Lcom/miui/personalassistant/favorite/request/Request;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reqParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/urlparser"

    invoke-direct {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v3, p2}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, p3}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "author"

    invoke-virtual {v1, v3, p4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v3, "imei"

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/util/Util;->getSHAImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "versionCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/personalassistant/util/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reqShoppingParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/shopping"

    invoke-direct {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "componentName"

    invoke-virtual {v1, v3, p2}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "0"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "imei"

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/util/Util;->getSHAImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "appVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/personalassistant/util/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v3, "requestType"

    invoke-virtual {v1, v3, p3}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reqSupportApp()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/urlparser/appListV2"

    invoke-direct {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "appVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/request/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/personalassistant/util/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
