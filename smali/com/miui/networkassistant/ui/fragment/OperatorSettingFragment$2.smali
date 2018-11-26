.class final Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a02e7
        :pswitch_0
    .end packed-switch
.end method
