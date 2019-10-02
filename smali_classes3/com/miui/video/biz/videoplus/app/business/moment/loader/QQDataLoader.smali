.class public Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;
.super Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
.source "QQDataLoader.java"


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
    .locals 7

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/Tencent/QQ_Images"

    const-string v2, "/Tencent/MobileQQ/photo"

    const-string v3, "/tencent/QQ_Images"

    const-string v4, "/tencent/MobileQQ/photo"

    const-string v5, "/Tencent/QQfile_recv"

    const-string v6, "/tencent/QQfile_recv"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryAllCountWhereOrDirectory([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/Tencent/QQ_Images"

    const-string v2, "/Tencent/MobileQQ/photo"

    const-string v3, "/tencent/QQ_Images"

    const-string v4, "/tencent/MobileQQ/photo"

    const-string v5, "/Tencent/QQfile_recv"

    const-string v6, "/tencent/QQfile_recv"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryAllWhereOrDirectory([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->transferToMomentEntityForAll(Ljava/util/List;II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic startLoad(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;->startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    return-object p1
.end method
