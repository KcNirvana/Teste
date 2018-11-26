.class final Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Z)V

    goto :goto_0
.end method
