.class public Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;
.super Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;
.source "FingerPrintPay.java"


# instance fields
.field private data:Ljava/lang/String;

.field private dialog:Lcom/alipay/android/app/hardwarepay/base/d;

.field private fpRetryTimes:I

.field private fpSensorStatus:Z

.field private isValidateOk:Z

.field private iscancel:Z

.field private mHandleSuccessFlag:Z

.field private scanType:I

.field private tipsMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->exitCashier(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return v0
.end method

.method static synthetic access$1102(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return p1
.end method

.method static synthetic access$1108(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return v0
.end method

.method static synthetic access$402(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    return v0
.end method

.method static synthetic access$902(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    return p1
.end method

.method private createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "result"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private exitCashier(I)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x7d6

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    iput p1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method

.method private static getAuthInfo()Lcom/alipay/android/app/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->b()[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "authInfoType"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "vendor"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "phoneModel"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "protocolVersion"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "protocolType"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mfacDownloadUrl"

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "fp"

    const-string/jumbo v3, "FpGetAuthInfoEx"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isSupportFingerprint(Landroid/content/Context;I)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/alipay/android/app/sys/a;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->c()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    const-string/jumbo v2, ""

    const-string/jumbo v3, "FingerPrintPay::isSupportFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "support:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;II)V
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp#callback"

    const-string/jumbo v2, "FingerPrintPay.fpStatusReceiver.sendOpenCallback"

    const-string/jumbo v3, "callback != null"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const/16 v2, 0x259

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method private toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/c;->c()V

    return-void
.end method

.method private toRegister(Lcom/alipay/android/app/hardwarepay/fingerprint/n;ILcom/alipay/android/app/json/JSONObject;Landroid/content/Context;ILcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V
    .locals 18

    if-nez p3, :cond_1

    const/4 v1, -0x1

    :goto_0
    const-string/jumbo v2, "KeyIsFpOpen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "fp"

    const-string/jumbo v2, "FpOpenStart"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    const-string/jumbo v1, "scanType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "scanType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    const-string/jumbo v1, "tipsMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    :cond_0
    :try_start_0
    const-string/jumbo v1, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v5}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    new-instance v8, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$5;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Landroid/content/BroadcastReceiver;Lcom/alipay/android/app/hardwarepay/fingerprint/n;II)V

    move-object/from16 v2, p4

    check-cast v2, Landroid/app/Activity;

    new-instance v9, Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p3

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/alipay/android/app/hardwarepay/fingerprint/k;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v2, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "msp.fp.register.broadcaster"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :cond_1
    const-string/jumbo v1, "bizId"

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "flybird_fp_validating"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iput p2, v0, Lcom/alipay/android/app/b/a/j;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    iput-object v1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x7d3

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/m;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public createInitReplyJson(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "data"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->getAuthInfo()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs execute(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 21

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, p3, v5

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_0

    :cond_0
    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_1

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    instance-of v8, v2, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v8, :cond_2

    check-cast v2, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-object v9, v2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v7, v2

    move-object v2, v3

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    const/4 v2, 0x1

    const-string/jumbo v5, "phonecashiermsp#callback"

    const-string/jumbo v6, "FingerPrintPay.fpStatusReceiver.execute"

    const-string/jumbo v8, "callback != null"

    invoke-static {v2, v5, v6, v8}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v13, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v13, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    invoke-virtual {v13, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_2
    return-void

    :sswitch_0
    new-instance v2, Lcom/alipay/android/app/hardwarepay/fingerprint/a;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/a;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Landroid/content/Context;ILjava/lang/Object;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v3, "ex"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :sswitch_1
    :try_start_1
    new-instance v8, Lcom/alipay/android/app/hardwarepay/fingerprint/b;

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/alipay/android/app/hardwarepay/fingerprint/b;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Landroid/content/Context;ILcom/alipay/android/app/json/JSONObject;Ljava/lang/Object;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :sswitch_2
    invoke-virtual {v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "version"

    invoke-virtual {v13, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "data"

    invoke-virtual {v13, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3, v15}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_2

    :sswitch_4
    const/4 v2, 0x1

    const-string/jumbo v3, "phonecashiermsp#fingerprint"

    const-string/jumbo v5, "FingerPrintPay.execute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6307\u7eb9\u652f\u4ed8\uff1atype:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " data:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "data"

    invoke-virtual {v13, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " version:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "version"

    invoke-virtual {v13, v8}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "version"

    invoke-virtual {v13, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v2, "data"

    invoke-virtual {v13, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v14, v4

    move/from16 v18, p2

    move-object/from16 v19, v7

    move-object/from16 v20, p1

    invoke-virtual/range {v14 .. v20}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_2

    :sswitch_5
    new-instance v8, Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/alipay/android/app/hardwarepay/fingerprint/c;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/hardwarepay/fingerprint/n;ILjava/lang/Object;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :sswitch_6
    const/4 v5, 0x2

    move-object/from16 v3, p0

    move-object v6, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toRegister(Lcom/alipay/android/app/hardwarepay/fingerprint/n;ILcom/alipay/android/app/json/JSONObject;Landroid/content/Context;ILcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V

    goto/16 :goto_2

    :sswitch_7
    if-eqz v7, :cond_5

    const/4 v2, 0x1

    const-string/jumbo v3, "phonecashiermsp#callback"

    const-string/jumbo v5, "FingerPrintPay.fpStatusReceiver.MSG_FINGERPRINT_AUTHENTICATOR_OPEN_OK"

    const-string/jumbo v6, "callback != null"

    invoke-static {v2, v3, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v2, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v7, v2, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;II)V

    goto/16 :goto_2

    :sswitch_8
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    const-string/jumbo v3, "false"

    move/from16 v0, p2

    invoke-interface {v2, v0, v3}, Lcom/alipay/android/app/plugin/b;->hardwarePayOpt(ILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_9
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string/jumbo v2, "data"

    invoke-virtual {v13, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object v8, v4

    move/from16 v12, p2

    move-object/from16 v14, p1

    invoke-virtual/range {v8 .. v14}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    const/16 v5, 0x25d

    invoke-virtual {v2, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v3, "result"

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_2

    :sswitch_a
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    sget v5, Lcom/alipay/android/app/hardwarepay/base/n;->c:I

    invoke-virtual {v2, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v3, "result"

    const/16 v5, 0xc8

    invoke-virtual {v2, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    sget-object v3, Lcom/alipay/android/app/hardwarepay/base/n;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1fa -> :sswitch_a
        0x259 -> :sswitch_5
        0x25a -> :sswitch_6
        0x25b -> :sswitch_7
        0x25c -> :sswitch_9
        0x25d -> :sswitch_8
    .end sparse-switch
.end method

.method public varargs init(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p3, v1

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isSupportFingerprint(Landroid/content/Context;I)Z

    move-result v1

    const-string/jumbo v2, "supportapp"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/android/app/hardwarepay/base/b;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
