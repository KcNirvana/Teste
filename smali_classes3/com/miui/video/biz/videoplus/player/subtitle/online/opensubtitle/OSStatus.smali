.class public final enum Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;
.super Ljava/lang/Enum;
.source "OSStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum DISABLED_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum DOWNLOAD_LIMIT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum HASH_NOT_MATCHING:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_FIELD_FORMAT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_FORMAT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_IMDB_ID:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_LANGUAGE:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_METHOD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_PARAMETERS:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum INVALID_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum MISSING_PARAMETERS:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum MOVED:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum NO_SESSION:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum OK:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum PARTIAL_CONTENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum UNAUTHORIZED:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

.field public static final enum UNKNOWN_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "OK"

    const-string v2, "200"

    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->OK:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "PARTIAL_CONTENT"

    const-string v2, "206"

    const-string v3, "Partial content; message"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->PARTIAL_CONTENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "MOVED"

    const-string v2, "301"

    const-string v3, "Moved (host)"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->MOVED:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "UNAUTHORIZED"

    const-string v2, "401"

    const-string v3, "Unauthorized"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->UNAUTHORIZED:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_FORMAT"

    const-string v2, "402"

    const-string v3, "Subtitles has invalid format"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_FORMAT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "HASH_NOT_MATCHING"

    const-string v2, "403"

    const-string v3, "SubHashes (content and sent subhash) are not same!"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->HASH_NOT_MATCHING:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_LANGUAGE"

    const-string v2, "404"

    const-string v3, "Subtitles has invalid language!"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_LANGUAGE:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "MISSING_PARAMETERS"

    const-string v2, "405"

    const-string v3, "Not all mandatory parameters was specified"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->MISSING_PARAMETERS:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "NO_SESSION"

    const-string v2, "406"

    const-string v3, "No session"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->NO_SESSION:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "DOWNLOAD_LIMIT"

    const-string v2, "407"

    const-string v3, "Download limit reached"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->DOWNLOAD_LIMIT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_PARAMETERS"

    const-string v2, "408"

    const-string v3, "Invalid parameters"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_PARAMETERS:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_METHOD"

    const-string v2, "409"

    const-string v3, "Method not found"

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_METHOD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "410"

    const-string v3, "Other or unknown error"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->UNKNOWN_ERROR:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_USER_AGENT"

    const-string v2, "411"

    const-string v3, "Empty or invalid useragent"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_FIELD_FORMAT"

    const-string v2, "412"

    const-string v3, "%s has invalid format (reason)"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_FIELD_FORMAT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "INVALID_IMDB_ID"

    const-string v2, "413"

    const-string v3, "Invalid ImdbID"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_IMDB_ID:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "UNKNOWN_USER_AGENT"

    const-string v2, "414"

    const-string v3, "Unknown User Agent"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->UNKNOWN_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "DISABLED_USER_AGENT"

    const-string v2, "415"

    const-string v3, "Disabled user agent"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->DISABLED_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const-string v1, "SERVICE_UNAVAILABLE"

    const-string v2, "503"

    const-string v3, "Service Unavailable"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->SERVICE_UNAVAILABLE:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->OK:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->PARTIAL_CONTENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->MOVED:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->UNAUTHORIZED:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_FORMAT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->HASH_NOT_MATCHING:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_LANGUAGE:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->MISSING_PARAMETERS:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->NO_SESSION:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->DOWNLOAD_LIMIT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v13

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_PARAMETERS:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    aput-object v1, v0, v14

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_METHOD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->UNKNOWN_ERROR:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_FIELD_FORMAT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->INVALID_IMDB_ID:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->UNKNOWN_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->DISABLED_USER_AGENT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->SERVICE_UNAVAILABLE:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->$VALUES:[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

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

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->description:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->values()[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;
    .locals 1

    const-class v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->$VALUES:[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    invoke-virtual {v0}, [Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->code:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->code:Ljava/lang/String;

    return-object v0
.end method
