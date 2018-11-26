.class Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

.field private mLock:Ljava/lang/Object;

.field private mReceiver:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mSecurityManager:Lmiui/security/SecurityManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public regist(ILjava/lang/String;II)V
    .locals 6

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->unregist()V

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-direct {v0, v2, p1, p3, p4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;-><init>(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;III)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mReceiver:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mReceiver:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    const-string/jumbo v4, "android.permission.BROADCAST_SMS"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Lmiui/security/SecurityManager;->startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregist()V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->stopInterceptSmsBySender()Z

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mReceiver:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mReceiver:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->mReceiver:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiTrafficCorrection"

    const-string/jumbo v2, "SmsFilter unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
