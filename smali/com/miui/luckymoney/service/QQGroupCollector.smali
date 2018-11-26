.class public Lcom/miui/luckymoney/service/QQGroupCollector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final idMaps:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized collect(Landroid/content/Context;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V
    .locals 4

    const-class v1, Lcom/miui/luckymoney/service/QQGroupCollector;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    invoke-direct {v0}, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;-><init>()V

    iget-object v2, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->id:Ljava/lang/String;

    sget-object v2, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v2, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    iput v2, v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->type:I

    iget-object v2, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized findQQGroupByName(Ljava/lang/String;)Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-class v1, Lcom/miui/luckymoney/service/QQGroupCollector;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v6

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    iget-object v4, v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_3
    monitor-exit v1

    return-object v6
.end method
