.class public Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;
.super Lcom/miui/common/a/a/g;
.source ""


# static fields
.field private static sActionMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_AUTO_TRAFFIC_CORRECTION_SETTING"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_STATUS_BAR_SETTING"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_SETTINGS"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_SMS_REPORT"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_APP_DETAIL"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "miui.intent.action.BG_NETWORK_CONTROL"

    const-class v2, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/g;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity$1;-><init>(Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected resolveAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->sActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string/jumbo v1, "fragment_arg"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move-object p2, v1

    goto :goto_0

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method
