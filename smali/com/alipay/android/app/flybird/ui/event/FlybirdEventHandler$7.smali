.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;
.super Landroid/content/BroadcastReceiver;
.source "FlybirdEventHandler.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic val$isSamsungFPPay:Z

.field final synthetic val$params:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$requestData:Ljava/lang/String;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$wearableFwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Ljava/lang/String;Landroid/content/res/Resources;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$wearableFwd:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$res:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$action:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$params:Lcom/alipay/android/app/json/JSONObject;

    iput-object p7, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$requestData:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$isSamsungFPPay:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x81

    const/high16 v8, -0x10000

    const/16 v3, 0x71

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "result"

    const/16 v1, 0x270f

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v0, "phonecashier#fingerprint"

    const-string/jumbo v4, "FlybirdEventHandler.fpResultReceiver.onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6307\u7eb9\u6821\u9a8c\u5e7f\u64ad\u7ed3\u679c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v0, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fp"

    const-string/jumbo v4, "FpValidate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FpValidate|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v9, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$600(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x65

    if-ne v1, v0, :cond_b

    move v0, v3

    :goto_0
    if-eq v0, v3, :cond_2

    :cond_0
    :goto_1
    :sswitch_0
    return-void

    :cond_1
    move v0, v1

    :cond_2
    const-string/jumbo v1, "false"

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v5, "maxretrytime"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$800(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_9

    const-string/jumbo v1, "fp"

    const-string/jumbo v4, "FpPayVerifyF"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eq v0, v3, :cond_4

    const-string/jumbo v1, "flybird_fp_val_failed"

    if-ne v0, v9, :cond_3

    const-string/jumbo v1, "flybird_fp_validate_too_often"

    :cond_3
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/hardwarepay/base/d;->d()V

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$res:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n\u8f6c\u5bc6\u7801\u652f\u4ed8["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v8}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$702(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0004\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toUnregisterReceiver()V

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "fp"

    const-string/jumbo v3, "FpPayVerifyS"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "fingerpwd"

    invoke-virtual {v4, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "forcePwd"

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$wearableFwd:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "wearable_fwd"

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$wearableFwd:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v5, "{\"status\":\"0003\"}"

    invoke-virtual {v0, v1, v3, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$res:Landroid/content/res/Resources;

    const-string/jumbo v3, "flybird_fp_val_ok"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Z)V

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$702(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$params:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v4, v3}, Lcom/alipay/android/app/g/c;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toSubmitPay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toUnregisterReceiver()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    :cond_8
    move v0, v2

    goto :goto_3

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$600(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0009\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toUnregisterReceiver()V

    goto/16 :goto_1

    :sswitch_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$802(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;I)I

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/base/d;->d()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$res:Landroid/content/res/Resources;

    const-string/jumbo v5, "flybird_fp_val_failed"

    invoke-static {v5}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v8}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$808(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$requestData:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v7, v3}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->val$isSamsungFPPay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0005\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0x71 -> :sswitch_3
        0x79 -> :sswitch_0
        0x81 -> :sswitch_3
    .end sparse-switch
.end method
