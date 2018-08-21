.class public Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;
.super Ljava/lang/Object;
.source "PersonalAssistantUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalAssistantUtil"

.field private static sInstance:Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;
    .locals 2

    const-class v1, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->sInstance:Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->sInstance:Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->sInstance:Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isValidExpress(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteExpress(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->deleteExpress(Ljava/util/List;)V

    return-void
.end method

.method public deleteExpress(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/express/Preferences;->getDeletedExpress(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/miui/personalassistant/express/Preferences;->setDeletedExpress(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v4, "PersonalAssistantUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteExpress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->updateExpressCard()V

    return-void
.end method

.method public requestAllExpressInfo(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v11, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getExpressQueryAllRequest(Landroid/content/Context;Ljava/util/List;)Lcom/miui/personalassistant/request/core/JSONRequest;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v9}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v1

    const-string/jumbo v11, "PersonalAssistantUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "requestAllExpressInfo: code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-virtual {v9}, Lcom/miui/personalassistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "PersonalAssistantUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "requestAllExpressInfo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "PersonalAssistantUtil"

    const-string/jumbo v12, "requestAllExpressInfo: result is empty"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-class v11, Lcom/miui/personalassistant/express/bean/QueryAllResponse;

    invoke-static {v3, v11}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/QueryAllResponse;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/QueryAllResponse;->getInfos()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v11, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/miui/personalassistant/express/Preferences;->getDeletedExpress(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getLatestTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getLatestContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getOrderNumber()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "PersonalAssistantUtil"

    const-string/jumbo v12, "requestAllExpressInfo: is deleted express, continue"

    invoke-static {v11, v12}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getOrderNumber()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getCompanyCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyCode(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getCompanyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyName(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getStateFlag()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setState(I)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isPickupCode()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setPickupCode(Z)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isSchedule()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setSchedule(Z)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isOpenLocker()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setOpenLocker(Z)V

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getPhone()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setPhone(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/miui/personalassistant/util/TimeUtil;->getMillsFromTime(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setLatestTime(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setLatestDetail(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->isValidExpress(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-static {v11, v5, v12}, Lcom/miui/personalassistant/express/db/Cache;->putExpressEntry(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    const-string/jumbo v11, "PersonalAssistantUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "requestAllExpressInfo: response count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->updateExpressCard()V

    goto/16 :goto_0
.end method

.method public updateExpressCard()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isFromSetting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "PersonalAssistantUtil"

    const-string/jumbo v2, "sendUpdateScreenBroadcast: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "PersonalAssistantUtil"

    const-string/jumbo v2, "update express"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
