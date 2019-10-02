.class public Lcom/kaltura/playkit/player/AudioTrack;
.super Lcom/kaltura/playkit/player/BaseTrack;
.source "AudioTrack.java"


# instance fields
.field private bitrate:J

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 0

    invoke-direct {p0, p1, p6, p7}, Lcom/kaltura/playkit/player/BaseTrack;-><init>(Ljava/lang/String;IZ)V

    iput-object p3, p0, Lcom/kaltura/playkit/player/AudioTrack;->label:Ljava/lang/String;

    iput-wide p4, p0, Lcom/kaltura/playkit/player/AudioTrack;->bitrate:J

    iput-object p2, p0, Lcom/kaltura/playkit/player/AudioTrack;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitrate()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/player/AudioTrack;->bitrate:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/AudioTrack;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/AudioTrack;->language:Ljava/lang/String;

    return-object v0
.end method
