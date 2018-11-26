.class public Lcom/miui/luckymoney/controller/Pipeline;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_HEADS_UP_VIEW_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final allPipelines:Ljava/util/ArrayList;

.field private static final headsUpMessageViewHistory:Ljava/util/ArrayList;

.field private static final keyguardPipelineHistory:Ljava/util/ArrayList;

.field private static keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;


# instance fields
.field private final configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private final headsUpMessageViews:Ljava/util/HashMap;

.field private lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

.field private lockScreenMessageView:Ljava/lang/ref/WeakReference;

.field private final viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;


# direct methods
.method static synthetic -get0()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/controller/Pipeline;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/controller/Pipeline;->process(Lcom/miui/luckymoney/model/message/AppMessage;Z)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iput-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object p2, p0, Lcom/miui/luckymoney/controller/Pipeline;->viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;

    return-void
.end method

.method private checkFastOpenMode()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/PackageUtil;->getForegroundApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/luckymoney/config/FastOpenConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/luckymoney/config/FastOpenConfig;->isRestrict(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v4
.end method

.method private closeAllHeadsUpMessageView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->hide()V

    :cond_0
    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static declared-synchronized closeAllHeadsUpMessageViewOfAllPipelines()V
    .locals 3

    const-class v1, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-direct {v0}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method private closeHeadsUpMessageView(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static declared-synchronized closeHeadsUpMessageViewOfAllPipelines(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeHeadsUpMessageView(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method private closeLockScreenMessageView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->hide()V

    :cond_1
    iput-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static declared-synchronized closeLockScreenMessageViewExcept(Lcom/miui/luckymoney/controller/Pipeline;)V
    .locals 3

    const-class v1, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/controller/Pipeline;

    if-eq v0, p0, :cond_0

    invoke-direct {v0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 3

    const-class v1, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/luckymoney/controller/Pipeline$1;

    invoke-direct {v0}, Lcom/miui/luckymoney/controller/Pipeline$1;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->register(Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;)V

    :cond_0
    new-instance v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-direct {v0, p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)V

    sget-object v2, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private obtainLockScreenMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;->createLockScreenMessageView()Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    :cond_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private obtianHeadsUpMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;->createHeadsUpMessageView()Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->closeHeadsUpMessageViewOfAllPipelines(Ljava/lang/String;)V

    :cond_2
    return-object v1

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private obtianMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageViewOfAllPipelines()V

    invoke-static {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageViewExcept(Lcom/miui/luckymoney/controller/Pipeline;)V

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;->obtainLockScreenMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;->obtianHeadsUpMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v0

    return-object v0
.end method

.method private process(Lcom/miui/luckymoney/model/message/AppMessage;Z)Z
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->isHongbao()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Message is lucky money, continue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getNotifyType()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    if-ne v2, v3, :cond_2

    :cond_1
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remind is disabled, do not remind"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->justForGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->isGroupMessage()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->isBusinessMessage()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Message is not for group, do not remind"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iput-object v4, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->isGroupMessage()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/config/CommonConfig;->getPersonalLuckyCountFrom(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setPersonalLuckyCountFrom(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getPersonalLuckyMaxSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/luckymoney/config/CommonConfig;->getPersonalLuckyCountFrom(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setPersonalLuckyMaxSource(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/luckymoney/utils/SettingsUtil;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/luckymoney/utils/ScreenUtil;->powerOnScreen(Landroid/content/Context;)V

    :cond_5
    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->checkFastOpenMode()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getAction()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v2

    add-long/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setWarningLuckyMoneyCount(J)V

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getLuckyMoneyEventKeyPostfix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyFastOpen(Ljava/lang/String;)V

    move v0, v7

    :goto_1
    if-nez v0, :cond_6

    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->needPlaySource()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07016f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0701cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v5}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v6}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->needPlaySource()Z

    move-result v6

    invoke-static/range {v0 .. v7}, Lcom/miui/luckymoney/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZZ)V

    :cond_7
    return v7

    :cond_8
    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyCountFrom(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyCountFrom(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyMaxSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyCountFrom(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyMaxSource(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;->obtianMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v2

    if-nez v2, :cond_a

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to obtain message view, do not remind"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    if-nez p2, :cond_b

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/miui/luckymoney/config/CommonConfig;->setWarningLuckyMoneyCount(J)V

    :cond_b
    invoke-interface {v2, p1}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->show(Lcom/miui/luckymoney/model/message/AppMessage;)V

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    move v0, v1

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method public static declared-synchronized recycle(Lcom/miui/luckymoney/controller/Pipeline;)V
    .locals 2

    const-class v1, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v1

    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageView()V

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageView()V

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public notifyPhoneArrived()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageView()V

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageView()V

    return-void
.end method

.method public process(Lcom/miui/luckymoney/model/message/AppMessage;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/luckymoney/controller/Pipeline;->process(Lcom/miui/luckymoney/model/message/AppMessage;Z)Z

    move-result v0

    return v0
.end method
