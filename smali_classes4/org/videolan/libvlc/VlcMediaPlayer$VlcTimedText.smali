.class public Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;
.super Ljava/lang/Object;
.source "VlcMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/ITimedText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/VlcMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VlcTimedText"
.end annotation


# instance fields
.field private mDuration:J

.field private mStartTime:J

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mTextChars:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mStartTime:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mDuration:J

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mTextChars:Ljava/lang/String;

    iput-wide p2, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mStartTime:J

    iput-wide p4, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mDuration:J

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mDuration:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mStartTime:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
