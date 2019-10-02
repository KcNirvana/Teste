.class public Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "FolderFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IEditModeCheckedAction;


# static fields
.field public static final KEY_HIDE_GUID:I = 0x5

.field public static MESSAGE_DELAY_4MINUTES:J = 0xfa0L

.field public static final TAG:Ljava/lang/String; = "FolderFragment"


# instance fields
.field private GRID_COUNTS_PER_SCREEN:I

.field private GRID_COUNTS_PER_SCREENRECORDS:I

.field private LIST_COUNTS_PER_SCREEN:I

.field private isItemClickable:Z

.field private mCheckedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mFrom:I

.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

.field private mListener:Lcom/miui/video/framework/impl/IUIListener;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMode:Ljava/lang/String;

.field private mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

.field private pageName:Ljava/lang/String;

.field private pictureCount:I

.field private uiEmptyView:Landroid/view/View;

.field private uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

.field private uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

.field private vAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

.field private vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

.field private vUISortComView:Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

.field private videoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->GRID_COUNTS_PER_SCREEN:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->LIST_COUNTS_PER_SCREEN:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->GRID_COUNTS_PER_SCREENRECORDS:I

    const-string v0, "KEY_EDIT_MODE_EXIT"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isItemClickable:Z

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$5;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$6;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getPositionInList(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/framework/impl/IUIListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

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

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

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

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$plurals;->plus_serval_pictures:I

    iget v6, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

    new-array v7, v2, [Ljava/lang/Object;

    iget v8, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pictureCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$plurals;->plus_serval_videos:I

    iget v6, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->videoCount:I

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

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

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

.method private initSortType()V
    .locals 8

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArrayModeSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->values()[Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    const/16 v2, 0xe

    const/16 v3, 0xf

    const/4 v4, 0x4

    const/16 v5, 0xb

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v5, :cond_3

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_showtype_list:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setRightImageSrc(I)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v4, :cond_7

    invoke-virtual {v1, v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    if-ne v6, v2, :cond_6

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_showtype_grid:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setRightImageSrc(I)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    :cond_9
    :goto_4
    return-void
.end method

.method private isContainsBottomText()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

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

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic lambda$initViewsEvent$40(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method public static synthetic lambda$initViewsValue$39(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    const/16 v0, 0xf

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$2ciLLZ2JHi04qaRIfaFzJ4FlxOU;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$2ciLLZ2JHi04qaRIfaFzJ4FlxOU;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    if-ne v0, p2, :cond_1

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$2;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$BDrtibBd5TtWrCsW6g4j8SV726Y;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$BDrtibBd5TtWrCsW6g4j8SV726Y;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p2, :cond_2

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$3;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$fbC4j1rxKPbWZ92-qi5KX90ySuQ;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$fbC4j1rxKPbWZ92-qi5KX90ySuQ;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-ne v0, p2, :cond_3

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$ZZgnPqIs3dvWD6sG55ErR_cQJ_Y;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$ZZgnPqIs3dvWD6sG55ErR_cQJ_Y;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->setUILongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    return-object p2
.end method

.method public static synthetic lambda$null$35(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->getAdapterPosition()I

    move-result p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterThreeColumn;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterThreeColumn;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$36(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

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

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$37(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->getAdapterPosition()I

    move-result p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$38(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->getAdapterPosition()I

    move-result p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic lambda$null$42(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->notifyMediaChange()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    const-string v0, "KEY_EDIT_MODE_EXIT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onUIRefresh$41(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setSortType()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordChangeArrayInFolderLocal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordChangeArrayInFolderLocal(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArrayModeSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V

    return-void
.end method

.method public static synthetic lambda$onUIRefresh$43(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$7wI6abmrxOMGE7SE9kK5OghIe9g;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$7wI6abmrxOMGE7SE9kK5OghIe9g;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    invoke-static {v1, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->delete(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    return-void
.end method

.method private needContainsBottomText()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f55\u5c4f"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->GRID_COUNTS_PER_SCREENRECORDS:I

    if-le v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->GRID_COUNTS_PER_SCREEN:I

    if-le v0, v1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->LIST_COUNTS_PER_SCREEN:I

    if-le v0, v1, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public static newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;-><init>()V

    return-object v0
.end method

.method private notifyActivityExecEditMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEditInFolderLocal()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V

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

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->needContainsBottomText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isContainsBottomText()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->addBottomText(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isContainsBottomText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->removeBottomText()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSortType()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    const/16 v2, 0xf

    const/16 v3, 0xe

    const/16 v4, 0xb

    const/4 v5, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v5, :cond_1

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    if-ne v6, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_showtype_grid:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setRightImageSrc(I)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    if-ne v6, v4, :cond_5

    invoke-virtual {v1, v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v6

    if-ne v6, v2, :cond_4

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v1, v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_gallery_showtype_list:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setRightImageSrc(I)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->performBottomText()V

    return-void
.end method

.method private startShow(ILandroid/graphics/Bitmap;Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isItemClickable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isItemClickable:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getFlag()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    const-string v1, "\u5168\u90e8\u89c6\u9891"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "6"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u62cd\u6444"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "7"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u4e0b\u8f7d"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "8"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "\u5f55\u5c4f"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "9"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "\u5fae\u4fe1"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "13"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getFlag()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    const-string v1, "14"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getFlag()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    const-string v1, "15"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    :cond_8
    :goto_0
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setTransAnimBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setPositionProvider(Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLocalMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isContainsBottomText()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_b
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCurrPageList(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getCheckMediaEntityList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCheckList(Ljava/util/List;)V

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    xor-int/lit8 v1, p3, 0x1

    invoke-static {p2, p1, v1, v0, p3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->createIntent(Landroid/content/Context;IZZZ)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_c
    if-ltz p1, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_d

    goto :goto_3

    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_e

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsHidded()Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/router/ServiceHolder;->getLocalPlayerService()Lcom/miui/video/base/routers/localplayer/LocalPlayerService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v7, Lcom/miui/video/base/statistics/StatisticsConstant;->sPlayFrom:Ljava/lang/String;

    const/16 v8, 0x64

    invoke-interface/range {v3 .. v8}, Lcom/miui/video/base/routers/localplayer/LocalPlayerService;->startLocalPlayerActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isItemClickable:Z

    return-void

    :cond_f
    :goto_3
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderFragment_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_appbar_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_recyclerView:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiEmptyView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit_topbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort_com_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vUISortComView:Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_tab_gallery:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$NK1FxEW1idEZlbmgxn_8wz84_Z4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$NK1FxEW1idEZlbmgxn_8wz84_Z4;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setBackTextAndListener(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$7;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$7;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setCancelListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->isFirstAccessFolder()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vUISortComView:Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->getCurrentSortType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->SORT_TYPE_DEFAULT:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vUISortComView:Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->setUIListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vUISortComView:Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->initSortType(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vUISortComView:Lcom/miui/video/biz/videoplus/app/widget/UISortComView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$bTMrD6QCMZ_EYGhA1UVpzZX1U4Y;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$bTMrD6QCMZ_EYGhA1UVpzZX1U4Y;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xc

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public isScrollTop()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

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

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isItemClickable:Z

    const/16 p3, 0x64

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->HIGH:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/Glide;->setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getGalleryEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->pageName:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getFolderFrom()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mFrom:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    instance-of p3, p3, Lcom/miui/video/framework/impl/IDestoryListener;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/miui/video/framework/impl/IDestoryListener;

    invoke-interface {p3}, Lcom/miui/video/framework/impl/IDestoryListener;->isDestroy()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    if-eq p2, v0, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setGuidShow(Z)V

    goto/16 :goto_7

    :cond_2
    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_10

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolderType()I

    move-result p1

    if-eq p1, p3, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isHidded()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_b
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setTitleTextAndListener(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mFrom:I

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v2}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setRightImgListener(ILandroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    goto :goto_3

    :cond_c
    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mFrom:I

    if-ne p1, p3, :cond_e

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->isFirstAccessFolder()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setGuidShow(Z)V

    sget-wide p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->MESSAGE_DELAY_4MINUTES:J

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->runUIMessage(IJ)V

    :cond_d
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->initSortType()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiFolderTitleBar:Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$YXoH_Y1TPnRSKI7LYAeNIa1GRS4;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$YXoH_Y1TPnRSKI7LYAeNIa1GRS4;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    invoke-virtual {p1, v1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setRightImgListener(ILandroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;

    :cond_e
    :goto_3
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->performBottomText()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    goto/16 :goto_7

    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->uiEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    goto/16 :goto_7

    :cond_10
    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_11
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_6

    :cond_12
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p3

    if-eqz p3, :cond_13

    invoke-virtual {p2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    goto :goto_5

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_14
    const-string p1, "com.miui.videoplus.KEY_UI_SHOW"

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->notifyActivityExecEditMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    const-string p1, "KEY_EDIT_MODE_EXIT"

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    goto :goto_7

    :cond_15
    :goto_6
    return-void

    :cond_16
    const-string p2, "KEY_EDIT_EVENT_SHARE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFolderEnterShare()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mCheckedItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getIndex()I

    move-result p1

    invoke-direct {p0, p1, v2, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->startShow(ILandroid/graphics/Bitmap;Z)V

    goto :goto_7

    :cond_17
    const-string p2, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFolderEnterDelete()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->plus_deleting_wait:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$5yFqGh-5DhJyBlwdpXEEUORyIx8;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$5yFqGh-5DhJyBlwdpXEEUORyIx8;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_18
    :goto_7
    return-void

    :cond_19
    :goto_8
    return-void
.end method

.method public removeBottomText()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

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

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->vRecyclerView:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->scrollToTop()V

    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_gallery_folder:I

    return v0
.end method
