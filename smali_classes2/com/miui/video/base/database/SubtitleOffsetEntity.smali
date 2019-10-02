.class public Lcom/miui/video/base/database/SubtitleOffsetEntity;
.super Ljava/lang/Object;
.source "SubtitleOffsetEntity.java"


# instance fields
.field private path:Ljava/lang/String;

.field private timeOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/database/SubtitleOffsetEntity;->timeOffset:I

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/SubtitleOffsetEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/SubtitleOffsetEntity;->timeOffset:I

    return v0
.end method

.method public setPath(Ljava/lang/String;)Lcom/miui/video/base/database/SubtitleOffsetEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/SubtitleOffsetEntity;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeOffset(I)Lcom/miui/video/base/database/SubtitleOffsetEntity;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/base/database/SubtitleOffsetEntity;->timeOffset:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/video/base/database/SubtitleOffsetEntity;->timeOffset:I

    :goto_0
    return-object p0
.end method
