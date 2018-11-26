.class Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$WlanFirewallComparator;
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
    .locals 2

    iget-object v0, p1, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
