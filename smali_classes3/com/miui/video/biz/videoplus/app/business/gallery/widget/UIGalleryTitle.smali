.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UIGalleryTitle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mListener:Lcom/miui/video/framework/impl/IUIListener;

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

.field private vSort:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_gallery_title:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$46(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFolderSortClicked()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getPageEntity()Lcom/miui/video/framework/base/entity/PageEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showSortTypeChooseDialog(Landroid/content/Context;Lcom/miui/video/framework/base/entity/PageEntity;Lcom/miui/video/framework/impl/IUIListener;Z)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vSort:Landroid/widget/TextView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vSort:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryTitle$_TV_l3FmXhr8267-NFNlBnb2JcI;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryTitle$_TV_l3FmXhr8267-NFNlBnb2JcI;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vSort:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_title:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->plus_mine_videos:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vSort:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFolderSortView()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->vSort:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUIListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method
