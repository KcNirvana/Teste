.class public Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;
.super Ljava/lang/Object;
.source "ScrollPositionRecorder.java"


# instance fields
.field private mLocationEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

.field private mOffset:I

.field private mPosition:I

.field private mView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mOffset:I

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method private static box(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findPos(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;Ljava/util/List;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->getDateDesc(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setDateDesc(Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    move v3, v1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    :goto_3
    move v1, v3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_5
    return v0
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDateInMillis(J)J

    move-result-wide p1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->today:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getYesterdayTimeInMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->yesterday:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getBeforeYesterdayTimeInMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->before_yestoday:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    cmp-long v2, v0, p1

    if-lez v2, :cond_3

    invoke-static {p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getDistanceTimesInDay(JJ)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_3

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getWeekDayString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private getDateDesc(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;I)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, 0x3e8

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr p2, v6

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v0

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v1

    mul-long v1, v1, v4

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide p1

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDay(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-direct {p0, v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->getDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v1

    mul-long v1, v1, v4

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide p1

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDay(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p2, v1

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v0

    mul-long v0, v0, v4

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide p1

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide p1

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide p1

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v3

    :cond_3
    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->box(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calculatePosition(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mLocationEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mLocationEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->findPos(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;Ljava/util/List;I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mOffset:I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mOffset:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mLocationEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    return-void
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    return v0
.end method

.method public needCalculatePosition()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mLocationEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLocationEntity(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mLocationEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    return-void
.end method

.method public setPosition(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mPosition:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->mOffset:I

    return-void
.end method
