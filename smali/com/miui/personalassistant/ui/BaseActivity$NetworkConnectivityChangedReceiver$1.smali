.class Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;->this$1:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    iput-boolean p2, p0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;->this$1:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/BaseActivity;

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver$1;->val$isConnected:Z

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/BaseActivity;->onNetworkConnected(Z)V

    return-void
.end method
