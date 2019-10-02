.class public Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;
.super Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
.source "AllDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider<",
        "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->queryAllCount()J

    move-result-wide v0

    return-wide v0
.end method

.method protected startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->clear()V

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadVideoByDayAndLocation()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadVideoByDayAndLocation()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadVideoByMonthAndLocation()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->loadVideoByYearAndLocation()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->transferToMomentEntityForAll(Ljava/util/List;II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

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

.method protected bridge synthetic startLoad(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;->startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    return-object p1
.end method
