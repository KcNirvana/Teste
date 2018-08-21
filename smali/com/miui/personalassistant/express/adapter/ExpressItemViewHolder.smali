.class public Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExpressItemViewHolder.java"


# static fields
.field private static mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCompanyIcon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mOrderNumber:Landroid/widget/TextView;

.field private mState:Landroid/widget/TextView;

.field private mStatus:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x1b0901f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCompanyIcon:Landroid/widget/ImageView;

    const v0, 0x1b0901fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOrderNumber:Landroid/widget/TextView;

    const v0, 0x1b0901f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x1b0901f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mDescription:Landroid/widget/TextView;

    const v0, 0x1b0901fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mState:Landroid/widget/TextView;

    const v0, 0x1b090028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mStatus:Landroid/view/View;

    const v0, 0x1b0901fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x1b020157

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_0
    return-void
.end method


# virtual methods
.method public bindData(Lcom/miui/personalassistant/express/bean/ExpressEntry;ZZLjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v10, 0x1b020158

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOrderNumber:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v8, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p2, :cond_4

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {p1}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mState:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/miui/personalassistant/express/bean/ExpressState;->getDescriptionRes()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mState:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v5}, Lcom/miui/personalassistant/express/bean/ExpressState;->getStatTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isOnTheWay()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mContext:Landroid/content/Context;

    const v8, 0x1b0b05fd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestDetail()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestDetail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOrderNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0c00e5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    invoke-static {v4, v0}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getImageIconUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCompanyIcon:Landroid/widget/ImageView;

    sget-object v9, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    :goto_2
    return-void

    :cond_3
    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mOrderNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x8

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCompanyIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->mCompanyIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
