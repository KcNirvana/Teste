.class public Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;
.super Ljava/lang/Object;
.source "FlickStatsEvent.java"


# instance fields
.field public ad_play_pos:Ljava/lang/String;

.field public ad_pos:Ljava/lang/String;

.field public ad_sdk:Ljava/lang/String;

.field public ad_url:Ljava/lang/String;

.field public auth:Ljava/lang/String;

.field public bitrate:I

.field public cid:Ljava/lang/String;

.field public duration:I

.field public error_code:Ljava/lang/String;

.field public error_msg:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public play_dur:I

.field public play_pos:I

.field public reason:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->duration:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->play_pos:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->ad_play_pos:Ljava/lang/String;

    const-string v0, "playkit"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->ad_sdk:Ljava/lang/String;

    const-string v0, "preroll"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->ad_pos:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->error_msg:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->error_code:Ljava/lang/String;

    const-string v0, "network"

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->reason:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/statistics/FlickStatsEvent;->timestamp:J

    return-void
.end method
