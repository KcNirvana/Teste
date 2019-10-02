.class public Lcom/npaw/youbora/youboralib/com/Communication;
.super Ljava/lang/Object;
.source "Communication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;
    }
.end annotation


# instance fields
.field private balancerEnabled:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private extraOperationsListener:Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;

.field private host:Ljava/lang/String;

.field private final httpSecure:Z

.field private pingTime:I

.field private prefix:C

.field private final preloaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/npaw/youbora/youboralib/com/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private view:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x55

    iput-char v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->prefix:C

    const/4 v0, -0x1

    iput v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->view:I

    if-nez p1, :cond_0

    const-string p1, "nqs.nice264.com"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->setHost(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/npaw/youbora/youboralib/com/Communication;->httpSecure:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    const-string p2, "FastData"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x5

    iput p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->pingTime:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    return-void
.end method

.method public static addProtocol(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "https://"

    goto :goto_0

    :cond_0
    const-string p1, "http://"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processRequests(Z)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/npaw/youbora/youboralib/com/Request;

    const-string v4, "code"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/npaw/youbora/youboralib/com/Request;->setParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/npaw/youbora/youboralib/com/Request;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/com/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/com/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Communication;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/npaw/youbora/youboralib/com/Request;->setHost(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/com/Communication;->extraOperationsListener:Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/npaw/youbora/youboralib/com/Communication;->extraOperationsListener:Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/com/Request;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;->onExtraOperations(Ljava/util/Map;)V

    :cond_3
    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/com/Request;->send()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_5
    return-void
.end method

.method private registerRequest(Lcom/npaw/youbora/youboralib/com/Request;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Communication;->getViewCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "timemark"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/npaw/youbora/youboralib/com/Request;->setParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/npaw/youbora/youboralib/com/Request;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->processRequests(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Communication"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static removeProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addPreloader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExtraOperationsListener()Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->extraOperationsListener:Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->host:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->httpSecure:Z

    invoke-static {v0, v1}, Lcom/npaw/youbora/youboralib/com/Communication;->addProtocol(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPingTime()I
    .locals 1

    iget v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->pingTime:I

    return v0
.end method

.method public getViewCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "nocode"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->prefix:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->view:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPreloader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nextView(C)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->view:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->view:I

    iput-char p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->prefix:C

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Communication;->getViewCode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextView(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x4c

    goto :goto_0

    :cond_0
    const/16 p1, 0x56

    :goto_0
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->nextView(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public receiveData(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "q"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "q"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, ""

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, "h"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "h"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v5, "c"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v5, "pt"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "pt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v5, "b"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/npaw/youbora/youboralib/com/Communication;->prefix:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/npaw/youbora/youboralib/com/Communication;->code:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/com/Communication;->setHost(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->pingTime:I

    iput-object v4, p0, Lcom/npaw/youbora/youboralib/com/Communication;->balancerEnabled:Ljava/lang/String;

    const-string v0, "FastData \'%s\' is ready."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    const-string v0, "nocode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Communication;->getViewCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->requests:Ljava/util/Map;

    const-string v0, "nocode"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p1, "FastData"

    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->removePreloader(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "FastData response is wrong."

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p1, "FastData response is wrong."

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_8
    :goto_0
    const-string p1, "FastData empty response"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public removePreloader(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->preloaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->processRequests(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Communication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove unexistent preloader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Communication"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/com/Communication;->requestData(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public requestData(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "outputformat"

    const-string v1, "outputformat"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "outputformat"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "jsonp"

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timemark"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NQS /data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "system"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/npaw/youbora/youboralib/com/Request;

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/com/Communication;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data"

    invoke-direct {v0, v1, v2, p1}, Lcom/npaw/youbora/youboralib/com/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Lcom/npaw/youbora/youboralib/com/Communication$1;

    invoke-direct {p1, p0, p2}, Lcom/npaw/youbora/youboralib/com/Communication$1;-><init>(Lcom/npaw/youbora/youboralib/com/Communication;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/com/Request;->setSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)Lcom/npaw/youbora/youboralib/com/Request;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/com/Request;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p2, "Error"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "code"

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/npaw/youbora/youboralib/com/Request;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2}, Lcom/npaw/youbora/youboralib/com/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p3}, Lcom/npaw/youbora/youboralib/com/Request;->setSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)Lcom/npaw/youbora/youboralib/com/Request;

    invoke-direct {p0, v0}, Lcom/npaw/youbora/youboralib/com/Communication;->registerRequest(Lcom/npaw/youbora/youboralib/com/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "Communication"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public sendService(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/npaw/youbora/youboralib/com/Communication;->sendService(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendService(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/com/Communication;->removeProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/com/Communication;->httpSecure:Z

    invoke-static {p1, v0}, Lcom/npaw/youbora/youboralib/com/Communication;->addProtocol(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/npaw/youbora/youboralib/com/Request;

    const-string v1, ""

    invoke-direct {v0, p1, v1, p2}, Lcom/npaw/youbora/youboralib/com/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p3}, Lcom/npaw/youbora/youboralib/com/Request;->setSuccessListener(Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)Lcom/npaw/youbora/youboralib/com/Request;

    invoke-direct {p0, v0}, Lcom/npaw/youbora/youboralib/com/Communication;->registerRequest(Lcom/npaw/youbora/youboralib/com/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Communication"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setExtraOperationsListener(Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->extraOperationsListener:Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/com/Communication;->removeProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication;->host:Ljava/lang/String;

    return-void
.end method
