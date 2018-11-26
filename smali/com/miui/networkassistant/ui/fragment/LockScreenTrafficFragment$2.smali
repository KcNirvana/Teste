.class final Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
