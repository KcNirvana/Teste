.class public Lcom/miui/gamebooster/ui/c;
.super Lcom/miui/common/a/a/f;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

.field private X:Ljava/util/List;

.field public Y:I

.field private Z:Z

.field private aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private aB:Lmiui/app/AlertDialog;

.field private aC:J

.field private aD:Lmiui/app/ProgressDialog;

.field private aE:Landroid/widget/RelativeLayout;

.field private aF:Landroid/widget/TextView;

.field private aG:Z

.field private aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

.field private aI:Lmiui/app/AlertDialog;

.field private aJ:Lcom/miui/gamebooster/ui/f;

.field public aK:I

.field public aL:I

.field private aM:Ljava/lang/String;

.field private aa:Ljava/lang/Boolean;

.field private ab:Ljava/lang/Boolean;

.field private ac:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

.field private ad:Landroid/content/pm/ApplicationInfo;

.field private ae:Ljava/util/ArrayList;

.field private af:Lcom/miui/securityscan/cards/k;

.field private ag:Lcom/miui/gamebooster/a/C;

.field private ah:Lcom/miui/gamebooster/gamead/DataModel;

.field private ai:Lmiui/app/AlertDialog;

.field private aj:Lcom/miui/gamebooster/gamead/a;

.field private ak:Ljava/util/ArrayList;

.field private al:Ljava/lang/String;

.field private am:Lcom/miui/gamebooster/b/i;

.field private an:Lcom/miui/gamebooster/view/DragGridView;

.field private ao:Lcom/miui/gamebooster/ui/e;

.field private ap:Lcom/miui/gamebooster/model/e;

.field private aq:Lcom/miui/securityscan/cards/g;

.field private ar:Ljava/lang/Object;

.field private as:Z

.field private at:Z

.field private au:Landroid/view/View;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/View;

.field private ax:Lcom/miui/common/customview/AutoPasteListView;

.field private ay:Landroid/support/v4/content/LocalBroadcastManager;

.field private az:Lcom/miui/gamebooster/ui/d;

.field private mConn:Landroid/content/ServiceConnection;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/a/f;-><init>()V

    iput v0, p0, Lcom/miui/gamebooster/ui/c;->Y:I

    iput v0, p0, Lcom/miui/gamebooster/ui/c;->aL:I

    iput v0, p0, Lcom/miui/gamebooster/ui/c;->aK:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->X:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ae:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aa:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ab:Ljava/lang/Boolean;

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mF:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mF:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ac:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    new-instance v0, Lcom/miui/gamebooster/ui/H;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/H;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/ui/J;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/J;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aq:Lcom/miui/securityscan/cards/g;

    new-instance v0, Lcom/miui/gamebooster/ui/K;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/K;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->af:Lcom/miui/securityscan/cards/k;

    return-void
.end method

.method private aA(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/gamebooster/a/p;->gf(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return v3

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private aB()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/P;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/P;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private aC()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/O;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/O;-><init>(Lcom/miui/gamebooster/ui/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/O;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private aD()Z
    .locals 4

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "system_current_time"

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "system_current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private aE(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ah:Lcom/miui/gamebooster/gamead/DataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ah:Lcom/miui/gamebooster/gamead/DataModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ah:Lcom/miui/gamebooster/gamead/DataModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/BaseModel;

    instance-of v2, v0, Lcom/miui/gamebooster/gamead/Advertisement;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/gamebooster/gamead/Advertisement;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Advertisement;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/a;->notifyDataSetChanged()V

    invoke-static {p2}, Lcom/miui/securityscan/d/b;->Lo(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/ui/c;->ao(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    :cond_1
    return-void
.end method

.method private aF()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07090e

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030196

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/R;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/R;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/S;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/S;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ai:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ai:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private aH(I)V
    .locals 5

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gY(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07094c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c0055

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/aa;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/aa;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070935

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/ab;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/ab;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    const-string/jumbo v0, "gb_notification_expired"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private aI()V
    .locals 3

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07094a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07094b

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/ac;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/ac;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070935

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/ad;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/ad;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    const-string/jumbo v0, "gb_notification_overdue"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method private aK()V
    .locals 4

    new-instance v0, Lcom/miui/gamebooster/ui/g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/g;-><init>(Lcom/miui/gamebooster/ui/c;)V

    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/c;->aD:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aD:Lmiui/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aD:Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070945

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aD:Lmiui/app/ProgressDialog;

    new-instance v2, Lcom/miui/gamebooster/ui/X;

    invoke-direct {v2, p0, v0}, Lcom/miui/gamebooster/ui/X;-><init>(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/ui/g;)V

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aD:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->show()V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private aL(Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/ah;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/ah;-><init>(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private aO()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bK:Z

    if-nez v1, :cond_0

    iput-boolean v4, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bK:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "gb_update_adapter_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/gamebooster/ui/ai;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/ai;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/c;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->ay:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->mConn:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/app/Activity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private aP(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-boolean v0, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Z(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qB:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->W(Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ad(Ljava/lang/Boolean;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tO(Z)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qA:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->W(Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ad(Ljava/lang/Boolean;)V

    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qx:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->W(Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ad(Ljava/lang/Boolean;)V

    return-void

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->oj()V

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ab(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private aQ()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/ui/ak;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/ak;-><init>(Lcom/miui/gamebooster/ui/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/ak;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->at:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->aa()V

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mG:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string/jumbo v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->at:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tx()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/c;->aP(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private aR()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aV()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->ap:Lcom/miui/gamebooster/model/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->ap:Lcom/miui/gamebooster/model/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->an:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/view/DragGridView;->qu(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/b/i;->setData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/b/i;->tu(Z)V

    return-void
.end method

.method private aS()V
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v4, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->qF:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->aq(Lcom/miui/gamebooster/constants/EnumCollection$NextDo;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    return-void

    :cond_3
    const-string/jumbo v0, "gamebooster_xunyou_cache_time"

    invoke-static {v0, v4, v5}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v6, "gb_xiaomi_id_md5_key"

    invoke-static {v6, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/DateUtil;->getFromNowDayInterval(J)I

    move-result v7

    if-eqz v6, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    :cond_4
    const-string/jumbo v2, "gb_xiaomi_id_md5_key"

    invoke-static {v2, v0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v4

    :cond_5
    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const-string/jumbo v0, "gamebooster_xunyou_cache_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->av()V

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v6, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qH:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/c;->aT(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V

    invoke-direct {p0, v8}, Lcom/miui/gamebooster/ui/c;->au(Z)V

    sget-object v0, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "freeSendDialog from GAMEBOOSTER_XUNYOU_CACHE_TIME_NOT_FIRST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    const-string/jumbo v0, "gamebooster_xunyou_cache_expire"

    invoke-static {v0, v10}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qI:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/c;->aT(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/b/i;->tu(Z)V

    invoke-static {v10}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    const-string/jumbo v0, "gb_notification_expired"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    neg-int v1, v7

    if-ge v1, v9, :cond_6

    if-lez v1, :cond_6

    if-eqz v0, :cond_9

    invoke-static {v9}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    :cond_9
    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/c;->aH(I)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v7}, Lcom/miui/gamebooster/ui/c;->aU(I)V

    goto :goto_1

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    invoke-direct {p0, v7}, Lcom/miui/gamebooster/ui/c;->aU(I)V

    goto :goto_1
.end method

.method private aT(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tF(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qJ:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qH:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Y(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V

    :cond_1
    return-void
.end method

.method private aU(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "gb_notification_business_period"

    invoke-static {v2, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    if-le p1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/c;->au(Z)V

    :goto_0
    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qJ:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/ui/c;->aT(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    if-nez v0, :cond_0

    const-string/jumbo v0, "gb_notification_overdue"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aI()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private aV()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "gb_added_games"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/miui/gamebooster/service/IGameBooster;->on(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic aW(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-object v0
.end method

.method static synthetic aX(Lcom/miui/gamebooster/ui/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->X:Ljava/util/List;

    return-object v0
.end method

.method static synthetic aY(Lcom/miui/gamebooster/ui/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->Z:Z

    return v0
.end method

.method static synthetic aZ(Lcom/miui/gamebooster/ui/c;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ab:Ljava/lang/Boolean;

    return-object v0
.end method

.method private ap(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aw:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->removeHeaderView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->au:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->removeHeaderView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->av:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->removeHeaderView(Landroid/view/View;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aw:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->addHeaderView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->av:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->addHeaderView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->au:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private at()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string/jumbo v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aK()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiuiVpnServiceException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private au(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "gamebooster_free_send_netbooster_open_nomore"

    invoke-static {v0, v4}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070946

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f070947

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070948

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f070949

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v2, "show"

    const-string/jumbo v3, "time"

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->ha(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/ae;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/ui/ae;-><init>(Lcom/miui/gamebooster/ui/c;Z)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/af;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/ui/af;-><init>(Lcom/miui/gamebooster/ui/c;Z)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void

    :cond_2
    const-string/jumbo v2, "show"

    const-string/jumbo v3, "time"

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private av()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/ag;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/ag;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ax(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const v5, 0x186a0

    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    if-nez v0, :cond_1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "addedGames"

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/ui/c;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v0, "tab1_gamebooster"

    const-string/jumbo v1, "add_game"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mT()Lcom/miui/gamebooster/gamead/InternalAdWall;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mT()Lcom/miui/gamebooster/gamead/InternalAdWall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/InternalAdWall;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.android.browser"

    invoke-static {v1, v0, v2}, Lcom/miui/securityscan/utils/n;->JK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "online_games_icon"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gL(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    const-string/jumbo v1, "com.android.browser"

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/IGameBooster;->oo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "already_added_game"

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/miui/gamebooster/a/B;->hX(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/b/i;->tv(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    div-int/2addr v1, v5

    invoke-static {v1}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/miui/gamebooster/a/a;->eX(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "tab1_gamebooster"

    const-string/jumbo v1, "run_game"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    invoke-virtual {v2}, Lcom/miui/gamebooster/b/i;->ts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mS()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/miui/gamebooster/ui/c;->ad:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aa:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->aG(Ljava/lang/Boolean;)V

    :goto_2
    const-string/jumbo v0, "tab1_gamebooster"

    const-string/jumbo v1, "run_game"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    div-int/2addr v1, v5

    invoke-static {v1}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v2, v0, v3, v1}, Lcom/miui/gamebooster/a/a;->eS(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_2
.end method

.method private ay(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/aj;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aj;-><init>(Lcom/miui/gamebooster/ui/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/aj;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private az()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/c;->ap(Z)V

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tx()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tV()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aF()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aC()V

    sget-object v0, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadLocalGameList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aE:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aF:Landroid/widget/TextView;

    const v1, 0x7f070926

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aB()V

    sget-object v0, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadGameListFromSql"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aF:Landroid/widget/TextView;

    const v1, 0x7f07092d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic bA(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/gamead/DataModel;)Lcom/miui/gamebooster/gamead/DataModel;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->ah:Lcom/miui/gamebooster/gamead/DataModel;

    return-object p1
.end method

.method static synthetic bB(Lcom/miui/gamebooster/ui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->al:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bC(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/model/e;)Lcom/miui/gamebooster/model/e;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->ap:Lcom/miui/gamebooster/model/e;

    return-object p1
.end method

.method static synthetic bD(Lcom/miui/gamebooster/ui/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/c;->as:Z

    return p1
.end method

.method static synthetic bE(Lcom/miui/gamebooster/ui/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/c;->at:Z

    return p1
.end method

.method static synthetic bF(Lcom/miui/gamebooster/ui/c;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic bG(Lcom/miui/gamebooster/ui/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/c;->aG:Z

    return p1
.end method

.method static synthetic bH(Lcom/miui/gamebooster/ui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->aM:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bI(Lcom/miui/gamebooster/ui/c;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/c;->aA(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic bJ(Lcom/miui/gamebooster/ui/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aD()Z

    move-result v0

    return v0
.end method

.method static synthetic bK(Lcom/miui/gamebooster/ui/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/c;->ap(Z)V

    return-void
.end method

.method static synthetic bL(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->at()V

    return-void
.end method

.method static synthetic bM(Lcom/miui/gamebooster/ui/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/c;->au(Z)V

    return-void
.end method

.method static synthetic bN(Lcom/miui/gamebooster/ui/c;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/ui/c;->ax(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic bO(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aB()V

    return-void
.end method

.method static synthetic bP(Lcom/miui/gamebooster/ui/c;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/c;->aE(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic bQ(Lcom/miui/gamebooster/ui/c;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/c;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method static synthetic bR(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/c;->aL(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic bS(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/c;->aP(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic bT(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aR()V

    return-void
.end method

.method static synthetic bU(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aS()V

    return-void
.end method

.method static synthetic bV(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aV()V

    return-void
.end method

.method static synthetic bW(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->updateView()V

    return-void
.end method

.method static synthetic ba(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ac:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-object v0
.end method

.method static synthetic bb(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ad:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic bc(Lcom/miui/gamebooster/ui/c;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic be(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/DataModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ah:Lcom/miui/gamebooster/gamead/DataModel;

    return-object v0
.end method

.method static synthetic bf(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    return-object v0
.end method

.method static synthetic bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bh(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/b/i;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    return-object v0
.end method

.method static synthetic bi(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/view/DragGridView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->an:Lcom/miui/gamebooster/view/DragGridView;

    return-object v0
.end method

.method static synthetic bj(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ao:Lcom/miui/gamebooster/ui/e;

    return-object v0
.end method

.method static synthetic bk(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/model/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ap:Lcom/miui/gamebooster/model/e;

    return-object v0
.end method

.method static synthetic bl(Lcom/miui/gamebooster/ui/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->as:Z

    return v0
.end method

.method static synthetic bm(Lcom/miui/gamebooster/ui/c;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    return-object v0
.end method

.method static synthetic bn(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->az:Lcom/miui/gamebooster/ui/d;

    return-object v0
.end method

.method static synthetic bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object v0
.end method

.method static synthetic bp(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic bq(Lcom/miui/gamebooster/ui/c;)Lmiui/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aD:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic br(Lcom/miui/gamebooster/ui/c;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aE:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic bs(Lcom/miui/gamebooster/ui/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->aG:Z

    return v0
.end method

.method static synthetic bt(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/MainTopContentFrame;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    return-object v0
.end method

.method static synthetic bu(Lcom/miui/gamebooster/ui/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bv(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-object p1
.end method

.method static synthetic bw(Lcom/miui/gamebooster/ui/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/c;->Z:Z

    return p1
.end method

.method static synthetic bx(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->aa:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic by(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->ab:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic bz(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/c;->ac:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-object p1
.end method

.method private updateView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aE:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected aG(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gamebooster_netbooster_open_nomore"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ab:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->aJ(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ad:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->ad:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/c;->ad:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const v4, 0x186a0

    div-int/2addr v3, v4

    invoke-static {v3}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/miui/gamebooster/a/a;->eS(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070941

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070942

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/T;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/T;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/U;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/U;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aB:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aB:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method protected aJ(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gamebooster_netbooster_wifi_open_nomore"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/a/b/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/a/b/b/b;->btt(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->at()V

    return-void

    :cond_2
    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070943

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f03019d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/V;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/V;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/W;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/W;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aI:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aI:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public aM(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/an;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/an;-><init>(Lcom/miui/gamebooster/ui/c;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/an;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public aN()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string/jumbo v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mG:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiuiVpnServiceException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ao(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V
    .locals 3

    invoke-virtual {p2}, Lcom/miui/gamebooster/gamead/Advertisement;->kI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/d/g;

    invoke-direct {v1, p1, p2}, Lcom/miui/securityscan/d/g;-><init>(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    sget-boolean v0, Lcom/miui/gamebooster/c/a;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " addAdvertisementEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/gamebooster/gamead/Advertisement;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public aq(Lcom/miui/gamebooster/constants/EnumCollection$NextDo;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dn()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07090c

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07090d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/Y;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/ui/Y;-><init>(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/constants/EnumCollection$NextDo;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/Z;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/Z;-><init>(Lcom/miui/gamebooster/ui/c;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected ar()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->aft(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afu(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/applicationlock/utils/b;->adT(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string/jumbo v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mC:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->W:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiuiVpnServiceException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public as(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ar:Ljava/lang/Object;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v2, "getApplicationInfo"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/16 v5, 0x2000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/a/c/a;->bty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v7
.end method

.method public aw()V
    .locals 2

    const/4 v0, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->qD:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->aq(Lcom/miui/gamebooster/constants/EnumCollection$NextDo;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->at:Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->ar()V

    const-string/jumbo v0, "tab1_gamebooster"

    const-string/jumbo v1, "network_speeding"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initView()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aE:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0242

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aF:Landroid/widget/TextView;

    const v0, 0x7f0a023f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/c;->aw:Landroid/view/View;

    const v1, 0x7f0300d2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/c;->au:Landroid/view/View;

    const v1, 0x7f0300d0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->av:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->av:Landroid/view/View;

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/view/DragGridView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->an:Lcom/miui/gamebooster/view/DragGridView;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/miui/gamebooster/ui/f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/f;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aJ:Lcom/miui/gamebooster/ui/f;

    new-instance v0, Lcom/miui/gamebooster/b/i;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->ak:Ljava/util/ArrayList;

    const-string/jumbo v3, "already_added_game"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gamebooster/b/i;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/b/i;->tt(Landroid/content/pm/PackageManager;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->ao:Lcom/miui/gamebooster/ui/e;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->X(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->an:Lcom/miui/gamebooster/view/DragGridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->an:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->an:Lcom/miui/gamebooster/view/DragGridView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aJ:Lcom/miui/gamebooster/ui/f;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aw:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->av:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v5}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFz(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/gamebooster/ui/M;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/M;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ax:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/gamebooster/ui/N;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/N;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->az()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-boolean v0, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->aG:Z

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->aG:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Z(I)V

    invoke-direct {p0, v5}, Lcom/miui/gamebooster/ui/c;->ap(Z)V

    invoke-static {v5}, Lcom/miui/gamebooster/c/b;->tU(Z)V

    const/4 v0, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->qE:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->aq(Lcom/miui/gamebooster/constants/EnumCollection$NextDo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/c;->aG:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aS()V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->al:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aH:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/c;->ay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/ui/al;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/al;-><init>(Lcom/miui/gamebooster/ui/c;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/a/a/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/C;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/a/C;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ag:Lcom/miui/gamebooster/a/C;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ay:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aO()V

    new-instance v0, Lcom/miui/gamebooster/ui/e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/e;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ao:Lcom/miui/gamebooster/ui/e;

    new-instance v0, Lcom/miui/gamebooster/ui/d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/d;-><init>(Lcom/miui/gamebooster/ui/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->az:Lcom/miui/gamebooster/ui/d;

    new-instance v0, Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->X:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/c;->ao:Lcom/miui/gamebooster/ui/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gamebooster/gamead/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/common/d/f;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/c;->X:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dm(Lcom/miui/gamebooster/gamead/a;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/c;->aM(Landroid/content/Context;)V

    :try_start_0
    const-string/jumbo v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getPackageManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/miui/a/c/a;->btx(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/c;->ar:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/miui/antivirus/a/b;->azj()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->af:Lcom/miui/securityscan/cards/k;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dk(Lcom/miui/securityscan/cards/k;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aq:Lcom/miui/securityscan/cards/g;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/f;->CJ(Lcom/miui/securityscan/cards/g;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0300bb

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->ay:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->az:Lcom/miui/gamebooster/ui/d;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aA:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->af:Lcom/miui/securityscan/cards/k;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dl(Lcom/miui/securityscan/cards/k;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->aq:Lcom/miui/securityscan/cards/g;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/f;->CK(Lcom/miui/securityscan/cards/g;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/c;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onPause()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->mx()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/a;

    invoke-interface {v0}, Lcom/miui/gamebooster/viewPointwidget/a;->onPause()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/ui/c;->aC:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hu(J)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/c;->aQ()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->mx()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/a;

    invoke-interface {v0}, Lcom/miui/gamebooster/viewPointwidget/a;->onResume()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/ui/c;->aC:J

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onStart()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->mx()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/a;

    invoke-interface {v0}, Lcom/miui/gamebooster/viewPointwidget/a;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onStop()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/c;->aj:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->mx()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/a;

    invoke-interface {v0}, Lcom/miui/gamebooster/viewPointwidget/a;->onStop()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/c;->am:Lcom/miui/gamebooster/b/i;

    invoke-virtual {v1}, Lcom/miui/gamebooster/b/i;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/gamebooster/ui/L;

    invoke-direct {v1, p0, v0}, Lcom/miui/gamebooster/ui/L;-><init>(Lcom/miui/gamebooster/ui/c;Ljava/util/List;)V

    invoke-static {v1}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method
