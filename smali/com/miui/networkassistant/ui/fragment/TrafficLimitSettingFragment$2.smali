.class final Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 5

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07027d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07027e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficLimitValue(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-set4(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyLimitWarningType(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-set3(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenWarningLevel(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
