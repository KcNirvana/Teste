.class final Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Z)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingOverLimitOptType(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
