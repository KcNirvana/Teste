.class final Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 4

    const/4 v0, 0x4

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Z)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringOverLimitOptType(I)Z

    goto :goto_0

    :pswitch_1
    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitTraffic(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select value index illegal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
