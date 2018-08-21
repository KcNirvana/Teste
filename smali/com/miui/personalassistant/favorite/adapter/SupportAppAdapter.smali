.class public Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "SupportAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;,
        Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isSupport:Z

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/SupportApp;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;Z)V
    .locals 4

    const v3, 0x1b020167

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mListener:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;

    iput-boolean p3, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->isSupport:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mEntries:Ljava/util/List;

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

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->isSupport:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;)Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mListener:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mEntries:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mEntries:Ljava/util/List;

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
    .locals 7

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1b04008d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;-><init>(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/favorite/module/SupportApp;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/module/SupportApp;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->isSupport:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    const v4, 0x1b020173

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1b0b024b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$1;-><init>(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;Lcom/miui/personalassistant/favorite/module/SupportApp;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/module/SupportApp;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    const v4, 0x1b020174

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1b0b024a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/SupportApp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->mEntries:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->notifyDataSetChanged()V

    return-void
.end method
