.class final Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get2(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get2(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    const-class v3, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    const-class v3, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get0(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "http://api.miui.security.xiaomi.com/netassist/floworderunity/cdn/luckymoneyhelp"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/PackageUtil;->startUriWithBrowser(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFuncNoWork()V

    goto :goto_0

    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "miui.luckymoney.action.ACCESS_LM_SHARE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u6682\u65e0"

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v3}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyMaxSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    const-string/jumbo v3, "\u6682\u65e0"

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v4}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getPersonalLuckyMaxSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    const-string/jumbo v3, "maxGroup"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "maxPersonal"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "receivedValue"

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getReceiveTotalLuckyMoney()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "warningTotal"

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordShare(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyMaxSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getPersonalLuckyMaxSource()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0050 -> :sswitch_4
        0x7f0a005d -> :sswitch_0
        0x7f0a0060 -> :sswitch_2
        0x7f0a0063 -> :sswitch_1
        0x7f0a0069 -> :sswitch_3
    .end sparse-switch
.end method
