.class Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/WebviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/ui/fragment/WebviewFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->getInstance()Lcom/miui/personalassistant/stock/service/AssistTaskManager;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver$1;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
