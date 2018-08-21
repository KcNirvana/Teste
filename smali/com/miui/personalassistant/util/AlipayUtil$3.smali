.class final Lcom/miui/personalassistant/util/AlipayUtil$3;
.super Ljava/lang/Object;
.source "AlipayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AlipayUtil;->generatePayCode(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v9, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->generatePayCode(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$handler:Landroid/os/Handler;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/4 v8, 0x5

    iput v8, v4, Landroid/os/Message;->what:I

    const-string/jumbo v8, "AlipayUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generatePayCode result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    const-string/jumbo v8, "AlipayUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generatePayCode code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/model/OperationResult;->getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/model/OperationResult;->getResult()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "AlipayUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generatePayCode jsonResult="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "payCode"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$context:Landroid/content/Context;

    const-string/jumbo v9, "key_alipay_paycode"

    invoke-static {v8, v9, v5}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "AlipayUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generatePayCode payCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "key_alipay_paycode"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v8, "key_code"

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/model/OperationResult;->getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_1
    iget-object v8, p0, Lcom/miui/personalassistant/util/AlipayUtil$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string/jumbo v8, "generatePayCode"

    invoke-static {v11, v8}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v8, "AlipayUtil"

    const-string/jumbo v9, "RunInMainThreadException"

    invoke-static {v8, v9, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v8, "generatePayCode"

    invoke-static {v11, v8}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v8, "AlipayUtil"

    const-string/jumbo v9, "JSONException"

    invoke-static {v8, v9, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v8, "generatePayCode"

    invoke-static {v11, v8}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v8

    const-string/jumbo v9, "generatePayCode"

    invoke-static {v11, v9}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    throw v8
.end method
