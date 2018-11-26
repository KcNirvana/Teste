.class public Lcom/miui/gamebooster/service/GameBoosterService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static li:Ljava/util/ArrayList;


# instance fields
.field private lA:J

.field private lB:J

.field private lc:Z

.field private ld:Lmiui/process/IForegroundInfoListener$Stub;

.field private le:I

.field private lf:I

.field private lg:J

.field private lh:I

.field private lj:Z

.field private lk:Z

.field private ll:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

.field private lm:Ljava/lang/Boolean;

.field private ln:Ljava/util/ArrayList;

.field private lo:Lcom/miui/gamebooster/service/IGameBoosterWindow;

.field private lp:Z

.field private lq:Landroid/content/Intent;

.field private lr:Ljava/lang/Boolean;

.field private ls:Ljava/lang/Boolean;

.field private lt:Ljava/lang/Boolean;

.field private lu:J

.field private lv:Ljava/util/ArrayList;

.field private lw:J

.field private lx:Z

.field private ly:Ljava/util/ArrayList;

.field private lz:Landroid/database/ContentObserver;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLock:Ljava/lang/Object;

.field private mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mMainHandler:Landroid/os/Handler;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->li:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->li:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->li:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->li:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lg:J

    const-string/jumbo v0, "gb_notification_business_period"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lh:I

    const-string/jumbo v0, "xunyou_alert_dialog_first_count"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->le:I

    const-string/jumbo v0, "xunyou_alert_dialog_overdue_gift_count"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lf:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lv:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ls:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lt:Ljava/lang/Boolean;

    iput-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lw:J

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lr:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lc:Z

    new-instance v0, Lcom/miui/gamebooster/service/l;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/l;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lz:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/gamebooster/service/m;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/m;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/service/n;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/n;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ld:Lmiui/process/IForegroundInfoListener$Stub;

    new-instance v0, Lcom/miui/gamebooster/service/p;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/p;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic nA()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/GameBoosterService;->li:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic nB(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lj:Z

    return v0
.end method

.method static synthetic nC(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lm:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ln:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic nE(Lcom/miui/gamebooster/service/GameBoosterService;)Lcom/miui/gamebooster/service/IGameBoosterWindow;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lo:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-object v0
.end method

.method static synthetic nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic nG(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lp:Z

    return v0
.end method

.method static synthetic nH(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lr:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic nI(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ls:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic nJ(Lcom/miui/gamebooster/service/GameBoosterService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lu:J

    return-wide v0
.end method

.method static synthetic nK(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic nL(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lx:Z

    return v0
.end method

.method static synthetic nM(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ly:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic nN(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lc:Z

    return p1
.end method

.method static synthetic nO(Lcom/miui/gamebooster/service/GameBoosterService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lg:J

    return-wide p1
.end method

.method static synthetic nP(Lcom/miui/gamebooster/service/GameBoosterService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lh:I

    return p1
.end method

.method static synthetic nQ(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lj:Z

    return p1
.end method

.method static synthetic nR(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lk:Z

    return p1
.end method

.method static synthetic nS(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lm:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic nT(Lcom/miui/gamebooster/service/GameBoosterService;Lcom/miui/gamebooster/service/IGameBoosterWindow;)Lcom/miui/gamebooster/service/IGameBoosterWindow;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lo:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-object p1
.end method

.method static synthetic nU(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lr:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic nV(Lcom/miui/gamebooster/service/GameBoosterService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lu:J

    return-wide p1
.end method

.method static synthetic nW(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lx:Z

    return p1
.end method

.method static synthetic nX(Lcom/miui/gamebooster/service/GameBoosterService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    return-wide p1
.end method

.method static synthetic nY(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->nb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic nZ(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->ng()Z

    move-result v0

    return v0
.end method

.method private na()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "gamebooster_bg_service"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/gamebooster/service/r;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/r;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private nb(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->isGameBoosterActived(I)Z

    move-result v0

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v2, "com.miui.gamebooster.ui.WindowCallActivity"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "com.tencent.av.ui.VChatActivity"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v4

    :cond_2
    const-string/jumbo v0, "gb_show_window"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v3
.end method

.method private nc(Ljava/lang/Boolean;)V
    .locals 4

    const/16 v1, 0x75

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private nd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private nf()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/service/q;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/q;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/service/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private ng()Z
    .locals 15

    const/16 v14, 0x1e

    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getFromNowDayInterval(J)I

    move-result v0

    if-lt v0, v13, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lA:J

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/DateUtil;->getFromNowDayInterval(J)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.gamebooster.action.XUNYOU_ALERT_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    iget-wide v8, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lk:Z

    if-eqz v3, :cond_3

    if-le v1, v14, :cond_3

    iget v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->le:I

    if-ge v3, v12, :cond_3

    const-string/jumbo v3, "xunyou_alert_dialog_first"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/service/GameBoosterService;->nq(Landroid/content/Intent;Ljava/lang/String;JI)V

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->le:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->le:I

    const-string/jumbo v0, "xunyou_alert_dialog_first_count"

    iget v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->le:I

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nk(Ljava/lang/String;I)V

    return v7

    :cond_3
    iget-wide v8, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_5

    iget-wide v8, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_5

    if-lez v0, :cond_4

    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    if-le v1, v12, :cond_4

    const-string/jumbo v3, "xunyou_alert_dialog_overdue"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/service/GameBoosterService;->nq(Landroid/content/Intent;Ljava/lang/String;JI)V

    return v7

    :cond_4
    iget v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lh:I

    if-lez v3, :cond_6

    iget v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lh:I

    if-le v0, v3, :cond_6

    if-le v1, v14, :cond_6

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lf:I

    if-ge v0, v12, :cond_6

    const-string/jumbo v3, "xunyou_alert_dialog_overdue_gift"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/service/GameBoosterService;->nq(Landroid/content/Intent;Ljava/lang/String;JI)V

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lf:I

    const-string/jumbo v0, "xunyou_alert_dialog_overdue_gift_count"

    iget v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lf:I

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nk(Ljava/lang/String;I)V

    return v7

    :cond_5
    if-ne v0, v13, :cond_6

    if-le v1, v7, :cond_6

    const-string/jumbo v3, "xunyou_alert_dialog_expired"

    move-object v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/service/GameBoosterService;->nq(Landroid/content/Intent;Ljava/lang/String;JI)V

    return v7

    :cond_6
    return v6
.end method

.method private nh(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v0, "gamebooster_gamelist"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/m;->fQ(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v0, "gamebooster"

    const-string/jumbo v3, "gblist"

    invoke-static {v0, v3, p1}, Lcom/miui/gamebooster/a/m;->fP(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    move-object v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/miui/common/b/k;->aIn(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lv:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ni()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private nj()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/k;->fG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private nk(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method private nl()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ld:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "registerWhetStoneSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ls:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/service/d;->pd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nh(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private nm()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nn()V

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tA(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_gamebooster_support_sign_function"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/gamebooster/a/I;->setAlarm(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private nn()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lt:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->po()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gamebooster.action.SIGN_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gamebooster.action.START_GAMEMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gamebooster.action.RESET_USERSTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "already_added_game"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lx:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nc(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method private no(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lm:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ln:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/service/d;->pd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->ni()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lx:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ly:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v2

    sget-object v3, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/service/d;->pe(Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/service/d;->pd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->ni()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private nq(Landroid/content/Intent;Ljava/lang/String;JI)V
    .locals 5

    iput-wide p3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lA:J

    const-string/jumbo v0, "gamebooster_xunyou_alert_last_time"

    iget-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lA:J

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    const-string/jumbo v0, "xunyou_alert_dialog_expired"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "expired"

    invoke-virtual {p1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v0, "alertType"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gamebooster/a/a;->eZ(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "xunyou_alert_dialog_first"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const-string/jumbo v0, "gamebooster_free_send_netbooster_open_nomore"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    const-string/jumbo v0, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private nr()V
    .locals 4

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "start:startServerControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pl()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ls:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/service/d;->pm(J)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nc(Ljava/lang/Boolean;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nn()V

    iget-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lw:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lw:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pn()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lw:J

    :cond_2
    return-void
.end method

.method private ns()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "open_windows"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lq:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lq:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.gamebooster.service.GameBoxService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lq:Landroid/content/Intent;

    const-string/jumbo v1, "intent_gamebooster_window_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lq:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lc:Z

    iput-boolean v4, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lp:Z

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v4}, Lcom/miui/gamebooster/c/b;->tz(Z)V

    return-void
.end method

.method private nt(ZLandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/service/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gamebooster/service/s;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private nu()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ls:Ljava/lang/Boolean;

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "unRegisterForegroundInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ld:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static nv(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "already_added_game"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "already_added_game"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/a/d;->fg(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method static synthetic nw(Lcom/miui/gamebooster/service/GameBoosterService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lc:Z

    return v0
.end method

.method static synthetic nx(Lcom/miui/gamebooster/service/GameBoosterService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lg:J

    return-wide v0
.end method

.method static synthetic ny(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic oa(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->nc(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic ob(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nd()V

    return-void
.end method

.method static synthetic oc(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->ni()V

    return-void
.end method

.method static synthetic od(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nj()V

    return-void
.end method

.method static synthetic oe(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nl()V

    return-void
.end method

.method static synthetic of(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->no(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic og(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nr()V

    return-void
.end method

.method static synthetic oh(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->ns()V

    return-void
.end method

.method static synthetic oi(Lcom/miui/gamebooster/service/GameBoosterService;ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/service/GameBoosterService;->nt(ZLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ne()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public np(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ll:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lmiui/security/SecurityManager;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "return onBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ll:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v3, "OnCREATE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;-><init>(Lcom/miui/gamebooster/service/GameBoosterService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ll:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->na()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nm()V

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lm:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lj:Z

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->ty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lp:Z

    const-string/jumbo v0, "gamebooster_xunyou_cache_time"

    const-wide/16 v4, -0x1

    invoke-static {v0, v4, v5}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lB:J

    const-string/jumbo v0, "gamebooster_xunyou_alert_last_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lA:J

    const-string/jumbo v0, "gamebooster_xunyou_first_user"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lk:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v3, "gb_added_games"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ln:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v3, "gb_added_videopalyer"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ly:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ln:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Lcom/miui/gamebooster/a/y;->hI(Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "gb_videobox"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lx:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "gb_videobox"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lz:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->ly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nf()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GameBoosterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSONException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/a/y;->hJ(Landroid/content/Context;)V

    const-string/jumbo v0, "key_gameanalysis_need_restore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nj()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService;->nu()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->ph()V

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService;->lz:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "on Destory..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSONException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
