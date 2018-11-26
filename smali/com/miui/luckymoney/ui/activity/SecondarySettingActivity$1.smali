.class final Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setWeChatLuckyWarningEnable(Z)V

    return-void
.end method
