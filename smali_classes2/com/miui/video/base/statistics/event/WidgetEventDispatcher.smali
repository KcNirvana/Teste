.class public final Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;
.super Ljava/lang/Object;
.source "WidgetEventDispatcher.java"

# interfaces
.implements Lcom/miui/video/base/common/internal/SingletonClass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WidgetEventDispatcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

.field private mEventQueue:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

.field private mHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/base/statistics/event/EventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;

    invoke-direct {v0, p0}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$1;-><init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mEventListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->recordPosition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;Lcom/miui/video/base/statistics/event/WidgetEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->handleEvent(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    return-void
.end method

.method private handleEvent(Lcom/miui/video/base/statistics/event/WidgetEvent;)V
    .locals 2

    const-string v0, "WidgetEventDispatcher"

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/miui/video/base/statistics/event/WidgetEvent;->getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->CLICK:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/miui/video/base/statistics/event/WidgetClickEvent;

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->logClickEvent(Lcom/miui/video/base/statistics/event/WidgetClickEvent;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/miui/video/base/statistics/event/WidgetEvent;->getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIEW:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    if-ne v0, v1, :cond_3

    check-cast p1, Lcom/miui/video/base/statistics/event/WidgetViewEvent;

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->logViewEvent(Lcom/miui/video/base/statistics/event/WidgetViewEvent;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/miui/video/base/statistics/event/WidgetEvent;->getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIDEO:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    if-ne v0, v1, :cond_4

    check-cast p1, Lcom/miui/video/base/statistics/event/WidgetVideoEvent;

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->logVideoEvent(Lcom/miui/video/base/statistics/event/WidgetVideoEvent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private initDefaultHandler()V
    .locals 3

    const-string v0, "LogMivideo"

    new-instance v1, Lcom/miui/video/base/statistics/event/MiVideoLogger;

    iget-object v2, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/video/base/statistics/event/MiVideoLogger;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->registerHandler(Ljava/lang/String;Lcom/miui/video/base/statistics/event/EventLogger;)V

    const-string v0, "O2OTarget"

    new-instance v1, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;

    iget-object v2, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->registerHandler(Ljava/lang/String;Lcom/miui/video/base/statistics/event/EventLogger;)V

    return-void
.end method

.method private logClickEvent(Lcom/miui/video/base/statistics/event/WidgetClickEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->getAdditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/statistics/event/EventLogger;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2, p1, v1}, Lcom/miui/video/base/statistics/event/EventLogger;->logClick(Lcom/miui/video/base/statistics/event/WidgetClickEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logVideoEvent(Lcom/miui/video/base/statistics/event/WidgetVideoEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetVideoEvent;->getAdditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/statistics/event/EventLogger;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2, p1, v1}, Lcom/miui/video/base/statistics/event/EventLogger;->logVideo(Lcom/miui/video/base/statistics/event/WidgetVideoEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logViewEvent(Lcom/miui/video/base/statistics/event/WidgetViewEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->getAdditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/statistics/event/EventLogger;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2, p1, v1}, Lcom/miui/video/base/statistics/event/EventLogger;->logView(Lcom/miui/video/base/statistics/event/WidgetViewEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recordPosition(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public asStatisticsHandler()Lcom/miui/video/framework/utils/statistics/IStatisticsListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mEventListener:Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    return-object v0
.end method

.method public dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V
    .locals 3

    const-string v0, "WidgetEventDispatcher"

    const-string v1, "dispatch"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mEventQueue:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->initDefaultHandler()V

    new-instance p1, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    invoke-direct {p1, p0}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;-><init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mEventQueue:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    return-void
.end method

.method public quit()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mEventQueue:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mEventQueue:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->quit()V

    :cond_0
    return-void
.end method

.method registerHandler(Ljava/lang/String;Lcom/miui/video/base/statistics/event/EventLogger;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->mHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
