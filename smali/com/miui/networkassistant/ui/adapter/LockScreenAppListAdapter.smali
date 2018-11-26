.class public Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;
.super Lcom/miui/common/a/a/j;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockScreenAppList:Ljava/util/ArrayList;

.field private mUidMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/j;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v4, v4, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, v3, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->traffic:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->lockScreedBytes:J

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300db

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;)V

    const v0, 0x7f0a01a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    const v0, 0x7f0a0272

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->traffic:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mUidMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mUidMap:Ljava/util/HashMap;

    iget v3, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v0, v6, v7}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;

    invoke-direct {v1, v8}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;-><init>(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
