.class public Lcom/miui/securityscan/cards/DataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Bw:Ljava/util/ArrayList;

.field private static mLock:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private channel:Ljava/lang/String;

.field private dataVersion:Ljava/lang/String;

.field private forceRefresh:Z

.field private internationalAdvIndex:I

.field private isOverseaChannel:Z

.field private isServerDataListEmpty:Z

.field private language:Ljava/lang/String;

.field private layoutId:Ljava/lang/String;

.field private models:Ljava/util/ArrayList;

.field private screenInsuranceBuy:Z

.field private screenInsuranceUrl:Ljava/lang/String;

.field private status:I

.field private tn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/securityscan/cards/DataModel;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->language:Ljava/lang/String;

    return-void
.end method

.method public static CR(II)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    rem-int v0, p0, p1

    if-nez v0, :cond_1

    div-int v0, p0, p1

    :goto_0
    return v0

    :cond_1
    div-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static CT(Lorg/json/JSONObject;I)Lcom/miui/securityscan/cards/DataModel;
    .locals 13

    sget-object v5, Lcom/miui/securityscan/cards/DataModel;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v6, Lcom/miui/securityscan/cards/DataModel;

    invoke-direct {v6}, Lcom/miui/securityscan/cards/DataModel;-><init>()V

    iget-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, v6, Lcom/miui/securityscan/cards/DataModel;->internationalAdvIndex:I

    const-string/jumbo v0, "isOverseaChannel"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/miui/securityscan/cards/DataModel;->isOverseaChannel:Z

    const-string/jumbo v0, "lang"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->language:Ljava/lang/String;

    const-string/jumbo v0, "channel"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->channel:Ljava/lang/String;

    const-string/jumbo v0, "dataVersion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->dataVersion:Ljava/lang/String;

    const-string/jumbo v0, "layoutId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->layoutId:Ljava/lang/String;

    const-string/jumbo v0, "tn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->tn:Ljava/lang/String;

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/miui/securityscan/cards/DataModel;->status:I

    const-string/jumbo v0, "forceRefresh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/miui/securityscan/cards/DataModel;->forceRefresh:Z

    const-string/jumbo v0, "extraData"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "screenInsurance"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "buy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/miui/securityscan/cards/DataModel;->screenInsuranceBuy:Z

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->screenInsuranceUrl:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/miui/securityscan/cards/DataModel;->isServerDataListEmpty:Z

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v6, v3, v2, p1}, Lcom/miui/securityscan/cards/DataModel;->Dg(Lcom/miui/securityscan/cards/DataModel;Lcom/miui/common/card/models/TitleCardModel;Lorg/json/JSONObject;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/miui/securityscan/cards/DataModel;->isServerDataListEmpty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_2
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    iget-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_f

    iget-object v0, v6, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/common/card/models/TitleCardModel;

    iget-object v1, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelTemplate()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/miui/securityscan/cards/DataModel;->CR(II)I

    move-result v9

    const/4 v1, 0x0

    move v3, v1

    :goto_4
    if-ge v3, v9, :cond_5

    new-instance v10, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v10}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v10, v3}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    mul-int/lit8 v11, v3, 0x2

    mul-int/lit8 v1, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    if-le v1, v2, :cond_4

    move v1, v2

    :cond_4
    iget-object v12, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v12, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x3

    invoke-static {v2, v1}, Lcom/miui/securityscan/cards/DataModel;->CR(II)I

    move-result v9

    const/4 v1, 0x0

    move v3, v1

    :goto_5
    if-ge v3, v9, :cond_a

    new-instance v10, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v10}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setHomePageFunc(Z)V

    const/4 v1, 0x1

    if-ne v9, v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setTopRow(Z)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setBottomRow(Z)V

    :cond_6
    :goto_6
    mul-int/lit8 v11, v3, 0x3

    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v1, 0x3

    if-le v1, v2, :cond_7

    move v1, v2

    :cond_7
    iget-object v12, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v12, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_8
    if-nez v3, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setTopRow(Z)V

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v9, -0x1

    if-ne v3, v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setBottomRow(Z)V

    goto :goto_6

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelTemplate()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v8, v0, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v8, :cond_c

    check-cast v0, Lcom/miui/common/card/models/NewsCardModel;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_d

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/NewsCardModel;->setTopRow(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/NewsCardModel;->setBottomRow(Z)V

    :cond_c
    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_d
    if-nez v1, :cond_e

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/NewsCardModel;->setTopRow(Z)V

    goto :goto_8

    :cond_e
    add-int/lit8 v8, v3, -0x1

    if-ne v1, v8, :cond_c

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/NewsCardModel;->setBottomRow(Z)V

    goto :goto_8

    :cond_f
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a
    if-ltz v1, :cond_11

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, v6, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_a

    :cond_11
    monitor-exit v5

    return-object v6

    :pswitch_data_0
    .packed-switch 0x579
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
    .end packed-switch
.end method

.method public static CW(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/miui/common/card/models/ActivityCardModel;

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v4, :cond_1

    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-lez v1, :cond_7

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    :goto_4
    return-object p0

    :cond_a
    move-object p0, v0

    goto :goto_4
.end method

.method public static CX()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/DataModel;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static CY(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-20-02"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "2"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v0, Lcom/miui/securityscan/b/a;->Jn:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/securityscan/utils/k;->Jf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-4-02"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "3"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static Db(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private static Dg(Lcom/miui/securityscan/cards/DataModel;Lcom/miui/common/card/models/TitleCardModel;Lorg/json/JSONObject;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "rowType"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "template"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p3, v1, v2}, Lcom/miui/common/card/models/AdvCardModel;->parse(Lcom/miui/securityscan/cards/DataModel;IILorg/json/JSONObject;)Lcom/miui/common/card/models/AdvCardModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "002"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2, p1}, Lcom/miui/common/card/models/FunctionCardModel;->parse(ILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)Lcom/miui/common/card/models/FunctionCardModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "003"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p3, v1, v2}, Lcom/miui/common/card/models/ActivityCardModel;->parse(IILorg/json/JSONObject;)Lcom/miui/common/card/models/ActivityCardModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "004"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p3, v1, v2, p1}, Lcom/miui/common/card/models/NewsCardModel;->parse(IILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)Lcom/miui/common/card/models/NewsCardModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "card"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "placeholder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/miui/common/card/models/PlaceHolderCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/PlaceHolderCardModel;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "template"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_8

    new-instance v0, Lcom/miui/common/card/models/ListTitleCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/ListTitleCardModel;-><init>()V

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/common/card/models/TitleCardModel;->setId(J)V

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/TitleCardModel;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v0, "visible"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/common/card/models/TitleCardModel;->setVisible(Z)V

    if-ne v3, v8, :cond_9

    const-string/jumbo v0, "position"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/common/card/models/TitleCardModel;->setPosition(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/miui/common/card/models/TitleCardModel;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v0, "list"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v1, v3, p3}, Lcom/miui/securityscan/cards/DataModel;->Dg(Lcom/miui/securityscan/cards/DataModel;Lcom/miui/common/card/models/TitleCardModel;Lorg/json/JSONObject;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    if-ne v3, v8, :cond_a

    new-instance v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-direct {v0, p3}, Lcom/miui/common/card/models/AdvListTitleCardModel;-><init>(I)V

    move-object v1, v0

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v6}, Lcom/miui/common/card/models/TitleCardModel;->setPosition(I)V

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto :goto_1
.end method

.method public static Dh(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-14"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "2"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v0, Lcom/miui/securityscan/b/a;->Jn:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/securityscan/utils/k;->Jf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-6"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "3"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public CS()Ljava/util/ArrayList;
    .locals 8

    const/4 v1, 0x0

    sget-object v4, Lcom/miui/securityscan/cards/DataModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    iget-boolean v2, p0, Lcom/miui/securityscan/cards/DataModel;->isOverseaChannel:Z

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/BaseCardModel;->setOverseaChannel(Z)V

    iget-object v2, p0, Lcom/miui/securityscan/cards/DataModel;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/BaseCardModel;->setLanguage(Ljava/lang/String;)V

    instance-of v2, v1, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/miui/common/card/models/TitleCardModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->isVisible()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->setPreviousLine(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/common/card/models/NewsCardModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/NewsCardModel;->setPreviousLine(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/securityscan/cards/DataModel;->models:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v1
.end method

.method public CU()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/cards/DataModel;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/cards/DataModel;->isOverseaChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CV()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/cards/DataModel;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/cards/DataModel;->isOverseaChannel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh_CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public Da()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/DataModel;->isServerDataListEmpty:Z

    return v0
.end method

.method public Dc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/DataModel;->forceRefresh:Z

    return v0
.end method

.method public Dd()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/cards/DataModel;->internationalAdvIndex:I

    return v0
.end method

.method public De()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->screenInsuranceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public Df()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/DataModel;->screenInsuranceBuy:Z

    return v0
.end method

.method public Di(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/cards/DataModel;->internationalAdvIndex:I

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/DataModel;->layoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/cards/DataModel;->status:I

    return v0
.end method

.method public isOverseaChannel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/DataModel;->isOverseaChannel:Z

    return v0
.end method
