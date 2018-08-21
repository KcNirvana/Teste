.class public Lcom/miui/home/launcher/assistant/ui/AssistHolderController;
.super Ljava/lang/Object;
.source "AssistHolderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:J = 0x1499700L

.field public static final KEY_HOME:Ljava/lang/String; = "homekey"

.field public static final KEY_HOME_REASON:Ljava/lang/String; = "reason"

.field public static final MIN_MINUS_SCREEN_REQUEST_CODE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "AssistHolderController"

.field private static volatile sInitBroadcast:Z

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;


# instance fields
.field private final MIN_SESSION_TIME:J

.field public assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field private mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

.field private volatile mCurrentReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

.field private mHomeWatcherReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInMinusScreen:Z

.field private mIsStatusBarDark:Z

.field private mLastScreenViewTime:J

.field private mLaunchRefresh:Z

.field private mLightBgForClock:Z

.field private mListViewAnimationReceiver:Landroid/content/BroadcastReceiver;

.field private mMinusScreenViewOnResumeReceiver:Landroid/content/BroadcastReceiver;

.field private mMinusScreenViewUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInitBroadcast:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mCurrentReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsStatusBarDark:Z

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLightBgForClock:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLastScreenViewTime:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->MIN_SESSION_TIME:J

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;-><init>(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;-><init>(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewOnResumeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$3;-><init>(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mListViewAnimationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;-><init>(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mHomeWatcherReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/AssistantApplication;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLightBgForClock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLightBgForClock:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLaunchRefresh:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->trackPageStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsStatusBarDark:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsStatusBarDark:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->needUpgradeApk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mCurrentReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInstance:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInstance:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInstance:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInstance:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private needUpgradeApk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private trackPageStart()V
    .locals 2

    const-string/jumbo v0, "AssistHolderController"

    const-string/jumbo v1, "trackPageStart"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLastScreenViewTime:J

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getCardViewCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackPageStart(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public expandDeviceCardView(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->inflateExpandDeviceCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandDeviceCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->expandDeviceCardView(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->setAiVisible(I)V

    :cond_0
    return-void
.end method

.method public expandNoteBoardCardView(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->inflateExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->expandNoteBoardCardView(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->setAiVisible(I)V

    :cond_0
    return-void
.end method

.method public getOpenCards()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v1, v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initBroadcast()V
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInitBroadcast:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/CardManager;->registerCardReceiver(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewOnResumeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mListViewAnimationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "miui.intent.action.MINUS_SCREEN_PLAY_ANIMATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mHomeWatcherReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->sInitBroadcast:Z

    :cond_0
    return-void
.end method

.method public isInMinusScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    return v0
.end method

.method public isLaunchSettingUpdate()Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLaunchRefresh:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLaunchRefresh:Z

    return v0
.end method

.method public onAttachedCards()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->onResume()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 2

    const-string/jumbo v0, "AssistHolderController"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->initBroadcast()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "AssistHolderController"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    return-void
.end method

.method public playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public reLoadMinusScreen()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mRefresh:Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->onResume()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->resetQueryTime(J)V

    return-void
.end method

.method public reLoadMinusScreenDelay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mRefresh:Z

    return-void
.end method

.method public refreshListView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mRefresh:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateCardSource(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mRefresh:Z

    :cond_0
    return-void
.end method

.method public setAiVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setAiVisible(IZ)V

    :cond_0
    return-void
.end method

.method public shrinkDeviceCardView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandDeviceCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandDeviceCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->shrinkDeviceCardView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->setAiVisible(I)V

    :cond_0
    return-void
.end method

.method public shrinkNoteBoardCardView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mIsInMinusScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->shrinkNoteBoardCardView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->setAiVisible(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mCurrentReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "AssistHolderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " startActivityForResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackPageEnd()V
    .locals 4

    const-string/jumbo v0, "AssistHolderController"

    const-string/jumbo v1, "trackPageEnd"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLastScreenViewTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mLastScreenViewTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getCardViewCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/CardManager;->unRegisterCardReceiver(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewOnResumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mMinusScreenViewUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mListViewAnimationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mHomeWatcherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AssistHolderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDestroy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v1, v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateSortPreList()V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->updateCards(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public updateSortPreList(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v0, v1, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateSortPreList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateUpgradeStatus(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "FileName"

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "key_upgrade"

    invoke-static {v2, v3, v6}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ChangeLog"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v1, v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeFooter(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2, v5, v1, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeFooter(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2, v5, v4, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeFooter(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
