.class public abstract Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
.super Ljava/lang/Object;
.source "BaseLocalDataProvider.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;"
    }
.end annotation


# static fields
.field protected static DIMENSION_INFO:[[I = null

.field public static final MAX_DIMENSION:I = 0x1

.field public static final TYPE_DAY:I = 0x3

.field public static final TYPE_MONTH:I = 0x2

.field public static final TYPE_YEAR:I = 0x1


# instance fields
.field protected mDataGroup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mIndex:I

.field protected mListener:Lcom/miui/video/framework/impl/IUIListener;

.field private mStartLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mDataGroup:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mDataGroup:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mStartLoad:Z

    return p1
.end method

.method private recordStatic()V
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordChangeShowrangeLocal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordChangeShowrangeLocal(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canZoomIn()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sget-object v2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canZoomOut()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mDataGroup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public abstract getCount()J
.end method

.method public getData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mDataGroup:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getListener()Lcom/miui/video/framework/impl/IUIListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-object v0
.end method

.method public getTimeDimension()I
    .locals 2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isBottomLevel()Z
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTopLevel()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadData()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mStartLoad:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mStartLoad:Z

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getNetworkThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    return-object p1
.end method

.method public setListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method protected abstract startLoad(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public zoomIn()Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->recordStatic()V

    return-object p0
.end method

.method public zoomOut()Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->recordStatic()V

    return-object p0
.end method
