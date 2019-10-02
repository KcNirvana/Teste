.class public final enum Lcom/kaltura/playkit/ads/PKAdErrorType;
.super Ljava/lang/Enum;
.source "PKAdErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/ads/PKAdErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum ADS_REQUEST_NETWORK_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum COMPANION_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum FAILED_TO_REQUEST_ADS:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum INTERNAL_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum INVALID_ARGUMENTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum OVERLAY_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum OVERLAY_AD_PLAYING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum PLAYLIST_NO_CONTENT_TRACKING:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum QUIET_LOG_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum UNKNOWN_AD_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_ASSET_NOT_FOUND:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_EMPTY_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_LINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_MALFORMED_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_MEDIA_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_NONLINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VAST_TOO_MANY_REDIRECTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

.field public static final enum VIDEO_PLAY_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;


# instance fields
.field public final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->INTERNAL_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_MALFORMED_RESPONSE"

    const/4 v3, 0x1

    const/16 v4, 0x7d1

    invoke-direct {v0, v1, v3, v4}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_MALFORMED_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "UNKNOWN_AD_RESPONSE"

    const/4 v4, 0x2

    const/16 v5, 0x7d2

    invoke-direct {v0, v1, v4, v5}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_AD_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_LOAD_TIMEOUT"

    const/4 v5, 0x3

    const/16 v6, 0x7d3

    invoke-direct {v0, v1, v5, v6}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_TOO_MANY_REDIRECTS"

    const/4 v6, 0x4

    const/16 v7, 0x7d4

    invoke-direct {v0, v1, v6, v7}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_TOO_MANY_REDIRECTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VIDEO_PLAY_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0x7d5

    invoke-direct {v0, v1, v7, v8}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VIDEO_PLAY_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_MEDIA_LOAD_TIMEOUT"

    const/4 v8, 0x6

    const/16 v9, 0x7d6

    invoke-direct {v0, v1, v8, v9}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_MEDIA_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_LINEAR_ASSET_MISMATCH"

    const/4 v9, 0x7

    const/16 v10, 0x7d7

    invoke-direct {v0, v1, v9, v10}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_LINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "OVERLAY_AD_PLAYING_FAILED"

    const/16 v10, 0x8

    const/16 v11, 0x7d8

    invoke-direct {v0, v1, v10, v11}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->OVERLAY_AD_PLAYING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "OVERLAY_AD_LOADING_FAILED"

    const/16 v11, 0x9

    const/16 v12, 0x7d9

    invoke-direct {v0, v1, v11, v12}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->OVERLAY_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_NONLINEAR_ASSET_MISMATCH"

    const/16 v12, 0xa

    const/16 v13, 0x7da

    invoke-direct {v0, v1, v12, v13}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "COMPANION_AD_LOADING_FAILED"

    const/16 v13, 0xb

    const/16 v14, 0x7db

    invoke-direct {v0, v1, v13, v14}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->COMPANION_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v14, 0xc

    const/16 v15, 0x7dc

    invoke-direct {v0, v1, v14, v15}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_EMPTY_RESPONSE"

    const/16 v15, 0xd

    const/16 v14, 0x7dd

    invoke-direct {v0, v1, v15, v14}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_EMPTY_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "FAILED_TO_REQUEST_ADS"

    const/16 v14, 0xe

    const/16 v15, 0x7de

    invoke-direct {v0, v1, v14, v15}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->FAILED_TO_REQUEST_ADS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "VAST_ASSET_NOT_FOUND"

    const/16 v15, 0xf

    const/16 v14, 0x7df

    invoke-direct {v0, v1, v15, v14}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_ASSET_NOT_FOUND:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "ADS_REQUEST_NETWORK_ERROR"

    const/16 v14, 0x10

    const/16 v15, 0x7e0

    invoke-direct {v0, v1, v14, v15}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->ADS_REQUEST_NETWORK_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "INVALID_ARGUMENTS"

    const/16 v14, 0x11

    const/16 v15, 0x7e1

    invoke-direct {v0, v1, v14, v15}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->INVALID_ARGUMENTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "PLAYLIST_NO_CONTENT_TRACKING"

    const/16 v14, 0x12

    const/16 v15, 0x7e2

    invoke-direct {v0, v1, v14, v15}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/kaltura/playkit/ads/PKAdErrorType;

    new-instance v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    const-string v1, "QUIET_LOG_ERROR"

    const/16 v14, 0x13

    const/16 v15, 0x7e3

    invoke-direct {v0, v1, v14, v15}, Lcom/kaltura/playkit/ads/PKAdErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->QUIET_LOG_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/kaltura/playkit/ads/PKAdErrorType;

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->INTERNAL_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_MALFORMED_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_AD_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_TOO_MANY_REDIRECTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VIDEO_PLAY_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_MEDIA_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_LINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->OVERLAY_AD_PLAYING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->OVERLAY_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->COMPANION_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_EMPTY_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->FAILED_TO_REQUEST_ADS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_ASSET_NOT_FOUND:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->ADS_REQUEST_NETWORK_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->INVALID_ARGUMENTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->QUIET_LOG_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->$VALUES:[Lcom/kaltura/playkit/ads/PKAdErrorType;

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

    iput p3, p0, Lcom/kaltura/playkit/ads/PKAdErrorType;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/ads/PKAdErrorType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/ads/PKAdErrorType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/ads/PKAdErrorType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/ads/PKAdErrorType;->$VALUES:[Lcom/kaltura/playkit/ads/PKAdErrorType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/ads/PKAdErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/ads/PKAdErrorType;

    return-object v0
.end method
