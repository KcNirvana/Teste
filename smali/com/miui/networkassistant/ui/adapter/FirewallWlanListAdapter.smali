.class public Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;
.super Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
.source ""


# instance fields
.field private mAppList:Ljava/util/ArrayList;

.field private mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/service/IFirewallBinder;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    return-void
.end method

.method private setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mContext:Landroid/content/Context;

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

    :goto_1
    if-ge v2, v6, :cond_3

    aget-object v7, v5, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez v0, :cond_0

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppInfo;

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mSearchInput:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v4}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->wifiButton:Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->wifiButton:Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setRule(Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->wifiButton:Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mRuleChangedListener:Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setRuleChangedListener(Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;)V

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v2, :cond_1

    const v1, 0x7f0703d4

    :goto_0
    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->wifiButton:Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/FirewallRuleView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0703d5

    goto :goto_0
.end method

.method public getComparator()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$WlanFirewallComparator;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->copy()Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$WlanFirewallComparator;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;)V

    return-object v0
.end method

.method public bridge synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->getComparator()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getFirewallRuleCacherType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;)V

    const v0, 0x7f0a01a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a027e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->wifiButton:Lcom/miui/networkassistant/ui/view/FirewallRuleView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;->notifyDataSetChanged()V

    return-void
.end method
