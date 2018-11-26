.class final Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get3(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-object v0, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/miui/luckymoney/utils/PackageUtil;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget-object v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
