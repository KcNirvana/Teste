.class public Lcom/miui/video/biz/videoplus/app/widget/UISortComView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISortComView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;


# static fields
.field public static final SORT_TYPE_DEFAULT:Ljava/lang/String;


# instance fields
.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mListener:Lcom/miui/video/framework/impl/IUIListener;

.field private nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

.field private sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

.field private timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TIME"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->SORT_TYPE_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sortByName$27(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$sortBySize$26(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I
    .locals 8

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p0, v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-lez p0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide p0

    cmp-long p0, v4, p0

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p0, v0, :cond_5

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_5
    return v3
.end method

.method static synthetic lambda$sortByTime$28(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I
    .locals 8

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-lez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v4

    cmp-long p0, p0, v4

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p0, v0, :cond_5

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-lez p0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v4

    cmp-long p0, p0, v4

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v3
.end method

.method private statisticAndStoreSortType(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFileSortTypeClicked(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderSortSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentSortType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderSortSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->SORT_TYPE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_sort_com:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort1:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort2:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_sort3:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    return-void
.end method

.method public initSortType(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->getCurrentSortType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "TIME"

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    aget-object p1, p1, v2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_1
    aget-object v1, p1, v0

    const-string v3, "NAME"

    invoke-static {v1, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object p1, p1, v2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_3
    aget-object v0, p1, v0

    const-string v1, "SIZE"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget-object p1, p1, v2

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public initViewsEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_sort_type_size:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Landroid/view/View;ZLcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->resetNone()V

    invoke-virtual {p0, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->resetNone()V

    invoke-virtual {p0, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sizeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->timeSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->resetNone()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->nameSortView:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->resetNone()V

    invoke-virtual {p0, p3, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    const-string p2, "com.miui.videoplus.KEY_UI_SHOW"

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setUIListener(Lcom/miui/video/framework/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mListener:Lcom/miui/video/framework/impl/IUIListener;

    return-void
.end method

.method public sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
    .locals 1

    const-string v0, "NAME"

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$S9NUa4_G_TNYj8VwRTEhqVGSFRw;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$S9NUa4_G_TNYj8VwRTEhqVGSFRw;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
    .locals 1

    const-string v0, "SIZE"

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$c5bucTxw1RI5RhNOMR8IJNzj7dM;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$c5bucTxw1RI5RhNOMR8IJNzj7dM;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
    .locals 1

    const-string v0, "TIME"

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->buildValue(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->statisticAndStoreSortType(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$iyvhj469_LqzFTUyinQesFhQNJs;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$iyvhj469_LqzFTUyinQesFhQNJs;-><init>(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
