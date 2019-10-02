.class Lcom/kaltura/playkit/player/TrackSelectionHelper;
.super Ljava/lang/Object;
.source "TrackSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;
    }
.end annotation


# static fields
.field private static final ADAPTIVE:Ljava/lang/String; = "adaptive"

.field private static final AUDIO_PREFIX:Ljava/lang/String; = "Audio:"

.field private static final CEA_608:Ljava/lang/String; = "application/cea-608"

.field private static final GROUP_INDEX:I = 0x1

.field private static final LANGUAGE_UNKNOWN:Ljava/lang/String; = "Unknown"

.field static final NONE:Ljava/lang/String; = "none"

.field private static final RENDERER_INDEX:I = 0x0

.field private static final TEXT_PREFIX:Ljava/lang/String; = "Text:"

.field private static final TRACK_ADAPTIVE:I = -0x1

.field private static final TRACK_DISABLED:I = -0x2

.field private static final TRACK_INDEX:I = 0x2

.field private static final TRACK_RENDERERS_AMOUNT:I = 0x3

.field private static final VIDEO_PREFIX:Ljava/lang/String; = "Video:"

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private audioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private cea608CaptionsEnabled:Z

.field private lastSelectedTrackIds:[Ljava/lang/String;

.field private mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private mpgaAudioFormatEnabled:Z

.field private preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

.field private preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

.field private requestedChangeTrackIds:[Ljava/lang/String;

.field private final selector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private textTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/TextTrack;",
            ">;"
        }
    .end annotation
.end field

.field private trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

.field private videoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TrackSelectionHelper"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    iput-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->selector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    return-void
.end method

.method private adaptiveTrackAlreadyExist(Ljava/lang/String;I)Z
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/BaseTrack;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/BaseTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildTracks(Z)Lcom/kaltura/playkit/player/PKTracks;
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->clearTracksLists()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    iget-object v4, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_7

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    iget v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-direct {v0, v3, v5, v8}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->maybeAddAdaptiveTrack(IILcom/google/android/exoplayer2/Format;)V

    invoke-direct {v0, v3, v5, v7}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isFormatSupported(III)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {v0, v3, v5, v7}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getUniqueId(III)Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_3
    move/from16 v18, v3

    goto/16 :goto_4

    :pswitch_0
    if-nez p1, :cond_1

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    :cond_1
    const-string v10, "application/cea-608"

    iget-object v12, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v9, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->cea608CaptionsEnabled:Z

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    new-instance v10, Lcom/kaltura/playkit/player/TextTrack;

    iget-object v12, v8, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v13, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-direct {v10, v11, v12, v13, v8}, Lcom/kaltura/playkit/player/TextTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v10, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    new-instance v12, Lcom/kaltura/playkit/player/TextTrack;

    invoke-direct {v0, v8}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getLanguageFromFormat(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v13

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-direct {v12, v11, v13, v9, v8}, Lcom/kaltura/playkit/player/TextTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    if-nez p1, :cond_3

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    :cond_3
    move-object v13, v9

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-boolean v9, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mpgaAudioFormatEnabled:Z

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-string v10, "\\d+/\\d+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    new-instance v14, Lcom/kaltura/playkit/player/AudioTrack;

    iget-object v12, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v10, v8, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v18, v3

    int-to-long v2, v10

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/16 v17, 0x0

    move-object v10, v14

    move-object v1, v14

    move-wide v14, v2

    move/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/kaltura/playkit/player/AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move/from16 v18, v3

    iget-object v1, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    new-instance v2, Lcom/kaltura/playkit/player/AudioTrack;

    invoke-direct {v0, v8}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getLanguageFromFormat(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v12

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v14, v3

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lcom/kaltura/playkit/player/AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_2
    move/from16 v18, v3

    iget-object v1, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    new-instance v2, Lcom/kaltura/playkit/player/VideoTrack;

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v12, v3

    iget v14, v8, Lcom/google/android/exoplayer2/Format;->width:I

    iget v15, v8, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lcom/kaltura/playkit/player/VideoTrack;-><init>(Ljava/lang/String;JIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move/from16 v18, v3

    sget-object v1, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format is not supported for this device. Format bitrate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v18

    goto/16 :goto_2

    :cond_6
    move/from16 v18, v3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    move/from16 v18, v3

    add-int/lit8 v3, v18, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->maybeAddDisabledTextTrack()V

    invoke-direct/range {p0 .. p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->filterAdaptiveAudioTracks()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v1, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    iget-object v2, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getDefaultTrackIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v8

    iget-object v1, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    iget-object v2, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getDefaultTrackIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v9

    iget-object v1, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    iget-object v2, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getDefaultTrackIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v10

    new-instance v1, Lcom/kaltura/playkit/player/PKTracks;

    iget-object v5, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    iget-object v7, v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/kaltura/playkit/player/PKTracks;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;III)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private clearTracksLists()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private convertAdaptiveListToArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private filterAdaptiveAudioTracks()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kaltura/playkit/player/AudioTrack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kaltura/playkit/player/AudioTrack;

    invoke-virtual {v4}, Lcom/kaltura/playkit/player/AudioTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->parseUniqueId(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v5, v6

    const/4 v7, 0x1

    if-ne v6, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v3, v5, v7

    goto :goto_1

    :cond_0
    aget v5, v5, v7

    if-eq v5, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getDefaultTrackIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/kaltura/playkit/player/BaseTrack;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kaltura/playkit/player/BaseTrack;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/BaseTrack;->getSelectionFlag()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->restoreLastSelectedTrack(Ljava/util/List;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getIndexFromUniqueId(Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, p2

    const-string v1, "adaptive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getLanguageFromFormat(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Unknown"

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    return-object p1
.end method

.method private getUniqueId(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getUniqueIdPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p3}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getUniqueIdPostfix(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUniqueIdPostfix(II)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "adaptive"

    return-object p1

    :pswitch_1
    const-string p1, "none"

    return-object p1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUniqueIdPrefix(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "Text:"

    return-object p1

    :pswitch_1
    const-string p1, "Audio:"

    return-object p1

    :pswitch_2
    const-string p1, "Video:"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAdaptive(II)Z
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFormatSupported(III)Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isGroupIndexValid([I)Z
    .locals 4

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    aget v1, p1, v0

    iget-object v3, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget p1, p1, v2

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRendererTypeValid(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTrackIndexValid([I)Z
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget p1, p1, v4

    const/4 v5, -0x1

    if-ne v1, v4, :cond_1

    if-eq p1, v5, :cond_0

    const/4 v4, -0x2

    if-lt p1, v4, :cond_0

    iget-object v4, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-lt p1, v5, :cond_2

    iget-object v4, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isValidPreferredAudioConfig()Z
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PKTrackConfig$Mode;->OFF:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PKTrackConfig$Mode;->SELECTION:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidPreferredTextConfig()Z
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PKTrackConfig$Mode;->SELECTION:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeAddAdaptiveTrack(IILcom/google/android/exoplayer2/Format;)V
    .locals 9

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getUniqueId(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isAdaptive(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->adaptiveTrackAlreadyExist(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    new-instance p2, Lcom/kaltura/playkit/player/TextTrack;

    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget p3, p3, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-direct {p2, v2, v0, v1, p3}, Lcom/kaltura/playkit/player/TextTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    new-instance p2, Lcom/kaltura/playkit/player/AudioTrack;

    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iget v7, p3, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/4 v8, 0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/kaltura/playkit/player/AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    new-instance p2, Lcom/kaltura/playkit/player/VideoTrack;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p3, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/4 v8, 0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/kaltura/playkit/player/VideoTrack;-><init>(Ljava/lang/String;JIIIZ)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeAddDisabledTextTrack()V
    .locals 7

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getUniqueId(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    new-instance v3, Lcom/kaltura/playkit/player/TextTrack;

    const-string v4, "none"

    const-string v5, "none"

    const/4 v6, -0x1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/kaltura/playkit/player/TextTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private overrideTrack(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :goto_0
    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->selector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void
.end method

.method private parseUniqueId(Ljava/lang/String;)[I
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4dd8298a

    const/4 v6, -0x1

    if-eq v4, v5, :cond_1

    const v5, 0x33af38

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "adaptive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_3

    :pswitch_0
    const/4 v3, -0x2

    aput v3, v0, v2

    goto :goto_3

    :pswitch_1
    aput v6, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method private restoreLastSelectedTrack(Ljava/util/List;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/kaltura/playkit/player/BaseTrack;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/BaseTrack;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/BaseTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->changeTrack(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/player/BaseTrack;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/BaseTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method private retrieveOverrideSelection([I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 8

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget p1, p1, v4

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/player/AudioTrack;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/AudioTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getIndexFromUniqueId(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/AudioTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getIndexFromUniqueId(Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v3, :cond_1

    if-eq v7, v5, :cond_1

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/AudioTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getIndexFromUniqueId(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    :pswitch_1
    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/player/VideoTrack;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/VideoTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getIndexFromUniqueId(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/VideoTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getIndexFromUniqueId(Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v3, :cond_2

    if-eq v7, v5, :cond_2

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/VideoTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getIndexFromUniqueId(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->convertAdaptiveListToArray(Ljava/util/List;)[I

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v0, v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    goto :goto_4

    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v2, v2, [I

    aput p1, v2, v0

    invoke-direct {v1, v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    move-object v0, v1

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldNotifyAboutTrackChanged(I)Z
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private validateUniqueId(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const-string v0, "Video:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Audio:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Text:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid structure of uniqueId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->parseUniqueId(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isRendererTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isGroupIndexValid([I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isTrackIndexValid([I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track selection with uniqueId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. Due to invalid track index. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    aget p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track selection with uniqueId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. Due to invalid group index. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    aget p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Track selection with uniqueId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. Due to invalid renderer index. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uniqueId is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private warnAboutUnsupportedRenderTypes()V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "Warning! All the video tracks are unsupported by this device."

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Warning! All the audio tracks are unsupported by this device."

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method applyPlayerSettings(Lcom/kaltura/playkit/player/PlayerSettings;)V
    .locals 1

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->mpgaAudioFormatEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mpgaAudioFormatEnabled:Z

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->cea608CaptionsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->cea608CaptionsEnabled:Z

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->getPreferredAudioTrackConfig()Lcom/kaltura/playkit/PKTrackConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->getPreferredTextTrackConfig()Lcom/kaltura/playkit/PKTrackConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    return-void
.end method

.method changeTrack(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request change track to uniqueID -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->selector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to get current MappedTrackInfo returns null. Do not change track with id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->validateUniqueId(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->selector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget v4, v0, v3

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_2
    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->retrieveOverrideSelection([I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->overrideTrack(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void
.end method

.method getCurrentAudioBitrate()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getCurrentVideoBitrate()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getCurrentVideoHeight()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getCurrentVideoWidth()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->width:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;
    .locals 4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/player/TextTrack;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/TextTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/player/AudioTrack;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/AudioTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->videoTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/player/VideoTrack;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/VideoTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    :goto_0
    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For some reason we could not found lastSelectedTrack of the specified render type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getPreferredTrackId(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isValidPreferredTextConfig()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kaltura/playkit/player/TextTrack;

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/TextTrack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "none"

    iget-object v6, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v6}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/TextTrack;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing track type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v6}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/TextTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    sget-object v4, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v3}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredTextLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKTrackConfig;->getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;

    move-result-object p1

    sget-object v1, Lcom/kaltura/playkit/PKTrackConfig$Mode;->AUTO:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_b

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/TextTrack;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/TextTrack;->getSelectionFlag()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/TextTrack;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->textTracks:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kaltura/playkit/player/TextTrack;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/TextTrack;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->isValidPreferredAudioConfig()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->audioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kaltura/playkit/player/AudioTrack;

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/AudioTrack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing track type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->preferredAudioLanguageConfig:Lcom/kaltura/playkit/PKTrackConfig;

    invoke-virtual {v6}, Lcom/kaltura/playkit/PKTrackConfig;->getTrackLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/AudioTrack;->getUniqueId()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v3

    sget-object v4, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v3}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method notifyAboutTrackChange(Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3

    iput-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->trackSelectionArray:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->shouldNotifyAboutTrackChanged(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video track changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    aput-object v1, v0, p1

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-interface {p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;->onVideoTrackChanged()V

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->shouldNotifyAboutTrackChanged(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio track changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    aput-object v1, v0, p1

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-interface {p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;->onAudioTrackChanged()V

    :cond_2
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->shouldNotifyAboutTrackChanged(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text track changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    aput-object v1, v0, p1

    iget-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-interface {p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;->onTextTrackChanged()V

    :cond_3
    return-void
.end method

.method prepareTracks(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->selector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/TrackSelectionHelper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Trying to get current MappedTrackInfo returns null"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->warnAboutUnsupportedRenderTypes()V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->buildTracks(Z)Lcom/kaltura/playkit/player/PKTracks;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;->onTracksInfoReady(Lcom/kaltura/playkit/player/PKTracks;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method release()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    iget-object v1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;->onRelease([Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->clearTracksLists()V

    return-void
.end method

.method setTracksInfoListener(Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    return-void
.end method

.method stop()V
    .locals 3

    const-string v0, "none"

    const-string v1, "none"

    const-string v2, "none"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->lastSelectedTrackIds:[Ljava/lang/String;

    const-string v0, "none"

    const-string v1, "none"

    const-string v2, "none"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/TrackSelectionHelper;->requestedChangeTrackIds:[Ljava/lang/String;

    return-void
.end method
