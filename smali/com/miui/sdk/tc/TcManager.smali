.class public Lcom/miui/sdk/tc/TcManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TC_TYPE_ALL:I = 0x7

.field public static final TC_TYPE_BILL:I = 0x2

.field public static final TC_TYPE_CALLTIME:I = 0x4

.field public static final TC_TYPE_TRAFFIC:I = 0x1

.field private static sInstance:Lcom/miui/sdk/tc/TcManager;

.field private static sOperatorMap:Ljava/util/HashMap;


# instance fields
.field private final mBlockNumberList:[Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;

.field private mIsCH:Z

.field private mIsInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/sdk/tc/TcManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    const-string/jumbo v1, "CMCC"

    const-string/jumbo v2, "100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    const-string/jumbo v1, "UNICOM"

    const-string/jumbo v2, "200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TELECOM"

    const-string/jumbo v2, "300"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    iput-boolean v2, p0, Lcom/miui/sdk/tc/TcManager;->mIsInited:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    return-void
.end method

.method private declared-synchronized clearBlockNumberList(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/sdk/tc/TcManager;
    .locals 2

    const-class v1, Lcom/miui/sdk/tc/TcManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sInstance:Lcom/miui/sdk/tc/TcManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/sdk/tc/TcManager;

    invoke-direct {v0}, Lcom/miui/sdk/tc/TcManager;-><init>()V

    sput-object v0, Lcom/miui/sdk/tc/TcManager;->sInstance:Lcom/miui/sdk/tc/TcManager;

    :cond_0
    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sInstance:Lcom/miui/sdk/tc/TcManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized isInBlockNumberList(Ljava/lang/String;I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadLib()V
    .locals 1

    const-string/jumbo v0, "tcp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addBlockNumber(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllInstructions(I)Ljava/util/List;
    .locals 3

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getInstructions(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getBrands(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    invoke-static {p1, v0}, Lcom/miui/sdk/tc/TcPlugin;->getBrandsMap(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCities(I)Ljava/util/Map;
    .locals 1

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getCitiesMap(I)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/sdk/tc/TcManager;->getInstructionsMapByType(II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInstructionsByTcType(II)Ljava/util/List;
    .locals 4

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getInstructions(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getInstructionsMapByType(II)Ljava/util/Map;
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getInstructions(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_3

    const-string/jumbo v6, "%s#%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getSendNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "%s#%s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    return-object v4

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getOperators()Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    invoke-static {v0}, Lcom/miui/sdk/tc/TcPlugin;->getCarriesMap(Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getProvinceCodeByCityCode(I)I

    move-result v0

    return v0
.end method

.method public getProvinces()Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    invoke-static {v0}, Lcom/miui/sdk/tc/TcPlugin;->getProvincesMap(Z)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/sdk/tc/DataUsage;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/sdk/tc/TcManager;->getResult(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/sdk/tc/DataUsage;

    move-result-object v0

    return-object v0
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/sdk/tc/DataUsage;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/sdk/tc/TcManager;->getResult(Ljava/lang/String;Ljava/lang/String;II)Lcom/miui/sdk/tc/DataUsage;

    move-result-object v0

    return-object v0
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;II)Lcom/miui/sdk/tc/DataUsage;
    .locals 3

    new-instance v1, Lcom/miui/sdk/tc/DataUsage;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/miui/sdk/tc/DataUsage;-><init>(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p2, p1, v0, p3, p4}, Lcom/miui/sdk/tc/TcPlugin;->getResultByTcType(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "Result"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/sdk/tc/DataUsage;->parse(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/miui/sdk/tc/TcManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput-object p1, p0, Lcom/miui/sdk/tc/TcManager;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/sdk/tc/TcManager;->mIsInited:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/sdk/tc/TcManager;->loadLib()V

    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/miui/sdk/tc/TcPlugin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/sdk/tc/TcManager;->mIsInited:Z

    :cond_0
    invoke-static {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSmsNeedBlock(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/sdk/tc/TcManager;->isSmsNeedBlock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSmsNeedBlock(Ljava/lang/String;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/sdk/tc/TcManager;->isInBlockNumberList(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConfig(Lcom/miui/sdk/tc/UserConfig;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/sdk/tc/TcManager;->setConfig(Lcom/miui/sdk/tc/UserConfig;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public setConfig(Lcom/miui/sdk/tc/UserConfig;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/sdk/tc/TcManager;->setConfig(Lcom/miui/sdk/tc/UserConfig;II)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public setConfig(Lcom/miui/sdk/tc/UserConfig;II)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 3

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/sdk/tc/UserConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/UserConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/sdk/tc/UserConfig;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/sdk/tc/UserConfig;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2, p3}, Lcom/miui/sdk/tc/TcPlugin;->updateByTcType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v0

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/sdk/tc/TcManager;->clearBlockNumberList(I)V

    :cond_1
    return-object v0
.end method

.method public setImsi(Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/sdk/tc/TcPlugin;->setImsi(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public setImsi(Ljava/lang/String;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/sdk/tc/TcPlugin;->setImsi(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public startCorrection()Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/sdk/tc/TcManager;->startCorrection(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public startCorrection(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/miui/sdk/tc/TcManager;->getInstructionsMapByType(II)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    invoke-static {v1, v0, p1}, Lcom/miui/sdk/tc/SmsSender;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v4

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    :cond_3
    if-eqz v3, :cond_4

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    :goto_2
    return-object v0

    :cond_4
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method
