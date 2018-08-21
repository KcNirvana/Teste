.class public Lcom/miui/voicesdk/VoiceAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "VoiceAccessibilityService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceAccessibilityService"

.field private static mServiceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/AccessilibilityServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

.field private static sKeyEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->sKeyEnable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method public static addAccessibilityServiceListener(Lcom/miui/voicesdk/AccessilibilityServiceListener;)V
    .locals 2

    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLastRootWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-virtual {v3}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "VoiceAccessibilityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLastRootWindow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "VoiceAccessibilityService"

    const-string/jumbo v5, "getLastRootWindow: root is sealed"

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "VoiceAccessibilityService"

    const-string/jumbo v5, "mVoiceServiceInstance is null"

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "VoiceAccessibilityService"

    const-string/jumbo v5, "getLastRootWindow null"

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getRootInActiveWindow(Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    if-nez p0, :cond_0

    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-virtual {v1}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-class v1, Landroid/accessibilityservice/AccessibilityService;

    const-string/jumbo v3, "mConnectionId"

    invoke-static {v1, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v3, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_1

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    const v3, 0x7fffffff

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v7, 0x4

    move v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    const-string/jumbo v3, "findAccessibilityNodeInfoByAccessibilityId"

    const-class v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-wide v8, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VoiceAccessibilityService"

    const-string/jumbo v3, "fail to call method: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-virtual {v1}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVoiceServiceInstance()Lcom/miui/voicesdk/VoiceAccessibilityService;
    .locals 1

    sget-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    return-object v0
.end method

.method public static isKeyEnable()Z
    .locals 1

    sget-boolean v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->sKeyEnable:Z

    return v0
.end method

.method public static removeAccessibilityServiceListener(Lcom/miui/voicesdk/AccessilibilityServiceListener;)V
    .locals 2

    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setKeyEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/voicesdk/VoiceAccessibilityService;->sKeyEnable:Z

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/AccessilibilityServiceListener;

    invoke-interface {v0, p1}, Lcom/miui/voicesdk/AccessilibilityServiceListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "VoiceAccessibilityService"

    const-string/jumbo v2, "onCreate"

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "VoiceAccessibilityService"

    const-string/jumbo v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "VoiceAccessibilityService"

    const-string/jumbo v2, "onInterrupt"

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    sget-object v2, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/AccessilibilityServiceListener;

    invoke-interface {v0, p1}, Lcom/miui/voicesdk/AccessilibilityServiceListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onServiceConnected()V
    .locals 5

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "VoiceAccessibilityService"

    const-string/jumbo v4, "onServiceConnected"

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/miui/voicesdk/VoiceAccessibilityService;->sKeyEnable:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/voicesdk/VoiceAccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    :goto_1
    sput-object p0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    sget-object v3, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/voicesdk/AccessilibilityServiceListener;

    invoke-interface {v1}, Lcom/miui/voicesdk/AccessilibilityServiceListener;->onServiceConnected()V

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    iget v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "VoiceAccessibilityService"

    const-string/jumbo v4, "onServiceConnected getServiceInfo null"

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "VoiceAccessibilityService"

    const-string/jumbo v2, "onUnBind"

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mServiceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/voicesdk/VoiceAccessibilityService;->mVoiceServiceInstance:Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
