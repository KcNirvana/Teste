.class public Lcom/miui/video/base/statistics/event/MiVideoLogger;
.super Lcom/miui/video/base/statistics/event/EventLogger;
.source "MiVideoLogger.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "LogMivideo"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/EventLogger;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isReport(Lcom/miui/video/base/statistics/event/WidgetEvent;Lcom/miui/video/framework/uri/LinkEntity;)Z
    .locals 6

    invoke-interface {p1}, Lcom/miui/video/base/statistics/event/WidgetEvent;->getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->CLICK:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event"

    invoke-virtual {p2, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Click"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "LogMivideo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIEW:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    if-ne v0, v1, :cond_6

    check-cast p1, Lcom/miui/video/base/statistics/event/WidgetViewEvent;

    const-string v0, "LogMivideo"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->getLastLogTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p2}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event"

    invoke-virtual {p2, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "View"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "LogMivideo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :cond_6
    return v2
.end method


# virtual methods
.method public logClick(Lcom/miui/video/base/statistics/event/WidgetClickEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 3

    const-string v0, "LogMivideo"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/statistics/event/MiVideoLogger;->isReport(Lcom/miui/video/base/statistics/event/WidgetEvent;Lcom/miui/video/framework/uri/LinkEntity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "LogMivideo"

    const-string v0, "report click event"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "target"

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->getTarget()Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->getTarget()Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    const-string v0, "CLICK"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiVideoLogger;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    goto :goto_1

    :cond_1
    const-string p1, "LogMivideo"

    const-string p2, "Not report click event"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public logView(Lcom/miui/video/base/statistics/event/WidgetViewEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 3

    const-string v0, "LogMivideo"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/statistics/event/MiVideoLogger;->isReport(Lcom/miui/video/base/statistics/event/WidgetEvent;Lcom/miui/video/framework/uri/LinkEntity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "LogMivideo"

    const-string v0, "report view event"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "LogMivideo"

    invoke-virtual {p1, p2}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->updateLogTime(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "target"

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->getTarget()Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->getTarget()Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    const-string v0, "VIEW"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiVideoLogger;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    goto :goto_1

    :cond_1
    const-string p1, "LogMivideo"

    const-string p2, "Not report view event"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
