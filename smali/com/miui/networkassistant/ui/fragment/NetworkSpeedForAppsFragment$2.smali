.class final Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
