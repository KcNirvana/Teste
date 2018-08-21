.class Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ExpressReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key_express_open_gui"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "key_express_open_gui"

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "pref_express_pickup_code"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_express_pickup_code"

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0
.end method
