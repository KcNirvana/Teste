.class final Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mServiceConnected:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4$1;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-wrap3(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mServiceConnected:Z

    return-void
.end method
