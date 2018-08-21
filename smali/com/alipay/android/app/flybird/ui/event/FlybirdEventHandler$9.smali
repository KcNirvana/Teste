.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;
.super Landroid/content/BroadcastReceiver;
.source "FlybirdEventHandler.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$actionParams:[Ljava/lang/String;

.field final synthetic val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic val$isNativeValidate:Z

.field final synthetic val$paramJo:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$wearableFwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;ZLcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;[Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-boolean p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$isNativeValidate:Z

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$actionParams:[Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$wearableFwd:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$paramJo:Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v10, 0x4b0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "bracelet_authenticate_result"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/alipay/android/app/plugin/b;->getResources(Landroid/app/Activity;)Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v0, "phonecashiermsp#bracelet"

    const-string/jumbo v4, "FlybirdEventHandler.blReceiver.onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u624b\u73af\u6821\u9a8c\u5e7f\u64ad\u7ed3\u679c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v0, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bl"

    const-string/jumbo v4, "BlPayTotal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flybird_bl_val_failed"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x10000

    invoke-virtual {v0, v1, v7, v4}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0, v9}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$702(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;

    :cond_0
    const-string/jumbo v0, "alipay_msp_bl_verify_error"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x71

    if-ne v2, v1, :cond_3

    const-string/jumbo v0, "alipay_msp_bl_timeout"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v3, "bl"

    sget-object v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v5, "0005"

    invoke-static {v5, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v0, 0x7d

    if-ne v2, v0, :cond_2

    const-string/jumbo v0, "bl"

    const-string/jumbo v1, "BlPayFailed_NoBluetoothMac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x7b

    if-ne v2, v1, :cond_1

    const-string/jumbo v0, "alipay_msp_bl_bt_shutdown"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$1000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$isNativeValidate:Z

    if-eqz v0, :cond_7

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v3, "bl"

    sget-object v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v5, "{\"status\":\"0003\"}"

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v0, "bl"

    const-string/jumbo v3, "BlPaySuccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$actionParams:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$wearableFwd:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "wearable_fwd"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$wearableFwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$actionParams:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v2}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$400(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    move-result v3

    iput v3, v2, Lcom/alipay/android/app/b/a/j;->a:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$paramJo:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$paramJo:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v0, v4}, Lcom/alipay/android/app/g/c;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v3, v7

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    iput-object v3, v2, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v2, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v0, 0x7d3

    iput v0, v2, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/j;I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    const-string/jumbo v4, "flybird_sd_val_success"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v3, v7, v4}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0, v9}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$702(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
