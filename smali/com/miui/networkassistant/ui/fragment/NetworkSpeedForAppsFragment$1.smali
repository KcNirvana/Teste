.class final Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
