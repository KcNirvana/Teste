.class public Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISortDialog.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;


# instance fields
.field private GalleryFolderEntity:Ljava/lang/Object;

.field private hasClicked:Z

.field private mContext:Landroid/content/Context;

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

.field private mSortType:Ljava/lang/String;

.field public onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private vDefault:Landroid/view/View;

.field private vDefaultText:Landroid/widget/TextView;

.field private vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

.field private vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

.field private vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog$1;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->hasClicked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mSortType:Ljava/lang/String;

    return-object p0
.end method

.method private buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$initViewsEvent$67(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefault:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefault:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefaultText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->sortByDefault()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const-string v1, "ACTION_SET_VALUE"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sortByName$70(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sortByName$71(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShownTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sortBySize$72(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortBySize$73(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getSize()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortByTime$68(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortByTime$69(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private statisticAndStoreSortType(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mSortType:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->hasClicked:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderSortSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p2

    const-string v0, "my_video_sort_key"

    invoke-virtual {p2, v0, p1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

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

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

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

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_dialog_sort:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort_time:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort_size:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort_default:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefault:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_text_default:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefaultText:Landroid/widget/TextView;

    return-void
.end method

.method public initSortType()V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderSortSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "my_video_sort_key"

    const-string v2, "DEFAULT"

    sget-object v3, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-direct {p0, v2, v3}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "TIME"

    invoke-static {v2, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    aget-object v1, v0, v3

    sget-object v2, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto/16 :goto_0

    :cond_0
    aget-object v0, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto/16 :goto_0

    :cond_1
    aget-object v2, v0, v1

    const-string v4, "NAME"

    invoke-static {v2, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v1, v0, v3

    sget-object v2, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_2
    aget-object v0, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_3
    aget-object v2, v0, v1

    const-string v4, "SIZE"

    invoke-static {v2, v4}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v1, v0, v3

    sget-object v2, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_4
    aget-object v0, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_5
    aget-object v0, v0, v1

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefault:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefaultText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefault:Landroid/view/View;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$Jp0KulPWSA5v5khT_1cAhter3es;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$Jp0KulPWSA5v5khT_1cAhter3es;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_size:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefaultText:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCallback(Landroid/view/View;ZLcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getPageEntity()Lcom/miui/video/framework/base/entity/PageEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefault:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vDefaultText:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    invoke-virtual {p0, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    invoke-virtual {p0, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vSize:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vTime:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->vName:Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    invoke-virtual {p0, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const-string p2, "ACTION_SET_VALUE"

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-interface {p1, p2, v1, p3}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setData(Lcom/miui/video/framework/base/entity/PageEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    return-void
.end method

.method public setUIListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method public sortByDefault()V
    .locals 2

    const-string v0, "DEFAULT"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getVideoGalleryList2()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    return-void
.end method

.method public sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
    .locals 3

    const-string v0, "NAME"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->getFolderList()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$s_poKgYp628E0SYABwCFAqvk-lU;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$s_poKgYp628E0SYABwCFAqvk-lU;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$0nTBoyOVXub6KzPxHhBGPiszkhM;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$0nTBoyOVXub6KzPxHhBGPiszkhM;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
    .locals 3

    const-string v0, "SIZE"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->getFolderList()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$G6r-TGty-skywdBEVJvvGIYd5Wk;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$G6r-TGty-skywdBEVJvvGIYd5Wk;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$hacUXNPBYZyPcN1sViYQorsFncE;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$hacUXNPBYZyPcN1sViYQorsFncE;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
    .locals 3

    const-string v0, "TIME"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->getFolderList()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$hKGO11eK03vval-hVQBfGI1pC28;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$hKGO11eK03vval-hVQBfGI1pC28;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$d2MDdAUDGNU5GYzwD9UNw-btUiw;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortDialog$d2MDdAUDGNU5GYzwD9UNw-btUiw;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_gallery_allvideos:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method
