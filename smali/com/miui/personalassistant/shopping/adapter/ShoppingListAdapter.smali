.class public Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShoppingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;,
        Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteListAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceStr:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v3, 0x1b020167

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b03d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mSourceStr:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

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
    .locals 10

    const/4 v9, 0x0

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1b040104

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;

    invoke-direct {v1, p0, p2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;-><init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v6, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mSourceStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    aget-object v6, v4, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v6, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v2, v7}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;Lcom/miui/personalassistant/shopping/bean/Shopping;Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$1;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;

    goto/16 :goto_0

    :cond_1
    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\uffe5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v6, "FavoriteListAdapter"

    const-string/jumbo v7, "UnsupportedEncodingException"

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;->access$300(Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x1b020167

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public update(Lcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {p1}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
