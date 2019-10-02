.class public Lcom/mixpanel/android/viewcrawler/ViewCrawler;
.super Ljava/lang/Object;
.source "ViewCrawler.java"

# interfaces
.implements Lcom/mixpanel/android/viewcrawler/UpdatesFromMixpanel;
.implements Lcom/mixpanel/android/viewcrawler/TrackingDebug;
.implements Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak;,
        Lcom/mixpanel/android/viewcrawler/ViewCrawler$VariantChange;,
        Lcom/mixpanel/android/viewcrawler/ViewCrawler$Editor;,
        Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;,
        Lcom/mixpanel/android/viewcrawler/ViewCrawler$LifecycleCallbacks;,
        Lcom/mixpanel/android/viewcrawler/ViewCrawler$EmulatorConnector;
    }
.end annotation


# static fields
.field private static final EMULATOR_CONNECT_ATTEMPT_INTERVAL_MILLIS:I = 0x7530

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.ViewCrawler"

.field private static final MESSAGE_CONNECT_TO_EDITOR:I = 0x1

.field private static final MESSAGE_EVENT_BINDINGS_RECEIVED:I = 0x5

.field private static final MESSAGE_HANDLE_EDITOR_BINDINGS_RECEIVED:I = 0x6

.field private static final MESSAGE_HANDLE_EDITOR_CHANGES_CLEARED:I = 0xa

.field private static final MESSAGE_HANDLE_EDITOR_CHANGES_RECEIVED:I = 0x3

.field private static final MESSAGE_HANDLE_EDITOR_CLOSED:I = 0x8

.field private static final MESSAGE_HANDLE_EDITOR_TWEAKS_RECEIVED:I = 0xb

.field private static final MESSAGE_INITIALIZE_CHANGES:I = 0x0

.field private static final MESSAGE_PERSIST_VARIANTS_RECEIVED:I = 0xd

.field private static final MESSAGE_SEND_DEVICE_INFO:I = 0x4

.field private static final MESSAGE_SEND_EVENT_TRACKED:I = 0x7

.field private static final MESSAGE_SEND_LAYOUT_ERROR:I = 0xc

.field private static final MESSAGE_SEND_STATE_FOR_EDITING:I = 0x2

.field private static final MESSAGE_VARIANTS_RECEIVED:I = 0x9

.field private static final SHARED_PREF_BINDINGS_KEY:Ljava/lang/String; = "mixpanel.viewcrawler.bindings"

.field private static final SHARED_PREF_CHANGES_KEY:Ljava/lang/String; = "mixpanel.viewcrawler.changes"

.field private static final SHARED_PREF_EDITS_FILE:Ljava/lang/String; = "mixpanel.viewcrawler.changes"


# instance fields
.field private final mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicEventTracker:Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;

.field private final mEditState:Lcom/mixpanel/android/viewcrawler/EditState;

.field private final mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

.field private final mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private final mScaledDensity:F

.field private final mTweaks:Lcom/mixpanel/android/mpmetrics/Tweaks;

.field private final mTweaksUpdatedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mixpanel/android/mpmetrics/OnMixpanelTweaksUpdatedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/Tweaks;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditState;

    invoke-direct {v0}, Lcom/mixpanel/android/viewcrawler/EditState;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mEditState:Lcom/mixpanel/android/viewcrawler/EditState;

    iput-object p4, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaks:Lcom/mixpanel/android/mpmetrics/Tweaks;

    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDeviceInfo()Ljava/util/Map;

    move-result-object p4

    iput-object p4, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mDeviceInfo:Ljava/util/Map;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p4, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mScaledDensity:F

    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaksUpdatedListeners:Ljava/util/Set;

    new-instance p4, Landroid/os/HandlerThread;

    const-class v0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Landroid/os/HandlerThread;->setPriority(I)V

    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;-><init>(Lcom/mixpanel/android/viewcrawler/ViewCrawler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;)V

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    new-instance p2, Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;

    iget-object p4, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-direct {p2, p3, p4}, Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mDynamicEventTracker:Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;

    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance p2, Lcom/mixpanel/android/viewcrawler/ViewCrawler$LifecycleCallbacks;

    invoke-direct {p2, p0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$LifecycleCallbacks;-><init>(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaks:Lcom/mixpanel/android/mpmetrics/Tweaks;

    new-instance p2, Lcom/mixpanel/android/viewcrawler/ViewCrawler$1;

    invoke-direct {p2, p0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$1;-><init>(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)V

    invoke-virtual {p1, p2}, Lcom/mixpanel/android/mpmetrics/Tweaks;->addOnTweakDeclaredListener(Lcom/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaksUpdatedListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Lcom/mixpanel/android/viewcrawler/EditState;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mEditState:Lcom/mixpanel/android/viewcrawler/EditState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)F
    .locals 0

    iget p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mScaledDensity:F

    return p0
.end method

.method static synthetic access$700(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mDeviceInfo:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Lcom/mixpanel/android/mpmetrics/Tweaks;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaks:Lcom/mixpanel/android/mpmetrics/Tweaks;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mixpanel/android/viewcrawler/ViewCrawler;)Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mDynamicEventTracker:Lcom/mixpanel/android/viewcrawler/DynamicEventTracker;

    return-object p0
.end method


# virtual methods
.method public addOnMixpanelTweaksUpdatedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelTweaksUpdatedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaksUpdatedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyPersistedUpdates()V
    .locals 3

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getTweaks()Lcom/mixpanel/android/mpmetrics/Tweaks;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaks:Lcom/mixpanel/android/mpmetrics/Tweaks;

    return-object v0
.end method

.method public onLayoutError(Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeOnMixpanelTweaksUpdatedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelTweaksUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mTweaksUpdatedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportTrack(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setEventBindings(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setVariants(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startUpdates()V
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->start()V

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->applyPersistedUpdates()V

    return-void
.end method

.method public storeVariants(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewCrawler;->mMessageThreadHandler:Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;

    invoke-virtual {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
