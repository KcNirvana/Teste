.class Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;
.super Landroid/content/BroadcastReceiver;
.source "FingerPrintPay.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

.field final synthetic val$actionJO:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$command:I

.field final synthetic val$contentJO:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$formShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic val$fpStatusReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic val$helper:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

.field final synthetic val$jo:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Landroid/content/BroadcastReceiver;Lcom/alipay/android/app/hardwarepay/fingerprint/n;II)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$actionJO:Lcom/alipay/android/app/json/JSONObject;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$contentJO:Lcom/alipay/android/app/json/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    iput-object p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$formShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$fpStatusReceiver:Landroid/content/BroadcastReceiver;

    iput-object p8, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$helper:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iput p9, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$type:I

    iput p10, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$command:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v2, 0x2

    const/high16 v1, -0x10000

    const/high16 v3, -0x1000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v0, "result"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v5, "FingerPrintPay.receiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FP_REGISTER_ACTION result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v0, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "msp.fp.register.broadcaster"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0, v9}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$402(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    :cond_1
    const/16 v0, 0x81

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x65

    if-ne v4, v0, :cond_c

    const/16 v4, 0x71

    move v0, v4

    :goto_0
    const/16 v4, 0x71

    if-eq v0, v4, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v4, v0

    :cond_4
    sparse-switch v4, :sswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    if-le v0, v2, :cond_8

    const-string/jumbo v0, "fp"

    const-string/jumbo v2, "FpOpenVerifyF"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->d()V

    const-string/jumbo v0, "flybird_fp_retry_tips"

    const/16 v2, 0x81

    if-ne v4, v2, :cond_b

    const-string/jumbo v0, "flybird_fp_validate_too_often"

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_3
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$fpStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$700(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0, v8}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$702(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    const-string/jumbo v0, "fp"

    const-string/jumbo v1, "FpOpenVerifyS"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$actionJO:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v4, "actionType"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "responseMsg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$contentJO:Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v4, "responseMsg"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$contentJO:Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v4, "token"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    const-string/jumbo v2, "flybird_fp_val_ok"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v3}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$formShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v3, "bizId"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$contentJO:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$actionJO:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$800(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$fpStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0, v9}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$902(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "bizId"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)V

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$fpStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$jo:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "bizId"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)V

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$fpStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    const/4 v5, 0x3

    invoke-static {v0, v5}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1102(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)I

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1108(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    const-string/jumbo v5, "flybird_fp_val_failed"

    invoke-static {v5}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v8, v1}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    const-string/jumbo v4, "flybird_fp_open"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/16 v4, 0xfa

    invoke-virtual {v1, v0, v4, v3}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$helper:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$type:I

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$command:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->val$activity:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v1, v0

    move v0, v3

    goto/16 :goto_3

    :cond_c
    move v0, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_1
        0x71 -> :sswitch_2
        0x81 -> :sswitch_3
    .end sparse-switch
.end method
