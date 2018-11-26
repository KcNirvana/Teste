.class final Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectNormalDataUsage(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
