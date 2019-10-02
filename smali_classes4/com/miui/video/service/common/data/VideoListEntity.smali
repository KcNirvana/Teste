.class public Lcom/miui/video/service/common/data/VideoListEntity;
.super Lcom/miui/video/framework/base/entity/PageEntity;
.source "VideoListEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/framework/base/entity/PageEntity<",
        "Lcom/miui/video/base/database/VideoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/PageEntity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public initTimeLine()V
    .locals 13

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v3, v0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v5, v0, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/database/VideoEntity;

    iput-boolean v2, v5, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " today ==  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/miui/video/common/library/utils/TimeStringUtils;->longToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    const/4 v7, -0x1

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " yesToday ==  "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/miui/video/common/library/utils/TimeStringUtils;->longToDate(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    const/4 v7, -0x6

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " thisWeek ==  "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/miui/video/common/library/utils/TimeStringUtils;->longToDate(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    cmp-long v0, v3, v7

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    iput-boolean v1, v0, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/service/R$string;->Earlier:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    return-void

    :cond_4
    cmp-long v0, v3, v9

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    iput-boolean v1, v0, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$string;->This_week:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v3, v2, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_5

    iput-boolean v1, v2, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$string;->Earlier:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    :cond_6
    return-void

    :cond_7
    cmp-long v0, v3, v5

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    iput-boolean v1, v0, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/video/service/R$string;->Yesterday:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v11, v3, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v4, v11, v9

    if-gez v4, :cond_8

    iput-boolean v1, v3, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/miui/video/service/R$string;->This_week:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v11, v3, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v4, v11, v7

    if-gez v4, :cond_a

    iput-boolean v1, v3, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/miui/video/service/R$string;->Earlier:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    iput-boolean v1, v0, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/VideoEntity;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$string;->Today:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v3, v2, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    iput-boolean v1, v2, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/miui/video/service/R$string;->Yesterday:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v3, v2, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v3, v3, v9

    if-gez v3, :cond_e

    iput-boolean v1, v2, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/miui/video/service/R$string;->This_week:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/VideoEntity;

    iget-wide v3, v2, Lcom/miui/video/base/database/VideoEntity;->lastPlayTime:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_10

    iput-boolean v1, v2, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$string;->Earlier:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    :cond_11
    return-void

    :cond_12
    :goto_1
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/service/common/data/VideoListEntity;->list:Ljava/util/List;

    return-void
.end method
