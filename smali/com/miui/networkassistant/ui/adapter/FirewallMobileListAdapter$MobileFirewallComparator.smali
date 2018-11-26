.class Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$MobileFirewallComparator;
.super Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;)V

    return-void
.end method


# virtual methods
.method protected getFirewallRuleCompareWeight(Lcom/miui/networkassistant/model/FirewallRuleSet;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v3, v4, :cond_2

    :goto_1
    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
