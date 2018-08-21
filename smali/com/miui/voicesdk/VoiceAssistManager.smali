.class public Lcom/miui/voicesdk/VoiceAssistManager;
.super Ljava/lang/Object;
.source "VoiceAssistManager.java"

# interfaces
.implements Lcom/miui/voicesdk/IVoiceAssistManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sManager:Lcom/miui/voicesdk/IVoiceAssistManager;


# instance fields
.field private mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

.field private mScreencapHelper:Lcom/miui/voicesdk/ScreencapHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/voicesdk/VoiceAssistManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/voicesdk/VoiceAssistManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultManager()Lcom/miui/voicesdk/IVoiceAssistManager;
    .locals 2

    const-class v1, Lcom/miui/voicesdk/VoiceAssistManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voicesdk/VoiceAssistManager;->sManager:Lcom/miui/voicesdk/IVoiceAssistManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/voicesdk/VoiceAssistManager;

    invoke-direct {v0}, Lcom/miui/voicesdk/VoiceAssistManager;-><init>()V

    sput-object v0, Lcom/miui/voicesdk/VoiceAssistManager;->sManager:Lcom/miui/voicesdk/IVoiceAssistManager;

    :cond_0
    sget-object v0, Lcom/miui/voicesdk/VoiceAssistManager;->sManager:Lcom/miui/voicesdk/IVoiceAssistManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clickBackKey(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0, p1}, Lcom/miui/voicesdk/NodeListExecutor;->clickBackKey(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickButton(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/voicesdk/NodeListExecutor;->clickButton(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;",
            "Lcom/miui/voicesdk/ActionCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/voicesdk/NodeListExecutor;

    invoke-direct {v0, p1}, Lcom/miui/voicesdk/NodeListExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    :cond_2
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0, p2, p3}, Lcom/miui/voicesdk/NodeListExecutor;->beginExecute(Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAccessibilityNodeinfosByClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, ""

    invoke-static {v0, p1, p2, v1}, Lcom/miui/voicesdk/util/Utils;->findByClassName(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;
    .locals 1

    invoke-static {p1}, Lcom/miui/voicesdk/NotificationListener;->getAllNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getRootInActiveWindow(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getLastRootWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isAccessibilityOn(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/miui/voicesdk/util/AccessibilityUtil;->isAccessibilitySettingsOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0}, Lcom/miui/voicesdk/NodeListExecutor;->lock()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setCallback(Lcom/miui/voicesdk/ActionCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0, p1}, Lcom/miui/voicesdk/NodeListExecutor;->setCallback(Lcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDebugable(Z)V
    .locals 1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/voicesdk/util/LogUtils;->setDebugable(Z)V

    return-void
.end method

.method public setRequestFilterKeyEnable(Z)V
    .locals 0

    invoke-static {p1}, Lcom/miui/voicesdk/VoiceAccessibilityService;->setKeyEnable(Z)V

    return-void
.end method

.method public declared-synchronized setTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mScreencapHelper:Lcom/miui/voicesdk/ScreencapHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mScreencapHelper:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-virtual {v0, p1}, Lcom/miui/voicesdk/ScreencapHelper;->setTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserPathStart(Landroid/content/Context;Ljava/lang/String;ZILcom/miui/voicesdk/ActionCallback;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mScreencapHelper:Lcom/miui/voicesdk/ScreencapHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/voicesdk/ScreencapHelper;

    invoke-direct {v0, p1}, Lcom/miui/voicesdk/ScreencapHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mScreencapHelper:Lcom/miui/voicesdk/ScreencapHelper;

    :cond_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mScreencapHelper:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/miui/voicesdk/ScreencapHelper;->setUserPathStart(Ljava/lang/String;ZILcom/miui/voicesdk/ActionCallback;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVoiceNotificationListener(Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/voicesdk/NotificationListener;->setListener(Lcom/miui/voicesdk/NotificationListener$VoiceNotificationListener;)V

    return-void
.end method

.method public startReplayNodeList(Landroid/content/Context;Lorg/json/JSONArray;Lcom/miui/voicesdk/ActionCallback;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Lcom/miui/voicesdk/util/TestUtils;->getRecordNodeList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/miui/voicesdk/VoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/voicesdk/VoiceAssistManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startReplayNodeList JSONException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startTestNodeList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/voicesdk/ActionCallback;)V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/miui/voicesdk/VoiceAssistManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTestNodeList  query:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Lcom/miui/voicesdk/util/TestUtils;->getTestNodeJSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->setDebugable(Z)V

    sget-object v2, Lcom/miui/voicesdk/VoiceAssistManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTestNodeList  jsonObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/miui/voicesdk/util/TestUtils;->getTestNodeList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p4}, Lcom/miui/voicesdk/VoiceAssistManager;->execute(Landroid/content/Context;Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/voicesdk/VoiceAssistManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTestNodeList JSONException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/voicesdk/NodeListExecutor;->unlock(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized updateService(Landroid/content/Context;ZLcom/miui/voicesdk/ActionCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/voicesdk/NodeListExecutor;

    invoke-direct {v0, p1}, Lcom/miui/voicesdk/NodeListExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    :cond_0
    iget-object v0, p0, Lcom/miui/voicesdk/VoiceAssistManager;->mNodeListExecutor:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-virtual {v0, p2, p3}, Lcom/miui/voicesdk/NodeListExecutor;->updateAccessibilityService(ZLcom/miui/voicesdk/ActionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
