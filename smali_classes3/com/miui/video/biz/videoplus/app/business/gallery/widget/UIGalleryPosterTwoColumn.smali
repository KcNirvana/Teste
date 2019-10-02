.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UIGalleryPosterTwoColumn.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIGalleryPosterTwoColum"


# instance fields
.field private mFrom:I

.field private mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

.field private mlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vSubTitle:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_gallery_poster_two_column:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mlist:Ljava/util/List;

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    return-void
.end method

.method public static synthetic lambda$onUIRefresh$44(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEnterFolderLocal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const-string p2, "Screenshots"

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p2

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mFrom:I

    invoke-virtual {p2, p1, v4, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {p2, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v5, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v1, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v1, "ScreenshotsFragment"

    invoke-virtual {p1, v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "ScreenshotsFragment"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string p2, "ScreenRecorder"

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/utils/JavaUtils;->deepCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mlist:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mlist:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->gallery_folder_alias_screen_recorder:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mlist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v4

    if-ne v4, v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArrayModeSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->values()[Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_8

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArrayModeSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v4, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v5, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {v0, v4, v3, v3, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v4, "FolderFragment"

    invoke-virtual {v0, v3, p1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "FolderFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mFrom:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mlist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mSortType:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mlist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_8

    :cond_a
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mFrom:I

    invoke-virtual {p1, p2, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    goto :goto_9

    :cond_b
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mFrom:I

    invoke-virtual {p2, p1, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v1, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {p2, v0, v3, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v1, "FolderFragment"

    invoke-virtual {p2, v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "FolderFragment"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_9
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_gallery_poster:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPosterPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;)V

    invoke-static {p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;)V

    invoke-static {p2, v0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryPosterTwoColumn$hVSvXxlpHKdP8SEii12Gu7F7ChM;

    invoke-direct {p2, p0, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryPosterTwoColumn$hVSvXxlpHKdP8SEii12Gu7F7ChM;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->mFrom:I

    return-void
.end method
