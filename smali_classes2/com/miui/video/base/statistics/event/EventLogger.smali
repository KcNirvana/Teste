.class public abstract Lcom/miui/video/base/statistics/event/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/EventLogger;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract logClick(Lcom/miui/video/base/statistics/event/WidgetClickEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
.end method

.method protected logVideo(Lcom/miui/video/base/statistics/event/WidgetVideoEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 0

    return-void
.end method

.method protected abstract logView(Lcom/miui/video/base/statistics/event/WidgetViewEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
.end method
