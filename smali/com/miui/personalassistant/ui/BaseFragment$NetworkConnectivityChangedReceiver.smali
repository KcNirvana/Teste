.class Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/BaseFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/BaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/BaseFragment;Lcom/miui/personalassistant/ui/BaseFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/personalassistant/ui/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/BaseFragment;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->getInstance()Lcom/miui/personalassistant/stock/service/AssistTaskManager;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver$1;-><init>(Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;)V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->postToMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
