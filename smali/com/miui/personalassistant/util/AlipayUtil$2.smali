.class final Lcom/miui/personalassistant/util/AlipayUtil$2;
.super Ljava/lang/Object;
.source "AlipayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AlipayUtil;->loginOut(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$needToLogin:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$needToLogin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v3, "AlipayUtil"

    const-string/jumbo v4, "loginOut prepare"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->loginOut(Landroid/content/Context;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v2

    const-string/jumbo v3, "AlipayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loginOut result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",handler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/model/OperationResult;->getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$needToLogin:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/miui/personalassistant/util/AlipayUtil$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string/jumbo v3, "loginOut"

    invoke-static {v6, v3}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "AlipayUtil"

    const-string/jumbo v4, "RunInMainThreadException"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v3, "loginOut"

    invoke-static {v6, v3}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string/jumbo v4, "loginOut"

    invoke-static {v6, v4}, Lcom/miui/personalassistant/util/AlipayUtil;->access$100(ZLjava/lang/String;)V

    throw v3
.end method
