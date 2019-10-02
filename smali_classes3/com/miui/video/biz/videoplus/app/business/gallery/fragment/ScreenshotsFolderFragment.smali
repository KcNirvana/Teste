.class public Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "ScreenshotsFolderFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IEditModeCheckedAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;
    }
.end annotation


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final FROM:Ljava/lang/String; = "from"

.field public static final KEY_HIDE_GUID:I = 0x5

.field public static final TAG:Ljava/lang/String; = "ScreenshotsFolderFragment"


# instance fields
.field private GRID_COUNTS_PER_SCREEN:I

.field private LIST_COUNTS_PER_SCREEN:I

.field private mCheckedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mListener:Lcom/miui/video/framework/impl/IUIListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMode:Ljava/lang/String;

.field private mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

.field private mRootView:Landroid/view/View;

.field private mScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

.field private mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;

.field private pictureCount:I

.field private uiEmptyView:Landroid/view/View;

.field private uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

.field private vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

.field private videoCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;->FOLDER_SORT_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;

    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->GRID_COUNTS_PER_SCREEN:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->LIST_COUNTS_PER_SCREEN:I

    const-string v0, "KEY_EDIT_MODE_EXIT"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getPositionInList(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Lcom/miui/video/framework/impl/IUIListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-object p0
.end method

.method private addBottomText(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 9

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$plurals;->plus_serval_pictures:I

    iget v6, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    new-array v7, v2, [Ljava/lang/Object;

    iget v8, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->pictureCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$plurals;->plus_serval_videos:I

    iget v6, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->videoCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v0

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private getCheckMediaEntityList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPositionInList(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isContainsBottomText()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic lambda$initViewsValue$22(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$FjOwd_kgDz8Af4NprhU5_Qmt3nw;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$FjOwd_kgDz8Af4NprhU5_Qmt3nw;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$xfojw_dCHDTdixfRNVjMzQLUwzA;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$xfojw_dCHDTdixfRNVjMzQLUwzA;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUILongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-object p2
.end method

.method public static synthetic lambda$null$20(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->getAdapterPosition()I

    move-result p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/UIGalleryPosterThreeColumn;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/UIGalleryPosterThreeColumn;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$21(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$null$23(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->notifyMediaChange()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    const-string v0, "KEY_EDIT_MODE_EXIT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onUIRefresh$24(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$-jgRmenyfQxIlFj-EOLJhhL6ST8;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$-jgRmenyfQxIlFj-EOLJhhL6ST8;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V

    invoke-static {v1, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->delete(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    return-void
.end method

.method private needContainsBottomText()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;->FOLDER_SORT_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$SortType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->GRID_COUNTS_PER_SCREEN:I

    if-le v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->LIST_COUNTS_PER_SCREEN:I

    if-le v0, v1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public static newInstance(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;I)Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "from"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private notifyActivityExecEditMode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyMediaChange()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->DELETE:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method private performBottomText()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->needContainsBottomText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->isContainsBottomText()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->addBottomText(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->isContainsBottomText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->removeBottomText()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startShow(ILandroid/graphics/Bitmap;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setTransAnimBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setPositionProvider(Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLocalMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->isContainsBottomText()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCurrPageList(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getCheckMediaEntityList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCheckList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    xor-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1, p3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->createIntent(Landroid/content/Context;IZZZ)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenshotsFolderFragment_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_recyclerView:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiEmptyView:Landroid/view/View;

    return-void
.end method

.method public initViewsValue()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$ms2qOrd8nG9KxSy7KYvLPmjM2ak;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$ms2qOrd8nG9KxSy7KYvLPmjM2ak;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string v0, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public isScrollTop()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->isScrollToTop()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->enableStatistics(Z)V

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->HIGH:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/Glide;->setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mRootView:Landroid/view/View;

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5168\u90e8"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5176\u5b83"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/video/framework/impl/IDestoryListener;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/video/framework/impl/IDestoryListener;

    invoke-interface {p2}, Lcom/miui/video/framework/impl/IDestoryListener;->isDestroy()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_b

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolderType()I

    move-result p1

    if-eq p1, p3, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_4
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_7
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->performBottomText()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    goto/16 :goto_4

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->uiEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_b
    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    goto :goto_3

    :cond_e
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    const-string p1, "KEY_EDIT_MODE_EXIT"

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    goto :goto_4

    :cond_10
    const-string p2, "KEY_EDIT_EVENT_SHARE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getIndex()I

    move-result p1

    invoke-direct {p0, p1, v0, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    goto :goto_4

    :cond_11
    const-string p2, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->plus_deleting_wait:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$-fi6-3ofxbob-4sc7jwm3U9L9fc;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFolderFragment$-fi6-3ofxbob-4sc7jwm3U9L9fc;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_12
    :goto_4
    return-void

    :cond_13
    :goto_5
    return-void
.end method

.method public removeBottomText()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->scrollToTop()V

    goto :goto_0

    :cond_0
    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method public setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_screenshots_folder:I

    return v0
.end method

.method public setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
