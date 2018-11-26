.class public Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;
.super Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
.source ""


# static fields
.field private static mCollator:Ljava/text/Collator;


# instance fields
.field private mComparatorByLabel:Ljava/util/Comparator;

.field private mComparatorByState:Ljava/util/Comparator;

.field private mData:Ljava/util/Map;

.field private mHeaderComparator:Ljava/util/Comparator;

.field private mHeaders:Ljava/util/List;


# direct methods
.method static synthetic -get0()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByLabel:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;-><init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByState:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;-><init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaderComparator:Ljava/util/Comparator;

    return-void
.end method

.method private getComparatorType(I)Ljava/util/Comparator;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByLabel:Ljava/util/Comparator;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByLabel:Ljava/util/Comparator;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByState:Ljava/util/Comparator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mSearchInputStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;)V

    :goto_1
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/WhiteListItem;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mSearchInputStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, p3

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300da

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->fillData(Lcom/miui/networkassistant/model/WhiteGroupHeader;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateData(Ljava/util/Map;I)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->getComparatorType(I)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaderComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->notifyDataSetChanged()V

    return-void
.end method
