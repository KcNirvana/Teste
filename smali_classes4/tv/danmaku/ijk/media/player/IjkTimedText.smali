.class public final Ltv/danmaku/ijk/media/player/IjkTimedText;
.super Ljava/lang/Object;
.source "IjkTimedText.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/ITimedText;


# instance fields
.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextChars:Ljava/lang/String;

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextChars:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
