.class public Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;
.super Ljava/lang/Object;
.source "PageListStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;,
        Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$Holder;
    }
.end annotation


# instance fields
.field private mCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTransAnimBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    return-object v0
.end method

.method private getPositionProvider()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mProvider:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    return-object v0
.end method

.method private getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mRecycler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mRecycler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public change(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getPositionProvider()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, p1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;->findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_5

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    if-gt v0, p1, :cond_4

    if-lt v3, v1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$dimen;->moment_title_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_5
    instance-of p1, v2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_7

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    if-gt p1, v1, :cond_6

    if-lt v2, v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mCheckList:Ljava/util/List;

    return-void
.end method

.method public findRectInList(I)Landroid/graphics/Rect;
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getPositionProvider()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;->getRect(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method

.method public getCheckList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mCheckList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getTransAnimBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mTransAnimBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCheckList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mCheckList:Ljava/util/List;

    return-void
.end method

.method public setCurrPageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mList:Ljava/util/List;

    return-void
.end method

.method public setPositionProvider(Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mRecycler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTransAnimBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->mTransAnimBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
