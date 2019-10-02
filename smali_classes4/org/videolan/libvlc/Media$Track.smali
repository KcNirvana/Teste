.class public abstract Lorg/videolan/libvlc/Media$Track;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Track"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$Track$Type;
    }
.end annotation


# instance fields
.field public final bitrate:I

.field public final codec:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final id:I

.field public final language:Ljava/lang/String;

.field public final level:I

.field public final originalCodec:Ljava/lang/String;

.field public final profile:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/Media$Track;->type:I

    iput-object p2, p0, Lorg/videolan/libvlc/Media$Track;->codec:Ljava/lang/String;

    iput-object p3, p0, Lorg/videolan/libvlc/Media$Track;->originalCodec:Ljava/lang/String;

    iput p4, p0, Lorg/videolan/libvlc/Media$Track;->id:I

    iput p5, p0, Lorg/videolan/libvlc/Media$Track;->profile:I

    iput p6, p0, Lorg/videolan/libvlc/Media$Track;->level:I

    iput p7, p0, Lorg/videolan/libvlc/Media$Track;->bitrate:I

    iput-object p8, p0, Lorg/videolan/libvlc/Media$Track;->language:Ljava/lang/String;

    iput-object p9, p0, Lorg/videolan/libvlc/Media$Track;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/videolan/libvlc/Media$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
