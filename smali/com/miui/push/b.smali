.class final Lcom/miui/push/b;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bae:Lcom/miui/push/a;


# direct methods
.method constructor <init>(Lcom/miui/push/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/push/b;->bae:Lcom/miui/push/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/push/a;->bvQ(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
