.class public Lcom/miui/securityscan/cards/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final RESOURCE:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ca()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    const v5, 0x7f02025a

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    const v5, 0x7f02026c

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Cb()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    const v5, 0x7f020266

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    const v5, 0x7f020260

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Cc()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07078a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f07078b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    const v5, 0x7f020195

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070869

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f07060b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    const v5, 0x7f020254

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Cd()Ljava/util/ArrayList;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    sget-boolean v1, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/f;->aIb(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07076d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    const v6, 0x7f02018b

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f070786

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    const v5, 0x7f02018f

    invoke-direct {v1, v3, v7, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070783

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    const v4, 0x7f0201a1

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    const v4, 0x7f020184

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070770

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    const v4, 0x7f0201a4

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07077b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    const v4, 0x7f02019e

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070779

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.HB_MAIN_ACTIVITY;end"

    const v4, 0x7f020198

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070776

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.NETWORK_DIAGNOSTICS;end"

    const v4, 0x7f02019b

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0709b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    const v4, 0x7f020192

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method

.method public static Ce()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    const v5, 0x7f02025a

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "clean_master_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    const v5, 0x7f02026c

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "security_scan_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Cf()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    const v5, 0x7f020266

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "power_manager_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    const v5, 0x7f020260

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "network_assistant_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Cg()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0705ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f0705ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    const v5, 0x7f020184

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "anti_spam_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070869

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f07060b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    const v5, 0x7f020254

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "permissions_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Ch()Ljava/util/ArrayList;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    sget-boolean v1, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/f;->aIb(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07076d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    const v6, 0x7f02018b

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v4, "deep_clean_international"

    invoke-virtual {v3, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f070b6e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WHATSAPP;end"

    const v6, 0x7f02036a

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07076a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    const v6, 0x7f020188

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v4, "app_lock_international"

    invoke-virtual {v3, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v3, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f070786

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    const v5, 0x7f02018f

    invoke-direct {v1, v3, v7, v5, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v3, "dual_apps_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070783

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    const v4, 0x7f0201a1

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "second_space_international"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070776

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=miui.intent.action.NETWORK_DIAGNOSTICS;end"

    const v4, 0x7f02019b

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "network_diagnostics_international"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0709b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    const v4, 0x7f020192

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "first_aid_kit_international"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f0704be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#Intent;component=com.miui.securitycenter/com.miui.powercenter.autotask.AutoTaskManageActivity;end"

    const v6, 0x7f02036c

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lcom/miui/securityscan/cards/b;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f070b6f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#Intent;action=miui.intent.action.NEW_RECYCLE;end"

    const v6, 0x7f02036b

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method
