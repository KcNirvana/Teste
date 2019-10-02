.class public Lcom/miui/video/base/statistics/event/WidgetSessionEvent;
.super Ljava/lang/Object;
.source "WidgetSessionEvent.java"

# interfaces
.implements Lcom/miui/video/base/statistics/event/WidgetEvent;


# instance fields
.field public channelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetSessionEvent;->channelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetSessionEvent;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->SESSION:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VIDEO{channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetSessionEvent;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
