.class public Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;
    }
.end annotation


# static fields
.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_NORMAL:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;

.field protected mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mListItemCreator:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mFooterViews:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mListItemCreator:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected bindView(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mListItemCreator:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;->onBindItemView(ILjava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderOrFooter(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mFooterViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mListItemCreator:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mListItemCreater can not be null! you should completely override getView() method if you don\'t want to use ListItemCreator to create and bind view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->getHeaderOrFooter(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->newView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->bindView(ILandroid/view/View;Landroid/view/ViewGroup;)V

    move-object v0, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isHeaderOrFooter(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mListItemCreator:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, p1, p3, v1}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;->onCreateItemView(ILandroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
