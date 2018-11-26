.class public Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/BindableView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

.field protected mContext:Landroid/content/Context;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

.field protected mSlidingButton:Lmiui/widget/SlidingButton;

.field protected mSummaryView:Landroid/widget/TextView;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setIconView(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private setSlidingButton(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p0, p0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private setTitleView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTitleView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f07033f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xe

    new-array v5, v2, [Ljava/lang/String;

    const-string/jumbo v2, "\\"

    aput-object v2, v5, v1

    const-string/jumbo v2, "$"

    aput-object v2, v5, v0

    const-string/jumbo v2, "("

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const-string/jumbo v2, ")"

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const-string/jumbo v2, "*"

    const/4 v6, 0x4

    aput-object v2, v5, v6

    const-string/jumbo v2, "+"

    const/4 v6, 0x5

    aput-object v2, v5, v6

    const-string/jumbo v2, "."

    const/4 v6, 0x6

    aput-object v2, v5, v6

    const-string/jumbo v2, "["

    const/4 v6, 0x7

    aput-object v2, v5, v6

    const-string/jumbo v2, "]"

    const/16 v6, 0x8

    aput-object v2, v5, v6

    const-string/jumbo v2, "?"

    const/16 v6, 0x9

    aput-object v2, v5, v6

    const-string/jumbo v2, "^"

    const/16 v6, 0xa

    aput-object v2, v5, v6

    const-string/jumbo v2, "{"

    const/16 v6, 0xb

    aput-object v2, v5, v6

    const-string/jumbo v2, "}"

    const/16 v6, 0xc

    aput-object v2, v5, v6

    const-string/jumbo v2, "|"

    const/16 v6, 0xd

    aput-object v2, v5, v6

    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public fillData(Lcom/miui/networkassistant/model/WhiteListItem;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setIconView(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setTitleView(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setSlidingButton(Z)V

    return-void
.end method

.method public fillData(Lcom/miui/networkassistant/model/WhiteListItem;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setIconView(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setTitleView(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setSlidingButton(Z)V

    return-void
.end method

.method public bridge synthetic fillData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;)V

    return-void
.end method

.method public bridge synthetic fillData(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-interface {v0, p1, v1, p2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;->onAppSelected(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-void
.end method

.method public setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    return-void
.end method
