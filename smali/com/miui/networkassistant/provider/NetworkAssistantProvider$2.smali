.class final Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/provider/NetworkAssistantProvider;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;->this$0:Lcom/miui/networkassistant/provider/NetworkAssistantProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;->this$0:Lcom/miui/networkassistant/provider/NetworkAssistantProvider;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->-set1(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;->this$0:Lcom/miui/networkassistant/provider/NetworkAssistantProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->-set1(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-void
.end method
