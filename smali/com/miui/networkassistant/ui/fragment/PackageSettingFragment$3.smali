.class final Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07027b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorTips(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
