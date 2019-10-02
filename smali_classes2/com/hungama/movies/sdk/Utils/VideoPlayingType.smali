.class public final enum Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
.super Ljava/lang/Enum;
.source "VideoPlayingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hungama/movies/sdk/Utils/VideoPlayingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum CONTINUE_WATCHING:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum LIVE_SHOW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum PURCHASED:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

.field public static final enum TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "CONTINUE_WATCHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->CONTINUE_WATCHING:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "TRAILER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "PURCHASED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PURCHASED:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "MUSIC_VIDEO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "SERIAL_EPISODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "LIVE_SHOW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LIVE_SHOW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "LOCAL_VIDEO"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    new-instance v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const-string v1, "MOVIE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v5}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->CONTINUE_WATCHING:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PURCHASED:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LIVE_SHOW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->$VALUES:[Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->mType:I

    return-void
.end method

.method public static fromInteger(I)Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->TRAILER:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->PREVIEW:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->CONTINUE_WATCHING:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->LOCAL_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromString(Ljava/lang/String;)Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->values()[Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
    .locals 1

    const-class v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0
.end method

.method public static values()[Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->$VALUES:[Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    invoke-virtual {v0}, [Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->mType:I

    return v0
.end method
