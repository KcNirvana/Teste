.class public Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowNetwork()Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    return v0
.end method

.method public static showSecurityCenterAllowNetwork(Landroid/app/Activity;)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070324

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    new-instance v3, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil$1;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v2, p0, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
