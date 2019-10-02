.class public Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "GalleryFoldersFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;


# static fields
.field private static final SECOND_FOLDER:I = 0x2

.field private static final SORT_TYPE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final SORT_TYPE_NAME:Ljava/lang/String; = "NAME"

.field private static final SORT_TYPE_SIZE:Ljava/lang/String; = "SIZE"

.field private static final SORT_TYPE_TIME:Ljava/lang/String; = "TIME"

.field private static final SPLIT_SYMBOL:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "GalleryFoldersFragment"


# instance fields
.field private mData:Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

.field private mDataHasChange:Z

.field private mFrom:I

.field private mGalleryItemDecoration:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;

.field private mHasRegisterBroadcast:Z

.field private mHidden:Z

.field private mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

.field private mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mPreFirstVisibleItemPosition:I

.field private mPreOffset:I

.field private mReportVVStart:Z

.field private mRootView:Landroid/view/View;

.field private mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

.field onRefreshClickListener:Landroid/view/View$OnClickListener;

.field private uiEmptyView:Landroid/view/View;

.field private uiLoadingView:Landroid/view/View;

.field private uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHidden:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mReportVVStart:Z

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->onRefreshClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mFrom:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Lcom/miui/video/framework/impl/IActionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiLoadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->reload()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mDataHasChange:Z

    return p1
.end method

.method static synthetic lambda$setPosterPath$10(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortByName$6(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sortByName$7(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sortBySize$8(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortBySize$9(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortByTime$4(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortByTime$5(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private registerObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHasRegisterBroadcast:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->registerObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    return-void
.end method

.method private reload()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPreFirstVisibleItemPosition:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPreFirstVisibleItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPreFirstVisibleItemPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPreOffset:I

    :cond_0
    const-string v0, "com.miui.videoplus.ACTION_REFRESH"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private reportVV(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mReportVVStart:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mReportVVStart:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mReportVVStart:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mReportVVStart:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atPageResume(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sortEntity()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderSortSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "my_video_sort_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "TIME"

    invoke-static {v2, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    aget-object v1, v0, v3

    sget-object v2, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto/16 :goto_0

    :cond_1
    aget-object v0, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto/16 :goto_0

    :cond_2
    aget-object v2, v0, v1

    const-string v4, "NAME"

    invoke-static {v2, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v1, v0, v3

    sget-object v2, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_3
    aget-object v0, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_4
    aget-object v2, v0, v1

    const-string v4, "SIZE"

    invoke-static {v2, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v1, v0, v3

    sget-object v2, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_5
    aget-object v0, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_6
    aget-object v0, v0, v1

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortByDefault()V

    :cond_7
    :goto_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHasRegisterBroadcast:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentSortType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderSortSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "DEFAULT"

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFolderList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mFrom:I

    if-nez v1, :cond_0

    const-string v0, "_all"

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mFrom:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "_video"

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasScrollToTop()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->isScrollToTop()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_recyclerView:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_loading:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiLoadingView:Landroid/view/View;

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v1, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->registerObserver()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v1, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->onRefreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->setOnClickListener(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View$OnClickListener;)V

    const-string v0, "ACTION_SET_VALUE"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->enableStatistics(Z)V

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mRootView:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->unregisterObserver()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->reportVV(Z)V

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mHidden:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onResume()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p3, Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p3}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->isLoadCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiLoadingView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mGalleryItemDecoration:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    const/16 v0, 0xc

    invoke-direct {p1, p2, p3, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;I)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mGalleryItemDecoration:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mGalleryItemDecoration:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    goto :goto_4

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->scrollToTop()V

    goto :goto_4

    :cond_9
    :goto_3
    check-cast p3, Lcom/miui/video/framework/base/entity/PageEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setPageEntity(Lcom/miui/video/framework/base/entity/PageEntity;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->sortEntity()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->setPosterPath(Lcom/miui/video/framework/base/entity/PageEntity;)V

    :cond_a
    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public removeAllVideoFolder()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiLoadingView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mFrom:I

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->getGalleryEntity(I)V

    goto :goto_0

    :cond_1
    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mFrom:I

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->getGalleryEntity(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->uiRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->scrollToTop()V

    :cond_0
    return-void
.end method

.method public setData(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    return-void
.end method

.method public setFragment(Lcom/miui/video/framework/base/entity/PageEntity;Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;",
            "Lcom/miui/video/framework/impl/IActionListener;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mFrom:I

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_gallery_main:I

    return v0
.end method

.method public setPosterPath(Lcom/miui/video/framework/base/entity/PageEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$j4MoQdCFOuZnSQ5g6hW1TpZOxWk;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$j4MoQdCFOuZnSQ5g6hW1TpZOxWk;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setPosterPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setPosterPath(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public sortByDefault()V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getVideoGalleryList2()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    return-void
.end method

.method public sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getFolderList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$DxxkfCo4h3OkNvhhA6lYXDElPiU;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$DxxkfCo4h3OkNvhhA6lYXDElPiU;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->removeAllVideoFolder()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getFolderList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$nnXCTkKunzWQR2MfyirV0OE3q3M;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$nnXCTkKunzWQR2MfyirV0OE3q3M;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$iZFrnqG8eoLIO1dOwJ42UHa_8Bw;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$iZFrnqG8eoLIO1dOwJ42UHa_8Bw;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->removeAllVideoFolder()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->getFolderList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$2-wXw9B-EkD2-gg93jxu9dD-R9M;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$2-wXw9B-EkD2-gg93jxu9dD-R9M;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$vAlJhBTGpumYAB-Uj-bdShg7syg;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$vAlJhBTGpumYAB-Uj-bdShg7syg;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->removeAllVideoFolder()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method
