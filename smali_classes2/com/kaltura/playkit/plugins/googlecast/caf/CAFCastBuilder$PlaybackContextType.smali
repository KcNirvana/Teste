.class public final enum Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;
.super Ljava/lang/Enum;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

.field public static final enum Catchup:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

.field public static final enum Playback:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

.field public static final enum StartOver:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

.field public static final enum Trailer:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    const-string v1, "Trailer"

    const-string v2, "TRAILER"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->Trailer:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    const-string v1, "Catchup"

    const-string v2, "CATCHUP"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->Catchup:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    const-string v1, "StartOver"

    const-string v2, "START_OVER"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->StartOver:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    const-string v1, "Playback"

    const-string v2, "PLAYBACK"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->Playback:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->Trailer:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->Catchup:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->StartOver:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->Playback:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    return-object v0
.end method
