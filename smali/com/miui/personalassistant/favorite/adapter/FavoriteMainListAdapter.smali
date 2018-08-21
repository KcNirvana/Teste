.class public Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteMainListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;,
        Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;,
        Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteMainListAdapter"


# instance fields
.field public isEditing:Z

.field private mCheckBoxState:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnableLongPress:Z

.field private mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;Ljava/lang/String;)V
    .locals 4

    const v3, 0x1b020167

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    iput-boolean v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mEnableLongPress:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    iput-object p3, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mType:Ljava/lang/String;

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;)Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iput-boolean v4, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v5, v3}, Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;->updateUIToTip(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public delete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iput-boolean v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;->updateUIToTip(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCheckedData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_6

    iget-object v7, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1b040093

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;

    invoke-direct {v2, p0, p2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v7, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v7, v4

    if-lez v7, :cond_7

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_0
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "null"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_1
    const-string/jumbo v5, ""

    :goto_2
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "null"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_2
    const-string/jumbo v0, ""

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-boolean v7, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    if-eqz v7, :cond_c

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/CheckBox;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/CheckBox;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/CheckBox;

    move-result-object v7

    new-instance v8, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;

    invoke-direct {v8, p0, p1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    new-instance v7, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v3, v8}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;ILcom/miui/personalassistant/favorite/module/FavoriteRecord;Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$1;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v7, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mEnableLongPress:Z

    if-eqz v7, :cond_5

    new-instance v7, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;

    invoke-direct {v7, p0, p1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$MyOnLongClickLisener;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_5
    return-object p2

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "FavoriteMainListAdapter"

    const-string/jumbo v8, "UnsupportedEncodingException"

    invoke-static {v7, v8, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/personalassistant/util/TimeUtil;->getTimeIntervalString(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;->access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter$EntryHolder;)Landroid/widget/CheckBox;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onCheckBoxClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p1, :cond_0

    const v0, 0x1b090242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->updateMenu()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public selectAllCheckbox(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mEnableLongPress:Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public update(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public updateMenu()V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mCheckBoxState:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getFavourite()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;->updateMenu(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->mIFavoriteMain:Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;->updateMenu(Z)V

    goto :goto_0
.end method
