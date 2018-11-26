.class final Lcom/miui/gamebooster/gbservices/w;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/w;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "miui.intent.action.gb_show_window"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "passby_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/w;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->sb(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "action_toast_booster_success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "gb_added_games"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/w;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rY(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070929

    invoke-static {p1, v0}, Lcom/miui/gamebooster/a/H;->iq(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/w;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0, v4}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rZ(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Z)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_toast_booster_fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/w;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rY(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07092a

    invoke-static {p1, v0}, Lcom/miui/gamebooster/a/H;->iq(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/w;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {v0, v3}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rZ(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Z)Z

    goto/16 :goto_0
.end method
