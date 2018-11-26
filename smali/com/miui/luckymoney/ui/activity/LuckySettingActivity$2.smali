.class final Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    const-class v3, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
