.class final Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity$1;->this$0:Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity$1;->this$0:Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
