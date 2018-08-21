.class Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/BaseActivity;Lcom/miui/personalassistant/ui/BaseActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/personalassistant/ui/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/BaseActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->getInstance()Lcom/miui/personalassistant/stock/service/AssistTaskManager;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;-><init>(Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
