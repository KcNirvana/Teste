.class public Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;
.super Ljava/lang/Object;
.source "VlcMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/ITrackInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/VlcMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VlcTrackInfo"
.end annotation


# instance fields
.field private mLanguage:Ljava/lang/String;

.field private mTrackType:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mTrackType:I

    const-string v0, "und"

    iput-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mTrackType:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "TIMEDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    iget v0, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mTrackType:I

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mLanguage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    iput p1, p0, Lorg/videolan/libvlc/VlcMediaPlayer$VlcTrackInfo;->mTrackType:I

    return-void
.end method
