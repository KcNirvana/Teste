.class final Lcom/miui/personalassistant/util/AlipayUtil$1;
.super Ljava/lang/Object;
.source "AlipayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AlipayUtil;->doAuth(Landroid/content/Context;Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Lcom/alipay/android/phone/inside/model/req/AuthRequestModel;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/model/req/AuthRequestModel;-><init>()V

    invoke-static {}, Lcom/miui/personalassistant/util/AlipayUtil;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/phone/inside/model/req/AuthRequestModel;->setAuthBizData(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/phone/inside/model/req/AuthRequestModel;->setPushDeviceId(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAuth(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/AuthRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v3

    const-string/jumbo v4, "AlipayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doAuth result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x3

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string/jumbo v4, "doAuth"

    invoke-static {v7, v4}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "AlipayUtil"

    const-string/jumbo v5, "RunInMainThreadException"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v4, "doAuth"

    invoke-static {v7, v4}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string/jumbo v5, "doAuth"

    invoke-static {v7, v5}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    throw v4
.end method
