.class public final Lcom/miui/personalassistant/express/RemoteRequestManager;
.super Ljava/lang/Object;
.source "RemoteRequestManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteRequestManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompanyInfoRequest(Landroid/content/Context;I)Lcom/miui/personalassistant/request/core/HttpRequest;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressCompanyInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/personalassistant/request/core/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static getEncodeImei()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/CoderUtils;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExpressListRequest(Landroid/content/Context;)Lcom/miui/personalassistant/request/core/BaseRequest;
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressQueryCompanyListUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getExpressQueryAllRequest(Landroid/content/Context;Ljava/util/List;)Lcom/miui/personalassistant/request/core/JSONRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)",
            "Lcom/miui/personalassistant/request/core/JSONRequest;"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/miui/personalassistant/express/RemoteRequestManager;->isEntryListEmpty(Ljava/util/List;)Z

    move-result v3

    invoke-static {v10}, Lcom/miui/personalassistant/express/RemoteRequestManager;->isPhoneListEmpty(Ljava/util/List;)Z

    move-result v9

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    const-string/jumbo v13, "RemoteRequestManager"

    const-string/jumbo v14, "getExpressQueryAllRequest: entryList and phones are null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    new-instance v11, Lcom/miui/personalassistant/request/core/JSONRequest;

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressQueryByMailNosUrl()Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Lcom/miui/personalassistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v2}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v13

    sget-object v14, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    if-ne v13, v14, :cond_3

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressQueryAllUrl()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v12

    if-eqz v4, :cond_4

    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v13, "%s|%s|%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_7

    if-eqz v4, :cond_6

    const-string/jumbo v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v13, "express_phone_count"

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/express/util/StatUtil;->recordCountEvent(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_8

    const-string/jumbo v13, "mailNos"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_9

    const-string/jumbo v13, "phones"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v13, "imeiSha1"

    invoke-static/range {p0 .. p0}, Lcom/miui/personalassistant/util/Util;->getSHAImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "RemoteRequestManager"

    const-string/jumbo v14, "getExpressQueryAllRequest: url = %s "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lcom/miui/personalassistant/request/core/JSONRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_0

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/miui/personalassistant/request/core/JSONRequest;->setRequireLogin(Z)Lcom/miui/personalassistant/request/core/BaseJSONRequest;

    goto/16 :goto_0
.end method

.method public static getExpressQueryRequest(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/BaseRequest;
    .locals 5

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v1, "DetailFragment"

    const-string/jumbo v2, "getExpressQueryRequest: entry is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressQueryUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/miui/personalassistant/request/core/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "mailNo"

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cpCode"

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DetailFragment"

    const-string/jumbo v2, "getExpressQueryRequest: url = %s "

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getImageIconUrl(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://file.market.xiaomi.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/thumbnail/png/w%d/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneRegisterRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;
    .locals 6

    new-instance v0, Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressPhoneRegisterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RemoteRequestManager"

    const-string/jumbo v2, "getPhoneRegisterRequest: url = %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/JSONRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getPhoneSubscribeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;
    .locals 6

    new-instance v0, Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressPhoneSubscribeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imeiMd5"

    invoke-static {}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getEncodeImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imeiSha1"

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->getSHAImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RemoteRequestManager"

    const-string/jumbo v2, "getPhoneRegisterRequest: url = %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/JSONRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getPhoneVerifyRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;
    .locals 6

    new-instance v0, Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-static {}, Lcom/miui/personalassistant/express/UrlManager;->getExpressPhoneVerifyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imeiMd5"

    invoke-static {}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getEncodeImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imeiSha1"

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->getSHAImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "verifyCode"

    invoke-virtual {v0, v1, p2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RemoteRequestManager"

    const-string/jumbo v2, "getPhoneVerifyRequest: url = %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/JSONRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static isEntryListEmpty(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v0}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v4

    sget-object v5, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPhoneListEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
