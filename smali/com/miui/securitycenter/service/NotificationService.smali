.class public Lcom/miui/securitycenter/service/NotificationService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final aXE:J


# instance fields
.field private aXF:Landroid/database/ContentObserver;

.field private aXG:I

.field private aXH:Lcom/miui/securitycenter/service/a;

.field private aXI:Landroid/os/HandlerThread;

.field private aXJ:Z

.field private aXK:Z

.field private aXL:Z

.field private aXM:J

.field private aXN:J

.field private final aXO:Landroid/content/BroadcastReceiver;

.field private aXP:Landroid/app/NotificationManager;

.field private final aXQ:Landroid/content/BroadcastReceiver;

.field private aXR:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/miui/securitycenter/service/NotificationService;->aXE:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    sput-wide v0, Lcom/miui/securitycenter/service/NotificationService;->aXE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXG:I

    iput-boolean v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXJ:Z

    iput-boolean v2, p0, Lcom/miui/securitycenter/service/NotificationService;->aXL:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXM:J

    iput-boolean v2, p0, Lcom/miui/securitycenter/service/NotificationService;->aXK:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXN:J

    new-instance v0, Lcom/miui/securitycenter/service/d;

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/securitycenter/service/d;-><init>(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXF:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/securitycenter/service/e;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/e;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXR:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/securitycenter/service/f;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/f;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXQ:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/securitycenter/service/g;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/g;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXO:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bre()V
    .locals 2

    const-string/jumbo v0, "cancelNotification"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXP:Landroid/app/NotificationManager;

    const/16 v1, 0x4e24

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private brf(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screen on : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXL:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXJ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/securitycenter/service/h;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/service/h;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXK:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXH:Lcom/miui/securitycenter/service/a;

    invoke-static {v0}, Lcom/miui/securitycenter/service/a;->brC(Lcom/miui/securitycenter/service/a;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->bre()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXK:Z

    goto :goto_0
.end method

.method private brg()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "notifyNotification"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;

    invoke-virtual {p0}, Lcom/miui/securitycenter/service/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300eb

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->init()V

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->brH(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V

    iget v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXG:I

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->brI(Lcom/miui/securitycenter/service/NotificationService$NotificationView;I)V

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->brG(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0202e1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1, v4}, Landroid/app/MiuiNotification;->setEnableKeyguard(Z)Landroid/app/MiuiNotification;

    iget-object v1, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1, v4}, Landroid/app/MiuiNotification;->setEnableFloat(Z)Landroid/app/MiuiNotification;

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXP:Landroid/app/NotificationManager;

    const/16 v2, 0x4e24

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXM:J

    return-void
.end method

.method private static brh(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.ANTISPAM_UPDATE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "has_intercept"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->hasNewAntispam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic bri(Lcom/miui/securitycenter/service/NotificationService;)I
    .locals 1

    iget v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXG:I

    return v0
.end method

.method static synthetic brj(Lcom/miui/securitycenter/service/NotificationService;)Lcom/miui/securitycenter/service/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXH:Lcom/miui/securitycenter/service/a;

    return-object v0
.end method

.method static synthetic brk(Lcom/miui/securitycenter/service/NotificationService;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXI:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic brl(Lcom/miui/securitycenter/service/NotificationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXK:Z

    return v0
.end method

.method static synthetic brm(Lcom/miui/securitycenter/service/NotificationService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXM:J

    return-wide v0
.end method

.method static synthetic brn(Lcom/miui/securitycenter/service/NotificationService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXN:J

    return-wide v0
.end method

.method static synthetic bro(Lcom/miui/securitycenter/service/NotificationService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXG:I

    return p1
.end method

.method static synthetic brp(Lcom/miui/securitycenter/service/NotificationService;Lcom/miui/securitycenter/service/a;)Lcom/miui/securitycenter/service/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXH:Lcom/miui/securitycenter/service/a;

    return-object p1
.end method

.method static synthetic brq(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXI:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic brr(Lcom/miui/securitycenter/service/NotificationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXJ:Z

    return p1
.end method

.method static synthetic brs(Lcom/miui/securitycenter/service/NotificationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXK:Z

    return p1
.end method

.method static synthetic brt(Lcom/miui/securitycenter/service/NotificationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXL:Z

    return p1
.end method

.method static synthetic bru(Lcom/miui/securitycenter/service/NotificationService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXM:J

    return-wide p1
.end method

.method static synthetic brv(Lcom/miui/securitycenter/service/NotificationService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXN:J

    return-wide p1
.end method

.method static synthetic brw(Lcom/miui/securitycenter/service/NotificationService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/securitycenter/service/NotificationService;->brf(J)V

    return-void
.end method

.method static synthetic brx(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->brg()V

    return-void
.end method

.method static synthetic bry(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/service/NotificationService;->brh(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "onConfig"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->brg()V

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "onCreate"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/16 v1, 0x4e25

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService;->startForeground(ILandroid/app/Notification;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.securitycenter.action.CLEAR_MEMORY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter.action.TRACK_NOTIFICATION_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXO:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/securitycenter/service/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_antispam"

    invoke-static {v1}, Lmiui/provider/ExtraSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService;->aXF:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/service/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXP:Landroid/app/NotificationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXJ:Z

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/service/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/service/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXO:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/service/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/miui/securitycenter/service/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->aXF:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXH:Lcom/miui/securitycenter/service/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXH:Lcom/miui/securitycenter/service/a;

    invoke-static {v0}, Lcom/miui/securitycenter/service/a;->brC(Lcom/miui/securitycenter/service/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->bre()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "notify"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->aXJ:Z

    :cond_0
    return v1
.end method
