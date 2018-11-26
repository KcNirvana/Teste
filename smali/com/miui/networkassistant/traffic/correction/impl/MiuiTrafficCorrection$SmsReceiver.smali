.class Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private mInterceptedSmsCount:I

.field private mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

.field private mSlotNum:I

.field private mTcType:I


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mSlotNum:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mTcType:I

    return v0
.end method

.method public constructor <init>(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;III)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    iput p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mSlotNum:I

    iput p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mInterceptedSmsCount:I

    iput p4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mTcType:I

    return-void
.end method

.method private doAbortBroadcast()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->abortBroadcast()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->setResultCode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "MiuiTrafficCorrection"

    const-string/jumbo v3, "LRL SmsReceiver onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mInterceptedSmsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mInterceptedSmsCount:I

    :try_start_0
    const-string/jumbo v2, "slot_id"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mSlotNum:I

    if-eq v3, v2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v2

    iget v6, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mSlotNum:I

    invoke-virtual {v2, v5, v6}, Lcom/miui/sdk/tc/TcManager;->isSmsNeedBlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    array-length v2, v4

    if-ne v2, v0, :cond_4

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mTcType:I

    if-ne v4, v0, :cond_6

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    iget v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mInterceptedSmsCount:I

    if-lez v3, :cond_7

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "[\\s\\S]*\\d[\\s\\S]*"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    :cond_3
    if-eqz v0, :cond_8

    const-string/jumbo v0, "MiuiTrafficCorrection"

    const-string/jumbo v1, "LRL onTrafficCorrected failed, however still wait for SMS number :%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mInterceptedSmsCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    :goto_4
    array-length v7, v4

    if-ge v2, v7, :cond_5

    aget-object v7, v4, v2

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mTcType:I

    if-ne v4, v8, :cond_2

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiTrafficCorrection"

    const-string/jumbo v2, "parse Sms failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :goto_5
    return-void

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->doAbortBroadcast()V

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;

    invoke-direct {v1, p0, v5, v2, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method
