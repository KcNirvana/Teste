.class abstract Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mContext:Landroid/content/Context;

.field private mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/model/AppInfo;Lcom/miui/networkassistant/model/AppInfo;)I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    iget-object v3, p2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->getFirewallRuleCompareWeight(Lcom/miui/networkassistant/model/FirewallRuleSet;)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->getFirewallRuleCompareWeight(Lcom/miui/networkassistant/model/FirewallRuleSet;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v3, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    iget v2, p2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    sub-int v0, v2, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    check-cast p2, Lcom/miui/networkassistant/model/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;->compare(Lcom/miui/networkassistant/model/AppInfo;Lcom/miui/networkassistant/model/AppInfo;)I

    move-result v0

    return v0
.end method

.method protected abstract getFirewallRuleCompareWeight(Lcom/miui/networkassistant/model/FirewallRuleSet;)I
.end method
