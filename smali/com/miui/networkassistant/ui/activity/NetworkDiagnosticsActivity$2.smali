.class final Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/e;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentScrolled()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get8(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)I

    move-result v0

    const v1, 0x7f0a0073

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get11(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->onContentScrolled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(IF)V
    .locals 0

    return-void
.end method

.method public onStartScroll()V
    .locals 0

    return-void
.end method

.method public onStopScroll()V
    .locals 0

    return-void
.end method
