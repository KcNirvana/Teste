.class public Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TYPE_SIM1:I = 0x2

.field public static final TYPE_SIM2:I = 0x4

.field public static final TYPE_WLAN:I = 0x1


# instance fields
.field private mDataTypeMasks:I

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mRules:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/IFirewallBinder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mDataTypeMasks:I

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mRules:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/miui/networkassistant/service/IFirewallBinder;Ljava/util/concurrent/ConcurrentHashMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mDataTypeMasks:I

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iput-object p2, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mRules:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private addRestrictsListToRuleMap(Ljava/util/Map;Ljava/util/List;I)V
    .locals 4

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/FirewallRuleSet;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/model/FirewallRuleSet;->defaultValue()Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v1

    :cond_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v3, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    :cond_1
    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v3, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne p3, v3, :cond_1

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v3, v1, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateData()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mDataTypeMasks:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRestrictPackages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->addRestrictsListToRuleMap(Ljava/util/Map;Ljava/util/List;I)V

    :cond_1
    iget v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mDataTypeMasks:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->addRestrictsListToRuleMap(Ljava/util/Map;Ljava/util/List;I)V

    :cond_2
    iget v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mDataTypeMasks:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->addRestrictsListToRuleMap(Ljava/util/Map;Ljava/util/List;I)V

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iget v3, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mDataTypeMasks:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;-><init>(Lcom/miui/networkassistant/service/IFirewallBinder;Ljava/util/concurrent/ConcurrentHashMap;I)V

    return-object v0
.end method

.method public getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v0, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/FirewallRuleSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/model/FirewallRuleSet;->defaultValue()Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public notifyRuleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->updateData()V

    return-void
.end method

.method public setFirewallBinder(Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->notifyRuleChanged()V

    return-void
.end method
