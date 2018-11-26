.class public Lcom/miui/networkassistant/service/TcSmsReportService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TcSmsReportService"


# instance fields
.field private mCurrentSlotNum:I

.field private mListenersSelfLocked:Ljava/util/ArrayList;

.field private mReportSmsType:I

.field private mReportStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSmsAllStr:Ljava/lang/String;

.field private mSmsDirection:Ljava/lang/String;

.field private mSmsListSelfLocked:Ljava/util/ArrayList;

.field private mSmsNum:Ljava/lang/String;

.field private mSmsReceiveNum:Ljava/lang/String;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field mSmsSentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/TcSmsReportService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/TcSmsReportService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportSmsType:I

    return v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/TcSmsReportService;)Lmiui/security/SecurityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsAllStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsDirection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiveNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/service/TcSmsReportService;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/TcSmsReportService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/service/TcSmsReportService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportSmsType:I

    return p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsAllStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsDirection:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiveNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/miui/networkassistant/service/TcSmsReportService;Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->onSmsReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->onSmsSentFailure()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->onTimeOut()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/service/TcSmsReportService;->sendSms(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->startTimerTask()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportSmsType:I

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$1;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$2;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$3;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    return-void
.end method

.method private onSmsReceived(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopReceiving()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n________________________\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsListSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsAllStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Received:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;->onSmsReceived()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070310

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070311

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/service/TcSmsReportService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    invoke-static {v0, v2, v3, v4}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTcSmsReceivedNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    monitor-exit v1

    return-void
.end method

.method private onSmsSentFailure()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopReceiving()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;->onSmsSentFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070316

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070319

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/service/TcSmsReportService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    invoke-static {v0, v2, v3, v4}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTcSmsTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method private onTimeOut()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopReceiving()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Timeout:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mStatus:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mListenersSelfLocked:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;->onTimeOut()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070314

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/service/TcSmsReportService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070315

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/service/TcSmsReportService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mCurrentSlotNum:I

    invoke-static {v0, v2, v3, v4}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTcSmsTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method private registerReportStatusReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "action_broadcast_tc_sms_report_status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSmsReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "android.permission.BROADCAST_SMS"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerSmsSendedReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "sms_receiver_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendSms(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerSmsSendedReceiver()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "sms_receiver_action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v0, p1

    move-object v2, p2

    move-object v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/networkassistant/utils/TelephonyUtil;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private startTimerTask()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$4;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private stopReceiving()V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->stopInterceptSmsBySender()Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopTimerTask()V

    return-void
.end method

.method private stopTimerTask()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private unRegisterReportStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mReportStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSmsReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSmsSendedReceiver()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TcSmsReportService"

    const-string/jumbo v2, "unRegisterSmsSendedReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;-><init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService;->mSecurityManager:Lmiui/security/SecurityManager;

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerSmsSendedReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->registerReportStatusReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unRegisterSmsSendedReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unRegisterSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/TcSmsReportService;->unRegisterReportStatusReceiver()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
