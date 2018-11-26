.class public final Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mGroupHeadUidMap:Ljava/util/HashMap;

.field private static sPreBgPolicyList:Ljava/util/List;

.field private static sPreFirewallWhiteList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string/jumbo v1, "android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.providers.telephony"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.contacts"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.google.android.gsf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.providers.downloads.ui"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.securityadd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.greenguard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreBgPolicyList()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    return-object v0
.end method

.method public static getPreFirewallWhiteList()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static initGroupMap(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private static initGroupMap(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isGroupHead(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGroupUid(I)Z
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPreFirewallWhiteListPackage(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrePolicyPackage(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
