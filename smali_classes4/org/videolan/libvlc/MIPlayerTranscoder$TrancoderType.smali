.class public final enum Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;
.super Ljava/lang/Enum;
.source "MIPlayerTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MIPlayerTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrancoderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_MATCH_MUSIC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_NONE:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_SLOW_MOTION:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_TRANSTO_AAC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    const-string v1, "TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_NONE:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    new-instance v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    const-string v1, "TYPE_SLOW_MOTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_SLOW_MOTION:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    new-instance v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    const-string v1, "TYPE_MATCH_MUSIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_MATCH_MUSIC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    new-instance v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    const-string v1, "TYPE_TRANSTO_AAC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_TRANSTO_AAC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    sget-object v1, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_NONE:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_SLOW_MOTION:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_MATCH_MUSIC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_TRANSTO_AAC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->$VALUES:[Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;
    .locals 1

    const-class v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    return-object p0
.end method

.method public static values()[Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;
    .locals 1

    sget-object v0, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->$VALUES:[Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-virtual {v0}, [Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    return-object v0
.end method
