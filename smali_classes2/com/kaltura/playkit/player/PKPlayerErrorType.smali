.class public final enum Lcom/kaltura/playkit/player/PKPlayerErrorType;
.super Ljava/lang/Enum;
.source "PKPlayerErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/player/PKPlayerErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/player/PKPlayerErrorType;

.field public static final enum DRM_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

.field public static final enum FAILED_TO_INITIALIZE_PLAYER:Lcom/kaltura/playkit/player/PKPlayerErrorType;

.field public static final enum RENDERER_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

.field public static final enum SOURCE_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

.field public static final enum SOURCE_SELECTION_FAILED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

.field public static final enum UNEXPECTED:Lcom/kaltura/playkit/player/PKPlayerErrorType;


# instance fields
.field public final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v1, "SOURCE_ERROR"

    const/4 v2, 0x0

    const/16 v3, 0x1b58

    invoke-direct {v0, v1, v2, v3}, Lcom/kaltura/playkit/player/PKPlayerErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->SOURCE_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    new-instance v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v1, "RENDERER_ERROR"

    const/4 v3, 0x1

    const/16 v4, 0x1b59

    invoke-direct {v0, v1, v3, v4}, Lcom/kaltura/playkit/player/PKPlayerErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->RENDERER_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    new-instance v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v1, "UNEXPECTED"

    const/4 v4, 0x2

    const/16 v5, 0x1b5a

    invoke-direct {v0, v1, v4, v5}, Lcom/kaltura/playkit/player/PKPlayerErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->UNEXPECTED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    new-instance v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v1, "SOURCE_SELECTION_FAILED"

    const/4 v5, 0x3

    const/16 v6, 0x1b5b

    invoke-direct {v0, v1, v5, v6}, Lcom/kaltura/playkit/player/PKPlayerErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->SOURCE_SELECTION_FAILED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    new-instance v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v1, "FAILED_TO_INITIALIZE_PLAYER"

    const/4 v6, 0x4

    const/16 v7, 0x1b5c

    invoke-direct {v0, v1, v6, v7}, Lcom/kaltura/playkit/player/PKPlayerErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->FAILED_TO_INITIALIZE_PLAYER:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    new-instance v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v1, "DRM_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0x1b5d

    invoke-direct {v0, v1, v7, v8}, Lcom/kaltura/playkit/player/PKPlayerErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->DRM_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaltura/playkit/player/PKPlayerErrorType;

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->SOURCE_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->RENDERER_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->UNEXPECTED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->SOURCE_SELECTION_FAILED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->FAILED_TO_INITIALIZE_PLAYER:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->DRM_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->$VALUES:[Lcom/kaltura/playkit/player/PKPlayerErrorType;

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

    iput p3, p0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/player/PKPlayerErrorType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/player/PKPlayerErrorType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/player/PKPlayerErrorType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->$VALUES:[Lcom/kaltura/playkit/player/PKPlayerErrorType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/player/PKPlayerErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/player/PKPlayerErrorType;

    return-object v0
.end method
