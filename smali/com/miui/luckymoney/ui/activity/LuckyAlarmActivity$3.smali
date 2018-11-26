.class final Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmEnable(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->finish()V

    return-void
.end method
