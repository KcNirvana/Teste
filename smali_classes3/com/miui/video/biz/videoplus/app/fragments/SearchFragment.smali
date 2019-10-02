.class public Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "SearchFragment.java"


# static fields
.field public static final ACTION_SEARCH_KEY:I = 0x1

.field public static final DELAYMILLIS_600:I = 0x258

.field public static final KEY_CLEAR_SEARCH_LIST:Ljava/lang/String; = "KEY_CLEAR_SEARCH_LIST"

.field public static final KEY_SEARCH_KEY:Ljava/lang/String; = "KEY_SEARCH_KEY"

.field public static final KEY_SEARCH_KEY_NOW:Ljava/lang/String; = "KEY_SEARCH_KEY_NOW"

.field public static final KEY_SHOW_UI:Ljava/lang/String; = "KEY_SHOW_UI"

.field private static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field private isItemClickable:Z

.field private mData:Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;

.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mHasRegisterBroadcast:Z

.field private mLastSearchKey:Ljava/lang/String;

.field private mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

.field private mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

.field private mQueryId:Ljava/lang/String;

.field private uiSearchBar:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

.field private uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

.field private vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

.field private vShowPage:Landroid/view/View;

.field private vTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isItemClickable:Z

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$6;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getPositionInList(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiSearchBar:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLastSearchKey:Ljava/lang/String;

    return-object p0
.end method

.method private createResultTitle(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setResult(I)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setMsg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private getPositionInList(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

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

.method private isContainsTopText()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$initFindViews$81(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$sk7arkWOcSVLcuWb3o39LSW172k;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$sk7arkWOcSVLcuWb3o39LSW172k;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne v0, p2, :cond_1

    new-instance p2, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$2;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$JZfmdzyokAqO_Mfjx63SU4QFHYI;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$JZfmdzyokAqO_Mfjx63SU4QFHYI;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static synthetic lambda$null$79(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->getAdapterPosition()I

    move-result p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->startShow(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$null$80(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->getAdapterPosition()I

    move-result p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->startShow(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private registerObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mHasRegisterBroadcast:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->registerObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    return-void
.end method

.method private startShow(ILandroid/graphics/Bitmap;)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isItemClickable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "12"

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isItemClickable:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mQueryId:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLastSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSearchResultClickLocal(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setTransAnimBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setPositionProvider(Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLocalMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isContainsTopText()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCurrPageList(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/miui/video/biz/videoplus/router/ServiceHolder;->getLocalPlayerService()Lcom/miui/video/base/routers/localplayer/LocalPlayerService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v6, "17"

    const/16 v7, 0x64

    invoke-interface/range {v2 .. v7}, Lcom/miui/video/base/routers/localplayer/LocalPlayerService;->startLocalPlayerActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isItemClickable:Z

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mHasRegisterBroadcast:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89c6\u9891+\u641c\u7d22"

    return-object v0
.end method

.method public initFindViews()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_searchbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiSearchBar:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_recyclerView:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_search_startpage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vShowPage:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vShowPage:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->v_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {v0, v1, v3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v1, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vShowPage:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiSearchBar:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->showSoftInputFromWindow(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    new-instance v3, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$L3YE_kugG52FPZUPtlYg19JQjPU;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$L3YE_kugG52FPZUPtlYg19JQjPU;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V

    invoke-direct {v1, v3}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x3

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string v0, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->initViewsEvent()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiSearchBar:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$4;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->setLeftImageListener(Landroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiSearchBar:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->setEdit(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->registerObserver()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isItemClickable:Z

    const/16 p2, 0x64

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_6

    const-string p1, "KEY_SHOW_UI"

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->unregisterObserver()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p1, "KEY_SEARCH_KEY_NOW"

    invoke-virtual {p0, p1, v1, p3}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    const-string p2, "KEY_SEARCH_KEY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_9

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLastSearchKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLastSearchKey:Ljava/lang/String;

    const-string p3, "1"

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSearchLocal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLastSearchKey:Ljava/lang/String;

    const-string p3, "2"

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSearchLocal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "KEY_SHOW_UI"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-string p2, "KEY_SHOW_UI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mQueryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSearchResultShowLocal(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mLastSearchKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->createResultTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vTextView:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->plus_search_result_empty:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vShowPage:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    return-void

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    const-string p2, "KEY_SEARCH_KEY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->removeUIMessages(I)V

    const-wide/16 p1, 0x258

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->runUIMessage(ILjava/lang/Object;J)V

    goto :goto_0

    :cond_0
    const-string p2, "KEY_SEARCH_KEY_NOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->removeUIMessages(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getImeiId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getImeiMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mQueryId:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->mData:Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->getSearchEntity(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "KEY_CLEAR_SEARCH_LIST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->removeUIMessages(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vTextView:Landroid/widget/TextView;

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->plus_search_guide:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->vShowPage:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_search:I

    return v0
.end method
