.class Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field private final mFragment:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$SpeedAppMonitorListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->setAppList(Ljava/util/ArrayList;)V

    return-void
.end method
