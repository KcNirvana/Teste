.class final Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v2, p1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;I)I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)Lmiui/preference/ValuePreference;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)I

    move-result v3

    aget-object v2, v2, v3

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOverLimitWarning(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
