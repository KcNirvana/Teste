.class public interface abstract Lcom/miui/networkassistant/service/IFirewallBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getMobileRestrictPackages(I)Ljava/util/List;
.end method

.method public abstract getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
.end method

.method public abstract getRoamingAppCountByRule(Lcom/miui/networkassistant/model/FirewallRule;)I
.end method

.method public abstract getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
.end method

.method public abstract getRoamingWhiteListEnable()Z
.end method

.method public abstract getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;
.end method

.method public abstract getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
.end method

.method public abstract getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
.end method

.method public abstract getWifiRestrictPackages()Ljava/util/List;
.end method

.method public abstract getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
.end method

.method public abstract isStarted()Z
.end method

.method public abstract setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
.end method

.method public abstract setMobileRuleForPackages(Ljava/util/Map;I)V
.end method

.method public abstract setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
.end method

.method public abstract setRoamingWhiteListEnable(Z)V
.end method

.method public abstract setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;I)Z
.end method

.method public abstract setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z
.end method

.method public abstract setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
.end method

.method public abstract setWifiRuleForPackages(Ljava/util/Map;)V
.end method
