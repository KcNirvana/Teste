.class public Lcom/miui/video/common/feed/entity/CoreEntity;
.super Lcom/miui/video/framework/base/ui/BaseUIEntity;
.source "CoreEntity.java"


# instance fields
.field protected logTimes:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logTimes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected target:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field

.field protected targetAddition:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_report"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLogTime()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getLogTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getLogTimes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAddition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->targetAddition:Ljava/util/List;

    return-object v0
.end method

.method public setLogTime(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogTimes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->logTimes:Ljava/util/Map;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetAddition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/CoreEntity;->targetAddition:Ljava/util/List;

    return-void
.end method
