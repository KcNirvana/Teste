.class public Lcom/miui/gamebooster/service/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mn:Lcom/miui/gamebooster/service/d;

.field private static final synthetic mw:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private md:J

.field private me:Landroid/content/ServiceConnection;

.field public mf:I

.field private mg:Lcom/miui/gamebooster/service/e;

.field private mh:I

.field private mi:I

.field private mj:Lcom/miui/gamebooster/service/f;

.field private mk:Ljava/lang/String;

.field private ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

.field private mm:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private mo:Z

.field private mp:Lcom/miui/gamebooster/gbservices/c;

.field private mq:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mr:Z

.field private ms:Ljava/util/ArrayList;

.field private mt:Ljava/util/ArrayList;

.field private mu:J

.field private mv:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/miui/gamebooster/service/d;->mh:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/miui/gamebooster/service/d;->mi:I

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/d;->md:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/service/d;->mf:I

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    new-instance v0, Lcom/miui/gamebooster/service/G;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/G;-><init>(Lcom/miui/gamebooster/service/d;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->me:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/service/H;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/H;-><init>(Lcom/miui/gamebooster/service/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mv:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/service/d;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    check-cast v0, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->ne()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/d;->py()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/d;->pz()V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/d;->pw(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->pl()V

    return-void
.end method

.method private pA()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/h;->fz(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v0, "game_booster_limit_speed"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/d;->mh:I

    const-string/jumbo v0, "game_booster_limit_time"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/service/d;->mi:I

    const-string/jumbo v0, "game_booster_close_service_time"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/d;->md:J

    return-void
.end method

.method static synthetic pF(Lcom/miui/gamebooster/service/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/service/d;->md:J

    return-wide v0
.end method

.method static synthetic pG(Lcom/miui/gamebooster/service/d;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->me:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic pH(Lcom/miui/gamebooster/service/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/d;->mh:I

    return v0
.end method

.method static synthetic pI(Lcom/miui/gamebooster/service/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/d;->mi:I

    return v0
.end method

.method static synthetic pJ(Lcom/miui/gamebooster/service/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic pK(Lcom/miui/gamebooster/service/d;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mm:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object v0
.end method

.method static synthetic pL(Lcom/miui/gamebooster/service/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic pM(Lcom/miui/gamebooster/service/d;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic pN(Lcom/miui/gamebooster/service/d;)Lcom/miui/gamebooster/gbservices/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mp:Lcom/miui/gamebooster/gbservices/c;

    return-object v0
.end method

.method static synthetic pO(Lcom/miui/gamebooster/service/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic pP(Lcom/miui/gamebooster/service/d;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/d;->mm:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic pQ(Lcom/miui/gamebooster/service/d;Lcom/miui/gamebooster/gbservices/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    return-void
.end method

.method static synthetic pR(Lcom/miui/gamebooster/service/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/d;->pA()V

    return-void
.end method

.method private static synthetic pS()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/service/d;->mw:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/service/d;->mw:[I

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
    sput-object v0, Lcom/miui/gamebooster/service/d;->mw:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;
    .locals 2

    const-class v1, Lcom/miui/gamebooster/service/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/service/d;->mn:Lcom/miui/gamebooster/service/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/service/d;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/service/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/miui/gamebooster/service/d;->mn:Lcom/miui/gamebooster/service/d;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/service/d;->mn:Lcom/miui/gamebooster/service/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pu(Lcom/miui/gamebooster/gbservices/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/gamebooster/gbservices/d;->rd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private pv(Lcom/miui/gamebooster/gbservices/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/gamebooster/gbservices/d;->rd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->ms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private pw(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.powerkeeper"

    const-string/jumbo v2, "com.miui.powerkeeper.feedbackcontrol.FeedbackControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->me:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private py()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/miui/gamebooster/gbservices/a;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/a;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/i;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/i;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/h;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/h;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/j;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/j;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/l;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/l;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/b;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/b;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/e;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/e;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/m;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/m;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/n;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/n;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/c;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/c;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mp:Lcom/miui/gamebooster/gbservices/c;

    new-instance v0, Lcom/miui/gamebooster/gbservices/k;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/k;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pu(Lcom/miui/gamebooster/gbservices/d;)V

    return-void
.end method

.method private pz()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->ms:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/gamebooster/gbservices/k;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/k;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pv(Lcom/miui/gamebooster/gbservices/d;)V

    new-instance v0, Lcom/miui/gamebooster/gbservices/h;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/gamebooster/gbservices/h;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pv(Lcom/miui/gamebooster/gbservices/d;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public pB()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/d;->pw(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/y;->hK(Ljava/lang/String;)V

    const-string/jumbo v0, "key_currentboosterpkg"

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "game_service_open"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->re()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/d;->mv:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start app... value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gamebooster/service/d;->mh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gamebooster/service/d;->mi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->open()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x28a

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public pC()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->ua(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->ms:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    instance-of v2, v0, Lcom/miui/gamebooster/gbservices/h;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->re()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/gbservices/d;->rf(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/d;->mv:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->ms:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->open()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public pD()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/d;->mu:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "game exit app..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_toast_booster_fail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mv:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public pE()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "video exit app..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->ms:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mv:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v0, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->ua(Z)V

    return-void
.end method

.method public pb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mk:Ljava/lang/String;

    return-object v0
.end method

.method public pc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    return v0
.end method

.method public pd(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/gamebooster/service/d;->mk:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public pe(Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    return-void
.end method

.method public pf()Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    return-object v0
.end method

.method public pg()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/gamebooster/service/d;->pS()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->ms:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    instance-of v1, v0, Lcom/miui/gamebooster/gbservices/h;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tY(Z)V

    move-object v1, v0

    check-cast v1, Lcom/miui/gamebooster/gbservices/h;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gbservices/h;->sr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->close()V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->re()V

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->open()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/d;

    instance-of v1, v0, Lcom/miui/gamebooster/gbservices/h;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/d;->mo:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tY(Z)V

    :goto_2
    move-object v1, v0

    check-cast v1, Lcom/miui/gamebooster/gbservices/h;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gbservices/h;->sr()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->close()V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->re()V

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/d;->open()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tZ(Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ph()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mj:Lcom/miui/gamebooster/service/f;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public pi()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/service/d;->pS()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->pB()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->pC()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pj()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/service/d;->pS()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->ml:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->pD()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/d;->pE()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pk()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_notification"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "game_IsAntiMsg"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_handsfree"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public pl()V
    .locals 3

    const-string/jumbo v0, "xunyou_support"

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/m;->fQ(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mt:Ljava/util/ArrayList;

    const-string/jumbo v0, "gamebooster"

    const-string/jumbo v1, "xunyousupportlist"

    iget-object v2, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/m;->fP(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mt:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public pm(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/gamebooster/service/d;->mu:J

    return-void
.end method

.method public pn()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/service/e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/e;-><init>(Lcom/miui/gamebooster/service/d;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mg:Lcom/miui/gamebooster/service/e;

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mg:Lcom/miui/gamebooster/service/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public po()V
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/gamebooster/service/f;

    invoke-direct {v0, p0, v4}, Lcom/miui/gamebooster/service/f;-><init>(Lcom/miui/gamebooster/service/d;Lcom/miui/gamebooster/service/f;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/d;->mj:Lcom/miui/gamebooster/service/f;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/d;->mj:Lcom/miui/gamebooster/service/f;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public pp()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mt:Ljava/util/ArrayList;

    return-object v0
.end method

.method public pq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/d;->mr:Z

    return v0
.end method

.method public pr()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/d;->mh:I

    return v0
.end method

.method public ps()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/d;->mi:I

    return v0
.end method

.method public pt(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->np(Z)V

    return-void
.end method

.method public px()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/d;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method
