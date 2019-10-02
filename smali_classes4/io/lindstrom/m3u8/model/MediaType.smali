.class public final enum Lio/lindstrom/m3u8/model/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/lindstrom/m3u8/model/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/lindstrom/m3u8/model/MediaType;

.field public static final enum AUDIO:Lio/lindstrom/m3u8/model/MediaType;

.field public static final enum CLOSED_CAPTIONS:Lio/lindstrom/m3u8/model/MediaType;

.field private static final CLOSED_CAPTIONS_STRING:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field public static final enum SUBTITLES:Lio/lindstrom/m3u8/model/MediaType;

.field public static final enum VIDEO:Lio/lindstrom/m3u8/model/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/lindstrom/m3u8/model/MediaType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/lindstrom/m3u8/model/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/MediaType;->AUDIO:Lio/lindstrom/m3u8/model/MediaType;

    new-instance v0, Lio/lindstrom/m3u8/model/MediaType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/lindstrom/m3u8/model/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/MediaType;->VIDEO:Lio/lindstrom/m3u8/model/MediaType;

    new-instance v0, Lio/lindstrom/m3u8/model/MediaType;

    const-string v1, "SUBTITLES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/lindstrom/m3u8/model/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/MediaType;->SUBTITLES:Lio/lindstrom/m3u8/model/MediaType;

    new-instance v0, Lio/lindstrom/m3u8/model/MediaType;

    const-string v1, "CLOSED_CAPTIONS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/lindstrom/m3u8/model/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/MediaType;->CLOSED_CAPTIONS:Lio/lindstrom/m3u8/model/MediaType;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/lindstrom/m3u8/model/MediaType;

    sget-object v1, Lio/lindstrom/m3u8/model/MediaType;->AUDIO:Lio/lindstrom/m3u8/model/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lio/lindstrom/m3u8/model/MediaType;->VIDEO:Lio/lindstrom/m3u8/model/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lio/lindstrom/m3u8/model/MediaType;->SUBTITLES:Lio/lindstrom/m3u8/model/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lio/lindstrom/m3u8/model/MediaType;->CLOSED_CAPTIONS:Lio/lindstrom/m3u8/model/MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lio/lindstrom/m3u8/model/MediaType;->$VALUES:[Lio/lindstrom/m3u8/model/MediaType;

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

.method public static parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaType;
    .locals 1

    const-string v0, "CLOSED-CAPTIONS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lio/lindstrom/m3u8/model/MediaType;->CLOSED_CAPTIONS:Lio/lindstrom/m3u8/model/MediaType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/lindstrom/m3u8/model/MediaType;->valueOf(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaType;
    .locals 1

    const-class v0, Lio/lindstrom/m3u8/model/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/lindstrom/m3u8/model/MediaType;

    return-object p0
.end method

.method public static values()[Lio/lindstrom/m3u8/model/MediaType;
    .locals 1

    sget-object v0, Lio/lindstrom/m3u8/model/MediaType;->$VALUES:[Lio/lindstrom/m3u8/model/MediaType;

    invoke-virtual {v0}, [Lio/lindstrom/m3u8/model/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/lindstrom/m3u8/model/MediaType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/lindstrom/m3u8/model/MediaType;->CLOSED_CAPTIONS:Lio/lindstrom/m3u8/model/MediaType;

    if-ne p0, v0, :cond_0

    const-string v0, "CLOSED-CAPTIONS"

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
