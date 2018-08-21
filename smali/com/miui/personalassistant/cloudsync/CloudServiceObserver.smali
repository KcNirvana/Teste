.class public Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;
.super Ljava/lang/Object;
.source "CloudServiceObserver.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "personal_assistant"

.field private static final TAG:Ljava/lang/String; = "CloudServiceObserver"

.field private static mLastSyncActiveState:Z

.field private static volatile sInstance:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mObject:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mLastSyncActiveState:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver$1;-><init>(Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;)V

    iput-object v0, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    iput-object p1, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mLastSyncActiveState:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mLastSyncActiveState:Z

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->sInstance:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->sInstance:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->sInstance:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->sInstance:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public registerSyncState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public unRegisterSyncState()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method
