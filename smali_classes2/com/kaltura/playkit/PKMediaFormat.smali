.class public final enum Lcom/kaltura/playkit/PKMediaFormat;
.super Ljava/lang/Enum;
.source "PKMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/PKMediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/PKMediaFormat;

.field public static final enum dash:Lcom/kaltura/playkit/PKMediaFormat;

.field private static extensionLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kaltura/playkit/PKMediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum hls:Lcom/kaltura/playkit/PKMediaFormat;

.field public static final enum mp3:Lcom/kaltura/playkit/PKMediaFormat;

.field public static final enum mp4:Lcom/kaltura/playkit/PKMediaFormat;

.field public static final enum unknown:Lcom/kaltura/playkit/PKMediaFormat;

.field public static final enum wvm:Lcom/kaltura/playkit/PKMediaFormat;


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final pathExt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/kaltura/playkit/PKMediaFormat;

    const-string v1, "dash"

    const-string v2, "application/dash+xml"

    const-string v3, "mpd"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kaltura/playkit/PKMediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->dash:Lcom/kaltura/playkit/PKMediaFormat;

    new-instance v0, Lcom/kaltura/playkit/PKMediaFormat;

    const-string v1, "hls"

    const-string v2, "application/x-mpegURL"

    const-string v3, "m3u8"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/kaltura/playkit/PKMediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->hls:Lcom/kaltura/playkit/PKMediaFormat;

    new-instance v0, Lcom/kaltura/playkit/PKMediaFormat;

    const-string v1, "wvm"

    const-string v2, "video/wvm"

    const-string v3, "wvm"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/kaltura/playkit/PKMediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->wvm:Lcom/kaltura/playkit/PKMediaFormat;

    new-instance v0, Lcom/kaltura/playkit/PKMediaFormat;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    const-string v3, "mp4"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/kaltura/playkit/PKMediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->mp4:Lcom/kaltura/playkit/PKMediaFormat;

    new-instance v0, Lcom/kaltura/playkit/PKMediaFormat;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    const-string v3, "mp3"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/kaltura/playkit/PKMediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->mp3:Lcom/kaltura/playkit/PKMediaFormat;

    new-instance v0, Lcom/kaltura/playkit/PKMediaFormat;

    const-string v1, "unknown"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/kaltura/playkit/PKMediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->unknown:Lcom/kaltura/playkit/PKMediaFormat;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaltura/playkit/PKMediaFormat;

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->dash:Lcom/kaltura/playkit/PKMediaFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->hls:Lcom/kaltura/playkit/PKMediaFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->wvm:Lcom/kaltura/playkit/PKMediaFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->mp4:Lcom/kaltura/playkit/PKMediaFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->mp3:Lcom/kaltura/playkit/PKMediaFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->unknown:Lcom/kaltura/playkit/PKMediaFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->$VALUES:[Lcom/kaltura/playkit/PKMediaFormat;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/PKMediaFormat;->extensionLookup:Ljava/util/Map;

    invoke-static {}, Lcom/kaltura/playkit/PKMediaFormat;->values()[Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v2, v0, v4

    sget-object v3, Lcom/kaltura/playkit/PKMediaFormat;->extensionLookup:Ljava/util/Map;

    iget-object v5, v2, Lcom/kaltura/playkit/PKMediaFormat;->pathExt:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/kaltura/playkit/PKMediaFormat;->extensionLookup:Ljava/util/Map;

    iget-object v5, v2, Lcom/kaltura/playkit/PKMediaFormat;->pathExt:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kaltura/playkit/PKMediaFormat;->mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kaltura/playkit/PKMediaFormat;->pathExt:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/PKMediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PKMediaFormat;

    return-object p0
.end method

.method public static valueOfExt(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PKMediaFormat;->extensionLookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PKMediaFormat;

    return-object p0
.end method

.method public static valueOfUrl(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaFormat;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kaltura/playkit/PKMediaFormat;->valueOfExt(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static values()[Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PKMediaFormat;->$VALUES:[Lcom/kaltura/playkit/PKMediaFormat;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/PKMediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/PKMediaFormat;

    return-object v0
.end method
