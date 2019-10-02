.class public Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "ScreenshotsFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IEditModeCheckedAction;


# static fields
.field private static final MAX_COUNT_TAB:I = 0x8

.field public static final TAG:Ljava/lang/String; = "ScreenshotsFragment"


# instance fields
.field private defaultPosition:I

.field private galleryFolderEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mFrom:I

.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mHasRegisterBroadcast:Z

.field private mLastPageIndex:I

.field private mListener:Lcom/miui/video/framework/impl/IUIListener;

.field private mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMode:Ljava/lang/String;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPackage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

.field private mRootView:Landroid/view/View;

.field private mSelectedCounts:I

.field private mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mlast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

.field private vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

.field private vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->defaultPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mSelectedCounts:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mlast:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$5;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLastPageIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLastPageIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mSelectedCounts:I

    return p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->reload()V

    return-void
.end method

.method private createChildFragment()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mlast:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mFrom:I

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->newInstance(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;I)Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->gallery_tab_all:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getGalleryItemEntityList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getGalleryItemEntityList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mFrom:I

    invoke-static {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->newInstance(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;I)Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mlast:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getGalleryItemEntityList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mlast:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mlast:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mFrom:I

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->newInstance(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;I)Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    move-result-object v0

    const-string v1, "\u5176\u4ed6"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$teamAndSortEntity$25(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getItemEntityListSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getItemEntityListSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getItemEntityListSize()I

    move-result p0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getItemEntityListSize()I

    move-result p1

    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;-><init>()V

    return-object v0
.end method

.method private notifyActivityExecEditMode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mHasRegisterBroadcast:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->registerObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    return-void
.end method

.method private reload()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->getFolderGalleryEntity(Ljava/lang/String;)V

    const-string v0, "com.miui.videoplus.ACTION_REFRESH"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private teamAndSortEntity()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->addEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->setAppname(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->addEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$ScreenshotsFragment$MtppNCiwCWvx6Outgw5_G6nC0YE;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/4 v1, 0x7

    if-le v0, v1, :cond_7

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mEntityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mHasRegisterBroadcast:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, ""

    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLastPageIndex:I

    return v0
.end method

.method public getmViews()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit_topbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    return-void
.end method

.method public initViewsEvent()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_tab_gallery:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setBackTextAndListener(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setCancelListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->registerObserver()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "tab_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "GalleryFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "channel_position"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->defaultPosition:I

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->defaultPosition:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mLastPageIndex:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->createChildFragment()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->notifyDataSetChanged()V

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->defaultPosition:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->defaultPosition:I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->defaultPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setCurrentItem(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setTitleTextAndListener(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->HIGH:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/Glide;->setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getGalleryEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->setTitle(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getFolderFrom()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mFrom:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->list:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->teamAndSortEntity()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mRootView:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->unregisterObserver()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onStart()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    const-string v0, "com.miui.videoplus.ACTION_REFRESH"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 8

    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mMode:Ljava/lang/String;

    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    const-string p1, "KEY_EDIT_MODE_EXIT"

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setEditMode(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setDispatchClickListener(Z)V

    goto/16 :goto_3

    :cond_2
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setEditMode(Z)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setDispatchClickListener(Z)V

    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-direct {p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mMode:Ljava/lang/String;

    goto/16 :goto_3

    :cond_3
    const-string p2, "KEY_EDIT_MODE_CHECKED_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mSelectedCounts:I

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const-string p2, "KEY_EDIT_MODE_CHECKED_CHANGE"

    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mSelectedCounts:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, v1, p3}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_top_titletext:I

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mSelectedCounts:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mSelectedCounts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p2, p3, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_d

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p3, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p2, p3, v1, v2}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_9
    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->galleryFolderEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->galleryFolderEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->galleryFolderEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mFrom:I

    const/4 v1, 0x3

    invoke-virtual {p1, p2, p3, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_d

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->galleryFolderEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->addList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x5f

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mPackage:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_c
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    const/16 p3, 0x9

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string v1, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p2, v1, v0, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;->hasScrollToTop()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_screenshots:I

    return v0
.end method
