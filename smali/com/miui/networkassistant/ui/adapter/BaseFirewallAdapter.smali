.class public abstract Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
.super Lcom/miui/common/a/a/j;
.source ""


# instance fields
.field protected mIsInSearch:Z

.field protected mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

.field protected mSearchInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/j;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->getFirewallRuleCacherType()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;-><init>(Lcom/miui/networkassistant/service/IFirewallBinder;I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    return-void
.end method


# virtual methods
.method public abstract getComparator()Ljava/util/Comparator;
.end method

.method protected abstract getFirewallRuleCacherType()I
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->notifyRuleChanged()V

    invoke-super {p0}, Lcom/miui/common/a/a/j;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract setData(Ljava/util/ArrayList;)V
.end method

.method public setDualCardData(ZI)V
    .locals 0

    return-void
.end method

.method public setFirewallBinder(Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->setFirewallBinder(Lcom/miui/networkassistant/service/IFirewallBinder;)V

    return-void
.end method

.method public setInSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mIsInSearch:Z

    return-void
.end method

.method public setSearchInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mSearchInput:Ljava/lang/String;

    return-void
.end method
