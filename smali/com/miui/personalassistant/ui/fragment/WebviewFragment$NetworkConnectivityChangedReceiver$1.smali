.class Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver$1;
.super Ljava/lang/Object;
.source "WebviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver$1;->this$1:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver$1;->this$1:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->reload()V

    :cond_0
    return-void
.end method
