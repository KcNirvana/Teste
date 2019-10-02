.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# static fields
.field public static final AUDIO_CODEC_DOLBY:I = 0x0

.field public static final AUDIO_CODEC_DOLBY_PLUS:I = 0x1

.field public static final AUDIO_CODEC_DTS:I = 0x2

.field public static final AUDIO_CODEC_DTS_EXPRESS:I = 0x3

.field public static final AUDIO_CODEC_DTS_HDH:I = 0x5

.field public static final AUDIO_CODEC_DTS_HDL:I = 0x6

.field public static final AUDIO_CODEC_ELSE:I = -0x1

.field public static final AUDIO_DIGITAL_ELSE:I = -0x1

.field public static final AUDIO_DIGITAL_PCM:I = 0x0

.field public static final AUDIO_DIGITAL_RAW:I = 0x1


# instance fields
.field private codec:I

.field private id:I

.field private isSelected:Z

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->id:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->codec:I

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCodec()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->codec:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->id:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->language:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->isSelected:Z

    return v0
.end method

.method public setCodec(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->codec:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->id:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->language:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->codec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
