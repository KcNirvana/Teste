.class public Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# static fields
.field public static final SUBTITLE_LANGUAGE_TYPE_IN_CHS:I = 0x1

.field public static final SUBTITLE_LANGUAGE_TYPE_IN_CHS_OTHER:I = 0x5

.field public static final SUBTITLE_LANGUAGE_TYPE_IN_CHT:I = 0x3

.field public static final SUBTITLE_LANGUAGE_TYPE_IN_OTHER:I = 0x7

.field public static final SUBTITLE_LANGUAGE_TYPE_UNKOWN:I = 0x9

.field public static final SUBTITLE_TYPE_EXTERNAL:I = 0x0

.field public static final SUBTITLE_TYPE_INTERNAL:I = 0x1


# instance fields
.field private format:Ljava/lang/String;

.field private isSelected:Z

.field private isSubtitle:Z

.field private language:Ljava/lang/String;

.field private mode:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private posInTrack:I

.field private subType:I

.field private sub_language_type:I

.field private timeoffset:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->language:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->format:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->subType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->type:I

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->mode:I

    const/16 v2, 0x9

    iput v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->posInTrack:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSubtitle:Z

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->timeoffset:I

    return-void
.end method

.method public static sortSubtitleTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack$1;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPosInTrack()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->posInTrack:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->subType:I

    return v0
.end method

.method public getTimeoffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->timeoffset:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->type:I

    return v0
.end method

.method public isChsType()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSelected:Z

    return v0
.end method

.method public isSubtitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSubtitle:Z

    return v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->format:Ljava/lang/String;

    return-void
.end method

.method public setIsSubtitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSubtitle:Z

    return-void
.end method

.method public setLanguageAndType(Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->language:Ljava/lang/String;

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->type:I

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->getInstance()Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->getSubLanguageType(ZLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->sub_language_type:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->mode:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->path:Ljava/lang/String;

    return-void
.end method

.method public setPosInTrack(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->posInTrack:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->isSelected:Z

    return-void
.end method

.method public setSubType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->subType:I

    return-void
.end method

.method public setTimeoffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->timeoffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", full name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", posInTrack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->posInTrack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
