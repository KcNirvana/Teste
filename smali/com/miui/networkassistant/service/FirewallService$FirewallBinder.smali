.class Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;
.super Lcom/miui/networkassistant/service/IFirewallBinder$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/FirewallService;Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    return-void
.end method

.method private checkMobileRuleIsTempRestricted(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempMobileRuleSrcPkgName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "temp_rule_package"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "temp_rule_reason"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkWifiRuleIsTempRestricted(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempWifiRuleSrcPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "temp_rule_package"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "temp_rule_reason"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->isXSpaceApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FireWallService"

    const-string/jumbo v2, "setRule : package not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setMobileRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->checkMobileRuleIsTempRestricted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FireWallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot set mobile rule for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " because the package name exists in tempMobileRules."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get0(Lcom/miui/networkassistant/service/FirewallService;)I

    move-result v0

    if-ne v0, p3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/FirewallService;->-get6(Lcom/miui/networkassistant/service/FirewallService;)[Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-virtual {v3, p1, p2}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v3, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, v0}, Lcom/miui/networkassistant/firewall/IFirewall;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;IZ)V

    iget-object v3, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v3, p3}, Lcom/miui/networkassistant/service/FirewallService;->-wrap7(Lcom/miui/networkassistant/service/FirewallService;I)V

    iget-object v3, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string/jumbo v4, "mobile"

    invoke-static {v3, p1, v4}, Lcom/miui/networkassistant/service/FirewallService;->-wrap4(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "FireWallService"

    const-string/jumbo v4, "set mobile rule for %s:%s:%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private setWifiRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->checkWifiRuleIsTempRestricted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FireWallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot set wifi rule for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because the package name exists in tempWifiRules."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get9(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap6(Lcom/miui/networkassistant/service/FirewallService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService;->-wrap4(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v1, "set wifi rule for %s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public getMobileRestrictPackages(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoamingAppCountByRule(Lcom/miui/networkassistant/model/FirewallRule;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->-get8(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/FireWallConfig;->getPairMap()Lmiui/util/ArrayMap;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lmiui/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingWhiteListEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->getRoamingWhiteListEnable()Z

    move-result v0

    return v0
.end method

.method public getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/model/FirewallRuleSet;->defaultValue()Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWifiRestrictPackages()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->getWifiRestrictPackages()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->isStarted()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    array-length v4, v3

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    invoke-direct {p0, v2, p2, p3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v2

    and-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap0(Lcom/miui/networkassistant/service/FirewallService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMobileRuleForPackages(Ljava/util/Map;I)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, v0, v1, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 5

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get8(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap6(Lcom/miui/networkassistant/service/FirewallService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string/jumbo v1, "mobile"

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService;->-wrap4(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v1, "set roaming rule for %s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRoamingWhiteListEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->setRoamingWhiteListEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get1(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setDataRoamingWhiteListEnable(Z)Z

    return-void
.end method

.method public declared-synchronized setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;I)Z
    .locals 11

    monitor-enter p0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get0(Lcom/miui/networkassistant/service/FirewallService;)I

    move-result v0

    if-ne v0, p4, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->-get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    array-length v9, v8

    move v7, v0

    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v1, v8, v7

    invoke-static {v1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;IZ)Z

    move-result v2

    and-int v0, v6, v2

    const-string/jumbo v3, "FireWallService"

    const-string/jumbo v4, "set temp mobile rule for %s:%s:%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v6, v10

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v6, v10

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;IZ)Z

    move-result v0

    const-string/jumbo v1, "FireWallService"

    const-string/jumbo v2, "set temp mobile rule for %s:%s:%b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap0(Lcom/miui/networkassistant/service/FirewallService;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_5
    move v0, v6

    goto :goto_3
.end method

.method public setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z
    .locals 11

    if-nez p3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v5}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v5

    invoke-interface {v5, v4, p2, p3}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    const-string/jumbo v6, "FireWallService"

    const-string/jumbo v7, "Set temp wifi rule for %s:%s:%b"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "FireWallService"

    const-string/jumbo v2, "Set temp wifi rule for %s:%s:%b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap0(Lcom/miui/networkassistant/service/FirewallService;Z)V

    return v0
.end method

.method public declared-synchronized setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    array-length v4, v3

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    invoke-direct {p0, v2, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v2

    and-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap0(Lcom/miui/networkassistant/service/FirewallService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifiRuleForPackages(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
