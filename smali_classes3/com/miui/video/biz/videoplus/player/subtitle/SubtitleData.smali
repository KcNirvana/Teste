.class public Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STYLED_TEXT:I = 0x3

.field public static final TYPE_TEXT:I = 0x1


# instance fields
.field mDuration:J

.field private mShow:Z

.field mStartTime:J

.field private mSubKey:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mShow:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mStartTime:J

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mDuration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->getSubKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mSubKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mSubKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mDuration:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mStartTime:J

    return-wide v0
.end method

.method public getSubKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mSubKey:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mType:I

    return v0
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mShow:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mDuration:J

    return-void
.end method

.method public setGone()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mShow:Z

    return-void
.end method

.method public setShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mShow:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mStartTime:J

    return-void
.end method

.method public setSubKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mSubKey:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mText:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->mType:I

    return-void
.end method
