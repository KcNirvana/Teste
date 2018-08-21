.class Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver$1;->this$1:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver$1;->this$1:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/personalassistant/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/BaseFragment;->onNetworkConnected()V

    return-void
.end method
