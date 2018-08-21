.class final Lcom/miui/personalassistant/util/AlipayUtil$4;
.super Ljava/lang/Object;
.source "AlipayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AlipayUtil;->queryPayResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$payCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$payCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/inside/model/req/QueryPayResult;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/model/req/QueryPayResult;-><init>()V

    iget-object v7, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$payCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/alipay/android/phone/inside/model/req/QueryPayResult;->setPayCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->queryPayResult(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/QueryPayResult;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v5

    const-string/jumbo v7, "AlipayUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "queryPayResult result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$handler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/4 v7, 0x7

    iput v7, v3, Landroid/os/Message;->what:I

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/alipay/android/phone/inside/model/OperationResult;->getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v7

    sget-object v8, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-ne v7, v8, :cond_0

    invoke-virtual {v5}, Lcom/alipay/android/phone/inside/model/OperationResult;->getResult()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "AlipayUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "queryPayResultv resultString="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Lcom/miui/personalassistant/model/AlipayPayResult;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/model/AlipayPayResult;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "key_code"

    invoke-virtual {v5}, Lcom/alipay/android/phone/inside/model/OperationResult;->getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_1
    iget-object v7, p0, Lcom/miui/personalassistant/util/AlipayUtil$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string/jumbo v7, "queryPayResult"

    invoke-static {v10, v7}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v7, "AlipayUtil"

    const-string/jumbo v8, "InsideOperationService.RunInMainThreadException"

    invoke-static {v7, v8, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v7, "queryPayResult"

    invoke-static {v10, v7}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v7, "AlipayUtil"

    const-string/jumbo v8, "Exception"

    invoke-static {v7, v8, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v7, "queryPayResult"

    invoke-static {v10, v7}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    const-string/jumbo v8, "queryPayResult"

    invoke-static {v10, v8}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    throw v7
.end method
