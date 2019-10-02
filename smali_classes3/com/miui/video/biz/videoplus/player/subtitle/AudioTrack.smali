.class public Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# instance fields
.field private id:I

.field private isSelected:Z

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->id:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->language:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->isSelected:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->id:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->language:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
