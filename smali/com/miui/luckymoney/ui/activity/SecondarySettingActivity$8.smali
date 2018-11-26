.class final Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getDesktopFloatWindowEnable()Z

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setDesktopFloatWindowEnable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    const-string/jumbo v1, "show_float_window_button"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
