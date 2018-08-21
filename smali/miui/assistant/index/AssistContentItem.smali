.class public Lmiui/assistant/index/AssistContentItem;
.super Lmiui/assistant/index/BaseItem;
.source "AssistContentItem.java"


# instance fields
.field private agent:Ljava/lang/String;

.field private cardName:Ljava/lang/String;

.field private contentDescription:Ljava/lang/String;

.field private expirationTime:Ljava/lang/String;

.field private extrasJson:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private lastMessageTime:Ljava/lang/String;

.field private moreUri:Ljava/lang/String;

.field private orderNumber:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private unit:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/assistant/index/BaseItem;-><init>()V

    return-void
.end method

.method public static convertToAssistContent(Lmiui/assistant/index/AssistContentItem;)Lmiui/assistant/assist/AssistContent;
    .locals 3

    new-instance v0, Lmiui/assistant/assist/AssistContent;

    invoke-direct {v0}, Lmiui/assistant/assist/AssistContent;-><init>()V

    invoke-static {p0}, Lmiui/assistant/index/AssistContentItem;->fillJson(Lmiui/assistant/index/AssistContentItem;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/assistant/assist/AssistContent;->setStructuredData(Ljava/lang/String;)V

    return-object v0
.end method

.method private static fillJson(Lmiui/assistant/index/AssistContentItem;)Lorg/json/JSONObject;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-class v9, Lmiui/assistant/index/AssistContentItem;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    array-length v9, v1

    if-ge v4, v9, :cond_1

    aget-object v9, v1, v4

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    const-class v9, Lmiui/assistant/index/AssistContentItem;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v5, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v9, "AssistContentItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NoSuchMethodException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v9, "AssistContentItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "InvocationTargetException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string/jumbo v9, "AssistContentItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IllegalAccessException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v2

    const-string/jumbo v9, "AssistContentItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "JSONException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    return-object v5
.end method


# virtual methods
.method public getAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->expirationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtrasJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->extrasJson:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessageTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->lastMessageTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->moreUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentItem;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->agent:Ljava/lang/String;

    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->cardName:Ljava/lang/String;

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->expirationTime:Ljava/lang/String;

    return-void
.end method

.method public setExtrasJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->extrasJson:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLastMessageTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->lastMessageTime:Ljava/lang/String;

    return-void
.end method

.method public setMoreUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->moreUri:Ljava/lang/String;

    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->orderNumber:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->status:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->unit:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentItem;->uri:Ljava/lang/String;

    return-void
.end method
