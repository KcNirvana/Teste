.class public final enum Lcom/ooyala/adtech/TrackingError$PulseError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/TrackingError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PulseError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/TrackingError$PulseError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_LINEARITY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum AD_TYPE_NOT_SUPPORTED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum GENERAL_LINEAR_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum LINEAR_MEDIA_FILE_NOT_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum MEDIA_FILE_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum NO_SUPPORTED_MEDIA_FILE_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum PASSBACK_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum START_AD_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum VAST_VALIDATION_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum WRAPPER_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum WRAPPER_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field public static final enum XML_PARSING_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

.field private static final synthetic b:[Lcom/ooyala/adtech/TrackingError$PulseError;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "START_AD_TIMEOUT_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->START_AD_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "PASSBACK_TIMEOUT_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->PASSBACK_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "XML_PARSING_ERROR"

    const/16 v5, 0x64

    invoke-direct {v0, v1, v4, v5}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->XML_PARSING_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "VAST_VALIDATION_ERROR"

    const/4 v5, 0x3

    const/16 v6, 0x65

    invoke-direct {v0, v1, v5, v6}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->VAST_VALIDATION_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "VAST_RESPONSE_ERROR"

    const/4 v6, 0x4

    const/16 v7, 0x66

    invoke-direct {v0, v1, v6, v7}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "AD_TYPE_NOT_SUPPORTED_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0xc8

    invoke-direct {v0, v1, v7, v8}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_TYPE_NOT_SUPPORTED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "AD_LINEARITY_ERROR"

    const/4 v8, 0x6

    const/16 v9, 0xc9

    invoke-direct {v0, v1, v8, v9}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_LINEARITY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "WRAPPER_ERROR"

    const/4 v9, 0x7

    const/16 v10, 0x12c

    invoke-direct {v0, v1, v9, v10}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "WRAPPER_TIMEOUT_ERROR"

    const/16 v10, 0x8

    const/16 v11, 0x12d

    invoke-direct {v0, v1, v10, v11}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "NO_VAST_RESPONSE_ERROR"

    const/16 v11, 0x9

    const/16 v12, 0x12f

    invoke-direct {v0, v1, v11, v12}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "GENERAL_LINEAR_ERROR"

    const/16 v12, 0xa

    const/16 v13, 0x190

    invoke-direct {v0, v1, v12, v13}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->GENERAL_LINEAR_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "LINEAR_MEDIA_FILE_NOT_FOUND_ERROR"

    const/16 v13, 0xb

    const/16 v14, 0x191

    invoke-direct {v0, v1, v13, v14}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->LINEAR_MEDIA_FILE_NOT_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "MEDIA_FILE_TIMEOUT_ERROR"

    const/16 v14, 0xc

    const/16 v15, 0x192

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->MEDIA_FILE_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "NO_SUPPORTED_MEDIA_FILE_FOUND_ERROR"

    const/16 v15, 0xd

    const/16 v14, 0x193

    invoke-direct {v0, v1, v15, v14}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_SUPPORTED_MEDIA_FILE_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "MEDIA_FILE_DISPLAY_ERROR"

    const/16 v14, 0xe

    const/16 v15, 0x195

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    const-string v1, "UNDEFINED_ERROR"

    const/16 v15, 0xf

    const/16 v14, 0x384

    invoke-direct {v0, v1, v15, v14}, Lcom/ooyala/adtech/TrackingError$PulseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ooyala/adtech/TrackingError$PulseError;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->START_AD_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->PASSBACK_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->XML_PARSING_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->VAST_VALIDATION_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_TYPE_NOT_SUPPORTED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_LINEARITY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->GENERAL_LINEAR_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->LINEAR_MEDIA_FILE_NOT_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->MEDIA_FILE_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_SUPPORTED_MEDIA_FILE_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->b:[Lcom/ooyala/adtech/TrackingError$PulseError;

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

    iput p3, p0, Lcom/ooyala/adtech/TrackingError$PulseError;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingError$PulseError;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/TrackingError$PulseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/TrackingError$PulseError;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/TrackingError$PulseError;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->b:[Lcom/ooyala/adtech/TrackingError$PulseError;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/TrackingError$PulseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/TrackingError$PulseError;

    return-object v0
.end method
