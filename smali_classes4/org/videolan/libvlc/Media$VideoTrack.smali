.class public Lorg/videolan/libvlc/Media$VideoTrack;
.super Lorg/videolan/libvlc/Media$Track;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoTrack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$VideoTrack$Projection;,
        Lorg/videolan/libvlc/Media$VideoTrack$Orientation;
    }
.end annotation


# instance fields
.field public final frameRateDen:I

.field public final frameRateNum:I

.field public final height:I

.field public final orientation:I

.field public final projection:I

.field public final sarDen:I

.field public final sarNum:I

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 12

    move-object v11, p0

    const/4 v1, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lorg/videolan/libvlc/Media$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V

    move/from16 v0, p9

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->height:I

    move/from16 v0, p10

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->width:I

    move/from16 v0, p11

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->sarNum:I

    move/from16 v0, p12

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->sarDen:I

    move/from16 v0, p13

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->frameRateNum:I

    move/from16 v0, p14

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->frameRateDen:I

    move/from16 v0, p15

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->orientation:I

    move/from16 v0, p16

    iput v0, v11, Lorg/videolan/libvlc/Media$VideoTrack;->projection:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIIIIILorg/videolan/libvlc/Media$1;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lorg/videolan/libvlc/Media$VideoTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIIIIIII)V

    return-void
.end method
