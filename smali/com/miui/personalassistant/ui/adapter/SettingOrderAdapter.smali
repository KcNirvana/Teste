.class public Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;,
        Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;
    }
.end annotation


# static fields
.field private static final ID_NONE:I = -0x1


# instance fields
.field private isDragable:Z

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Lmiui/widget/DynamicListView;

.field private mOpeListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lmiui/widget/DynamicListView;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;",
            "Lmiui/widget/DynamicListView;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->isDragable:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mListView:Lmiui/widget/DynamicListView;

    iput-boolean p4, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->isDragable:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mIdMap:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mIdMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->isDragable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mOpeListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Lmiui/widget/DynamicListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mListView:Lmiui/widget/DynamicListView;

    return-object v0
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mIdMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/personalassistant/model/SettingItem;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->getItem(I)Lcom/miui/personalassistant/model/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x11

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b0400fe

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    invoke-direct {v0, p0, p2}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;-><init>(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->bindEntry(I)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b020310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/16 v1, 0x32

    invoke-virtual {p2, v1, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b02030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnOpeListener(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->mOpeListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    return-void
.end method
