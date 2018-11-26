.class final Lcom/miui/networkassistant/service/FirewallService$5;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x21

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap9(Lcom/miui/networkassistant/service/FirewallService;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap8(Lcom/miui/networkassistant/service/FirewallService;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "network_blocked_pkgname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "network_blocked_network_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/service/FirewallService;->-wrap5(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "temp_rule_package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "temp_rule_reason"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get2(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get2(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get2(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    const v0, 0x7f070224

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%s/%s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "com.miui.networkassistant.provider"

    aput-object v3, v2, v5

    const-string/jumbo v3, "firewall/*"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$5;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/FirewallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x20 -> :sswitch_3
        0x30 -> :sswitch_4
        0x100 -> :sswitch_2
    .end sparse-switch
.end method
