.class public Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;,
        Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;
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
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceBottom:I

.field private mSourceTopLarge:I

.field private mSourceTopSmall:I

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
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
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

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mSourceTopLarge:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mSourceTopSmall:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mSourceBottom:I

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

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mSourceTopLarge:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mSourceTopSmall:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mSourceBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mType:Ljava/lang/String;

    return-object v0
.end method

.method private resetHeight(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

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
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    if-nez p2, :cond_5

    iget-object v7, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1b040091

    invoke-virtual {v7, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    invoke-direct {v2, p0, p2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v7, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

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

    if-eqz v7, :cond_6

    :cond_1
    const-string/jumbo v5, ""

    :goto_1
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

    if-eqz v7, :cond_7

    :cond_2
    const-string/jumbo v0, ""

    :goto_2
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
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$000(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v7, v4

    if-lez v7, :cond_9

    aget-object v7, v4, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v7, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v3, v8}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$MyOnClickLisener;-><init>(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$1;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->resetHeight(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)V

    return-object p2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/personalassistant/util/TimeUtil;->getTimeIntervalString(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$100(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v7, "FavoriteListAdapter"

    const-string/jumbo v8, "UnsupportedEncodingException"

    invoke-static {v7, v8, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    invoke-static {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;->access$200(Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
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

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->notifyDataSetChanged()V

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

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

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

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
