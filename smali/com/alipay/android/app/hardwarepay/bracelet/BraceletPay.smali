.class public Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;
.super Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;
.source "BraceletPay.java"


# static fields
.field private static isCallBack:Z


# instance fields
.field private callBack:Ljava/lang/Object;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private supportHardwarePay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay$3;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/f;I)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "type"

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "result"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, p3, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/a;Ljava/lang/Object;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public varargs execute(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 10

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a()Lcom/alipay/android/app/hardwarepay/bracelet/f;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_8

    array-length v0, p3

    if-lez v0, :cond_8

    array-length v5, p3

    const/4 v0, 0x0

    move v3, v0

    move-object v1, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, p3, v3

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    instance-of v6, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v6, :cond_2

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    goto :goto_2

    :cond_2
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v9, v1

    :goto_3
    const-string/jumbo v0, "type"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "authType"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "wearType"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    sparse-switch v3, :sswitch_data_0

    :cond_5
    :goto_4
    :sswitch_0
    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp#bracelet"

    const-string/jumbo v2, "BraceletPay.execute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BraceletPay-execute]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[isCallBack]=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_1
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/a;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/hardwarepay/bracelet/a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/f;Landroid/content/Context;III)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :sswitch_2
    const-string/jumbo v0, "extraPara"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "extraPara"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string/jumbo v1, "data"

    invoke-virtual {v9, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "[extraPara:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    const-string/jumbo v0, "version"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v0, "type"

    invoke-virtual {v9, v0}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/base/c;->a()Landroid/util/SparseIntArray;

    move-result-object v1

    sget v3, Lcom/alipay/android/app/hardwarepay/base/n;->b:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, p2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/a;Ljava/lang/Object;ILjava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    goto/16 :goto_4

    :sswitch_4
    sget-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/base/c;->a()Landroid/util/SparseIntArray;

    move-result-object v3

    sget v4, Lcom/alipay/android/app/hardwarepay/base/n;->b:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "result"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string/jumbo v3, "phonecashiermsp#bracelet"

    const-string/jumbo v4, "BraceletPay.execute"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BraceletPay-execute-MSG_MSP_EXIT]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, p2, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/a;Ljava/lang/Object;ILjava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_7
    move-object v0, v4

    goto/16 :goto_5

    :cond_8
    move-object v9, v4

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_3
        0x1fa -> :sswitch_4
    .end sparse-switch
.end method

.method public varargs init(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 5

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "phonecashiermsp#bracelet"

    const-string/jumbo v1, "BraceletPay.init"

    const-string/jumbo v2, "BraceletPayHelper start msms"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a()Lcom/alipay/android/app/hardwarepay/bracelet/f;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    const-string/jumbo v0, "phonecashiermsp#bracelet"

    const-string/jumbo v1, "BraceletPay.init"

    const-string/jumbo v2, "BraceletPayHelper end msms"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp#bracelet"

    const-string/jumbo v2, "BraceletPay.init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u652f\u4ed8\u8bf7\u6c42\u624b\u73af\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showDialogForService(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/f;I)V
    .locals 2

    const-string/jumbo v0, "msp"

    const-string/jumbo v1, "\u67e5\u8be2\u72b6\u6001\u65f6\uff0c\u5b89\u5168service\u88ab\u5176\u5b83APP\u963b\u6321\u65e0\u6cd5\u542f\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/f;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
