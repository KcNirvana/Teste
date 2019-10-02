.class public abstract Lcom/kaltura/playkit/player/BaseExoplayerView;
.super Lcom/kaltura/playkit/player/PlayerView;
.source "BaseExoplayerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/PlayerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/player/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/player/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZZ)V
.end method

.method public abstract setVideoSurfaceProperties(ZZ)V
.end method
