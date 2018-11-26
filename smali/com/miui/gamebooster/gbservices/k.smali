.class public Lcom/miui/gamebooster/gbservices/k;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# static fields
.field private static final synthetic pS:[I


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

.field private mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

.field private mNotificationListenerConn:Landroid/content/ServiceConnection;

.field private pL:Landroid/content/Context;

.field public pM:Lcom/miui/gamebooster/service/IGameBoosterWindow;

.field private pN:Landroid/content/Intent;

.field private pO:Z

.field private pP:Lcom/miui/gamebooster/service/d;

.field private pQ:Z

.field public pR:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/gamebooster/gbservices/D;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/D;-><init>(Lcom/miui/gamebooster/gbservices/k;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    new-instance v0, Lcom/miui/gamebooster/gbservices/F;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/F;-><init>(Lcom/miui/gamebooster/gbservices/k;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/gbservices/G;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/G;-><init>(Lcom/miui/gamebooster/gbservices/k;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/k;->pP:Lcom/miui/gamebooster/service/d;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gbservices/k;->mCurrentUserId:I

    iget v0, p0, Lcom/miui/gamebooster/gbservices/k;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/k;->sH(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pL:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pN:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pN:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.gamebooster.service.GameBoxService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private sD()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/k;->sK(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/INotificationListener;->ou(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNoticationListenerBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sE(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/k;->sG(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/gbservices/k;->sJ(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->showNotification(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private sF()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/miui/gamebooster/gbservices/k;->sK(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/k;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private sG(Landroid/service/notification/StatusBarNotification;)I
    .locals 5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/p;->aJe(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->pL:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/gamebooster/gbservices/k;->sI(Landroid/service/notification/StatusBarNotification;)I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v4}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lmiui/util/NotificationFilterHelper;->getChannelFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pL:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/gamebooster/gbservices/k;->sI(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v3}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private sH(I)Landroid/content/Context;
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sI(Landroid/service/notification/StatusBarNotification;)I
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    return v0
.end method

.method public static sJ(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "android.progressIndeterminate"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sK(Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->pP:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pf()Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->ub(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->pP:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pf()Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_videobox"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pP:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->px()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/miui/gamebooster/a/w;->hB(Lcom/miui/gamebooster/gbservices/k;Landroid/os/Handler;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/miui/gamebooster/a/w;->hC()V

    goto :goto_0
.end method

.method static synthetic sL(Lcom/miui/gamebooster/gbservices/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic sM(Lcom/miui/gamebooster/gbservices/k;)Lcom/miui/gamebooster/service/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pP:Lcom/miui/gamebooster/service/d;

    return-object v0
.end method

.method static synthetic sN(Lcom/miui/gamebooster/gbservices/k;)Lcom/miui/gamebooster/service/INotificationListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

    return-object v0
.end method

.method static synthetic sO(Lcom/miui/gamebooster/gbservices/k;)Lcom/miui/gamebooster/service/NotificationListenerCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    return-object v0
.end method

.method static synthetic sP(Lcom/miui/gamebooster/gbservices/k;Lcom/miui/gamebooster/service/INotificationListener;)Lcom/miui/gamebooster/service/INotificationListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/k;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

    return-object p1
.end method

.method static synthetic sQ(Lcom/miui/gamebooster/gbservices/k;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/k;->sE(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private static synthetic sR()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/gbservices/k;->pS:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/gbservices/k;->pS:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->values()[Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/gamebooster/gbservices/k;->pS:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/k;->pQ:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoxService"

    const-string/jumbo v2, "close"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/k;->pO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/k;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/k;->sD()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/k;->pO:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "GameBoxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbind error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public open()V
    .locals 5

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/k;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/k;->pQ:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoxService"

    const-string/jumbo v2, "open"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pN:Landroid/content/Intent;

    const-string/jumbo v2, "intent_gamebooster_window_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/gamebooster/gbservices/k;->sR()[I

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/k;->pP:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/d;->pf()Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/k;->pN:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/k;->mConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/k;->pO:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/k;->sF()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pN:Landroid/content/Intent;

    const-string/jumbo v2, "intent_booster_type"

    const-string/jumbo v3, "intent_booster_type_game"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->pN:Landroid/content/Intent;

    const-string/jumbo v2, "intent_booster_type"

    const-string/jumbo v3, "intent_booster_type_video"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/k;->pQ:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/k;->pQ:Z

    return-void
.end method
