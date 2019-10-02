.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UIImageTitleRawDoor.java"


# instance fields
.field private mFrom:I

.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private vImage:Landroid/widget/ImageView;

.field private vRightImg:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_image_title_raw_door:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method private gotoFolder(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mFrom:I

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v2, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    sget v3, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v4, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v2, "FolderFragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "FolderFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private gotoFolderHiden(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mFrom:I

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v2, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    sget v3, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_in:I

    sget v4, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v2, "FolderFragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "FolderFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static synthetic lambda$onUIRefresh$45(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "2"

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordEnterFolderLocal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolderType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showHideVideoCheckDialog(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->gotoFolder(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_right_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vRightImg:Landroid/widget/TextView;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getBaseId()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolderType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vRightImg:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vRightImg:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->vView:Landroid/view/View;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIImageTitleRawDoor$MLg8kKiOYv0IsyZdc4hrX0F0_Xk;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIImageTitleRawDoor$MLg8kKiOYv0IsyZdc4hrX0F0_Xk;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "KEY_CHECK_SUCCESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->gotoFolderHiden(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    :cond_0
    return-void
.end method

.method public setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->mFrom:I

    return-void
.end method
