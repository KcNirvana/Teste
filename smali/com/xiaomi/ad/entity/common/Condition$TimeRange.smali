.class public Lcom/xiaomi/ad/entity/common/Condition$TimeRange;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeRange"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "TimeRange"


# instance fields
.field private endTime:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->endTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->startTime:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeRange"

    return-object v0
.end method

.method public hasValidTime()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->startTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->startTime:J

    iget-wide v2, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->endTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->endTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeMatch()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->startTime:J

    iget-wide v4, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->endTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->startTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/ad/entity/common/Condition$TimeRange;->endTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
