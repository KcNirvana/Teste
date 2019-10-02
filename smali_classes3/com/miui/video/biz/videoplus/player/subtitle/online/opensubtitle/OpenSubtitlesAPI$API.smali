.class final enum Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;
.super Ljava/lang/Enum;
.source "OpenSubtitlesAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "API"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

.field public static final enum DOWNLOAD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

.field public static final enum LOGIN:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

.field public static final enum LOGOUT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

.field public static final enum SEARCH:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

.field public static final enum SEARCH_IMDB:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;


# instance fields
.field private functionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    const-string v1, "LOGIN"

    const-string v2, "LogIn"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->LOGIN:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    const-string v1, "SEARCH"

    const-string v2, "SearchSubtitles"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->SEARCH:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    const-string v1, "DOWNLOAD"

    const-string v2, "DownloadSubtitles"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->DOWNLOAD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    const-string v1, "SEARCH_IMDB"

    const-string v2, "SearchMoviesOnIMDB"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->SEARCH_IMDB:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    const-string v1, "LOGOUT"

    const-string v2, "LogOut"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->LOGOUT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->LOGIN:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->SEARCH:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->DOWNLOAD:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->SEARCH_IMDB:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->LOGOUT:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->$VALUES:[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

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

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->functionName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;
    .locals 1

    const-class v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->$VALUES:[Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    invoke-virtual {v0}, [Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI$API;->functionName:Ljava/lang/String;

    return-object v0
.end method
