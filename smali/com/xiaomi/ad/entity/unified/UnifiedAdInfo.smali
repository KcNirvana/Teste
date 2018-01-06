.class public Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;
.super Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;
.source "SourceFile"


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "UnifiedAdInfo"


# instance fields
.field private digest:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private endTimeInMillis:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private extra:Lcom/xiaomi/ad/entity/common/StringHolder;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private materials:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Material;",
            ">;"
        }
    .end annotation
.end field

.field private preload:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private startTimeInMillis:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private tagId:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;-><init>()V

    return-void
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;
    .locals 2

    const-class v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;

    const-string v1, "UnifiedAdInfo"

    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;

    return-object v0
.end method


# virtual methods
.method public getDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->digest:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->endTimeInMillis:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    iget-object v0, v0, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaterialById(J)Lcom/xiaomi/ad/entity/common/Material;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/common/Material;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/ad/entity/common/Material;->getId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getMaterials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Material;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->avoidNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResourceById(JJ)Lcom/xiaomi/ad/entity/common/Material$Resource;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getMaterialById(J)Lcom/xiaomi/ad/entity/common/Material;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getResourceById(JJ)Lcom/xiaomi/ad/entity/common/Material$Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceById(Lcom/xiaomi/ad/entity/common/Material;J)Lcom/xiaomi/ad/entity/common/Material$Resource;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/ad/entity/common/Material;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/common/Material$Resource;

    invoke-virtual {v0}, Lcom/xiaomi/ad/entity/common/Material$Resource;->getId()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-nez v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getStartTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->startTimeInMillis:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UnifiedAdInfo"

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public isInvalid()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getStartTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getEndTimeInMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-boolean v2, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->preload:Z

    if-eqz v2, :cond_2

    cmp-long v2, v8, v4

    if-gez v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    cmp-long v2, v4, v8

    if-gtz v2, :cond_0

    cmp-long v2, v8, v6

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
