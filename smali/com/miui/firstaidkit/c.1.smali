.class public Lcom/miui/firstaidkit/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ut:Lcom/miui/firstaidkit/c;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/firstaidkit/c;
    .locals 3

    const-class v1, Lcom/miui/firstaidkit/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/firstaidkit/c;->ut:Lcom/miui/firstaidkit/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/firstaidkit/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/firstaidkit/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/firstaidkit/c;->ut:Lcom/miui/firstaidkit/c;

    :cond_0
    sget-object v0, Lcom/miui/firstaidkit/c;->ut:Lcom/miui/firstaidkit/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic vR(Lcom/miui/firstaidkit/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public vP()Z
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Performance"

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Internet"

    invoke-static {v1, v3}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "Operation"

    invoke-static {v3, v5}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "ConsumePower"

    invoke-static {v5, v6}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/firstaidkit/c;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "Other"

    invoke-static {v6, v7}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v2

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v5, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FirstAidKitManualItemManager"

    const-string/jumbo v3, "isFirstAidKitDanger"

    invoke-static {v1, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public vQ(Landroid/os/Handler;Ljava/lang/String;Lcom/miui/firstaidkit/b/a;)V
    .locals 1

    new-instance v0, Lcom/miui/firstaidkit/l;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/miui/firstaidkit/l;-><init>(Lcom/miui/firstaidkit/c;Lcom/miui/firstaidkit/b/a;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method
