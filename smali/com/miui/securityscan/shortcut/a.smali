.class public Lcom/miui/securityscan/shortcut/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field public static final KG:Ljava/lang/String;

.field private static final synthetic KH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/common/b/e;->aHG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".launcher.settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/shortcut/a;->AUTHORITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/a;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/favorites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/shortcut/a;->KG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LU(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/miui/securityscan/shortcut/a;->Mg()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v1, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.cleanmaster"

    const-string/jumbo v3, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.networkassistant"

    const-string/jumbo v3, "com.miui.networkassistant.ui.NetworkAssistantActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.networkassistant.ui.NetworkAssistantActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v1, "miui.intent.action.SET_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v1, "miui.intent.action.POWER_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.powercenter.PowerCenter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v1, "miui.intent.action.ANTI_VIRUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.antivirus.activity.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v1, "miui.intent.action.LICENSE_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.permcenter.MainAcitivty"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v1, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_NETWORK_SPEED_DETAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v1, "miui.intent.action.HB_MAIN_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.luckymoney.ui.activity.LuckySettingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v1, "miui.intent.action.NETWORK_DIAGNOSTICS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_a
        :pswitch_1
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static LV(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->Mh(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/a;->LW(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static LW(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/a;->LZ(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static LX(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)I
    .locals 4

    const v0, 0x7f0201ce

    const/4 v1, -0x1

    invoke-static {}, Lcom/miui/securityscan/shortcut/a;->Mg()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0201cd

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0201c9

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0201c7

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0201cc

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0201d0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0201c8

    goto :goto_0

    :pswitch_7
    const v0, 0x7f020217

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0201cb

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0201ca

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0201b5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static LY(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/securityscan/shortcut/a;->Mg()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "com.miui.securitycenter:string/btn_text_quick_cleanup"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_garbage_cleanup"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_garbage_cleanup"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_networkassistants"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_antispam"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_power_manager"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_antivirus"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "com.miui.securitycenter:string/activity_title_license_manager"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "com.miui.securitycenter:string/btn_text_power_cleanup"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "com.miui.securitycenter:string/btn_text_network_speed_detail"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "com.miui.securitycenter:string/network_diagnostics"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "com.miui.securitycenter:string/hongbao_name"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static LZ(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "duplicate"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/a;->LY(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/a;->LX(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/a;->LU(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private static Ma(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z
    .locals 1

    const/16 v0, 0xe

    invoke-static {p0, v0, p1, p2}, Lcom/miui/securityscan/shortcut/a;->Me(Landroid/content/Context;ILcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v0

    return v0
.end method

.method private static Mb(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z
    .locals 1

    const/16 v0, 0xc

    invoke-static {p0, v0, p1, p2}, Lcom/miui/securityscan/shortcut/a;->Me(Landroid/content/Context;ILcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v0

    return v0
.end method

.method public static Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/a;->Md(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v0

    return v0
.end method

.method public static Md(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KU:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    if-ne p1, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/shortcut/a;->Mb(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KT:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    if-ne p1, v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/shortcut/a;->Ma(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KO:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KP:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0, p2}, Lcom/miui/securityscan/shortcut/a;->Md(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v8

    :cond_2
    invoke-static {p1}, Lcom/miui/securityscan/shortcut/a;->LU(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/a;->KG:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v7

    const-string/jumbo v3, " intent = ? "

    new-array v4, v8, [Ljava/lang/String;

    aput-object v0, v4, v7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v8

    :cond_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    if-eqz p2, :cond_4

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->Mi(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    const-string/jumbo v2, "ShortcutHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    move v0, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static Me(Landroid/content/Context;ILcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/miui/securityscan/shortcut/a;->KG:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "itemType=5 AND appWidgetId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    invoke-static {p0, p2}, Lcom/miui/securityscan/shortcut/b;->Mi(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static Mf(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V
    .locals 4

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KO:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KP:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mf(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->Mi(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/miui/securityscan/shortcut/a;->Md(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Z)Z

    move-result v1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ShortcutHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unistall pinnedList shortcut : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "shortcut_id"

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/a;->LY(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/common/b/e;->aHG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-eqz v1, :cond_3

    const-string/jumbo v0, "ShortcutHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unistall database shortcut : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    invoke-static {}, Lcom/miui/common/b/e;->aHG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/a;->LZ(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private static synthetic Mg()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/shortcut/a;->KH:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/shortcut/a;->KH:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->values()[Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KJ:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KK:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KL:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KM:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KN:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KO:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KP:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KQ:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KR:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KS:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KT:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KU:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KV:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-virtual {v1}, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/miui/securityscan/shortcut/a;->KH:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method
