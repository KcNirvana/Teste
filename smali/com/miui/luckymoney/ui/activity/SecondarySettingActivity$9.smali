.class final Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f070184

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStartTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    new-instance v1, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$1;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;)V

    invoke-static {v0, v2, v3, v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;JLmiui/app/TimePickerDialog$OnTimeSetListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStopTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    new-instance v1, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$2;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;)V

    invoke-static {v0, v2, v3, v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;JLmiui/app/TimePickerDialog$OnTimeSetListener;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07019d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f07019e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {v0, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07019f

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v2

    new-instance v3, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$3;

    invoke-direct {v3, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$3;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->getResources()Landroid/content/res/Resources;

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070179

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get13(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v2

    new-instance v3, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;

    invoke-direct {v3, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get5(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get12(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get10(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get8(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get0(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get9(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get6(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get11(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0082 -> :sswitch_5
        0x7f0a0084 -> :sswitch_6
        0x7f0a0086 -> :sswitch_7
        0x7f0a0088 -> :sswitch_8
        0x7f0a008a -> :sswitch_4
        0x7f0a008d -> :sswitch_9
        0x7f0a0090 -> :sswitch_3
        0x7f0a0092 -> :sswitch_a
        0x7f0a0095 -> :sswitch_0
        0x7f0a0099 -> :sswitch_1
        0x7f0a009d -> :sswitch_2
        0x7f0a00a1 -> :sswitch_b
    .end sparse-switch
.end method
