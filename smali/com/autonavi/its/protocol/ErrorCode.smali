.class public final enum Lcom/autonavi/its/protocol/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/its/protocol/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum BEYOND_THE_SERVICE_PERIOD:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum CORE_SERVICE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum END_POINT_ARROUND_NO_ROUTE:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum END_POINT_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum FAILURE:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum HTTP_NOT_RESPONSE:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum IO_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum LICENSE_IS_EXPIRED:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum LOCATION_FAIL:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum NET_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum NOT_FOUND:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum PARAMETERS_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum PERMISSION_DENIED:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum RC_AROUND_REQUEST:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum RC_FRONT_MESS_REPETITION:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum RC_FRONT_NOMESS:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum RC_FRONT_REQUEST:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum RC_FRONT_REQUEST_NOGPS:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum RC_INIT:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum REQUEST_FREQUENCY_TOO_HIGH:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum REQUEST_PARAM_OR_SERVICE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum REQUEST_WITH_ERROR_PARAMS:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum SERVICE_BUSY:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum SIGNATURE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum START_POINT_ARROUND_NO_ROUTE:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum START_POINT_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum UNSUPPORT_CITY_SEARCH:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum URL_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum USERNAME_OR_USERPASSWORD_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum USER_CANNOT_ACCESS:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum USER_SESSION_TIMEOUT:Lcom/autonavi/its/protocol/ErrorCode;

.field public static final enum XML_PARSER_ERROR:Lcom/autonavi/its/protocol/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "RC_INIT"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->RC_INIT:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "RC_FRONT_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_REQUEST:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "RC_FRONT_REQUEST_NOGPS"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_REQUEST_NOGPS:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "RC_FRONT_NOMESS"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_NOMESS:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "RC_FRONT_MESS_REPETITION"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_MESS_REPETITION:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "RC_AROUND_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->RC_AROUND_REQUEST:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "NET_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->NET_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "XML_PARSER_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->XML_PARSER_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "IO_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->IO_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "HTTP_NOT_RESPONSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->HTTP_NOT_RESPONSE:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "URL_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->URL_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->UNKNOWN_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "CORE_SERVICE_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->CORE_SERVICE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "START_POINT_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->START_POINT_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "END_POINT_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->END_POINT_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "START_POINT_ARROUND_NO_ROUTE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->START_POINT_ARROUND_NO_ROUTE:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "END_POINT_ARROUND_NO_ROUTE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->END_POINT_ARROUND_NO_ROUTE:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "REQUEST_PARAM_OR_SERVICE_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_PARAM_OR_SERVICE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "REQUEST_WITH_ERROR_PARAMS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_WITH_ERROR_PARAMS:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "USERNAME_OR_USERPASSWORD_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->USERNAME_OR_USERPASSWORD_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "USER_CANNOT_ACCESS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->USER_CANNOT_ACCESS:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "BEYOND_THE_SERVICE_PERIOD"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->BEYOND_THE_SERVICE_PERIOD:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "REQUEST_FREQUENCY_TOO_HIGH"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_FREQUENCY_TOO_HIGH:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "SERVICE_BUSY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->SERVICE_BUSY:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "USER_SESSION_TIMEOUT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->USER_SESSION_TIMEOUT:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "UNSUPPORT_CITY_SEARCH"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->UNSUPPORT_CITY_SEARCH:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "FAILURE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->FAILURE:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "PARAMETERS_ERROR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->PARAMETERS_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "SIGNATURE_ERROR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->SIGNATURE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "LICENSE_IS_EXPIRED"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->LICENSE_IS_EXPIRED:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "NOT_FOUND"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->NOT_FOUND:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "PERMISSION_DENIED"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->PERMISSION_DENIED:Lcom/autonavi/its/protocol/ErrorCode;

    new-instance v0, Lcom/autonavi/its/protocol/ErrorCode;

    const-string/jumbo v1, "LOCATION_FAIL"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/autonavi/its/protocol/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->LOCATION_FAIL:Lcom/autonavi/its/protocol/ErrorCode;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/autonavi/its/protocol/ErrorCode;

    sget-object v1, Lcom/autonavi/its/protocol/ErrorCode;->RC_INIT:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_REQUEST:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_REQUEST_NOGPS:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_NOMESS:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/its/protocol/ErrorCode;->RC_FRONT_MESS_REPETITION:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->RC_AROUND_REQUEST:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->NET_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->XML_PARSER_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->IO_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->HTTP_NOT_RESPONSE:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->URL_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->UNKNOWN_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->CORE_SERVICE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->START_POINT_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->END_POINT_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->START_POINT_ARROUND_NO_ROUTE:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->END_POINT_ARROUND_NO_ROUTE:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_PARAM_OR_SERVICE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_WITH_ERROR_PARAMS:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->USERNAME_OR_USERPASSWORD_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->USER_CANNOT_ACCESS:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->BEYOND_THE_SERVICE_PERIOD:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_FREQUENCY_TOO_HIGH:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->SERVICE_BUSY:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->USER_SESSION_TIMEOUT:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->UNSUPPORT_CITY_SEARCH:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->FAILURE:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->PARAMETERS_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->SIGNATURE_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->LICENSE_IS_EXPIRED:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->NOT_FOUND:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->PERMISSION_DENIED:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/autonavi/its/protocol/ErrorCode;->LOCATION_FAIL:Lcom/autonavi/its/protocol/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/its/protocol/ErrorCode;->$VALUES:[Lcom/autonavi/its/protocol/ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/its/protocol/ErrorCode;
    .locals 1

    const-class v0, Lcom/autonavi/its/protocol/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/its/protocol/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/its/protocol/ErrorCode;
    .locals 1

    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->$VALUES:[Lcom/autonavi/its/protocol/ErrorCode;

    invoke-virtual {v0}, [Lcom/autonavi/its/protocol/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/its/protocol/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getResponseCode(I)Lcom/autonavi/its/protocol/ErrorCode;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->USER_CANNOT_ACCESS:Lcom/autonavi/its/protocol/ErrorCode;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->USERNAME_OR_USERPASSWORD_ERROR:Lcom/autonavi/its/protocol/ErrorCode;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->BEYOND_THE_SERVICE_PERIOD:Lcom/autonavi/its/protocol/ErrorCode;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_WITH_ERROR_PARAMS:Lcom/autonavi/its/protocol/ErrorCode;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->REQUEST_FREQUENCY_TOO_HIGH:Lcom/autonavi/its/protocol/ErrorCode;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/autonavi/its/protocol/ErrorCode;->SERVICE_BUSY:Lcom/autonavi/its/protocol/ErrorCode;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x186a1 -> :sswitch_0
        0x186a2 -> :sswitch_1
        0x186a3 -> :sswitch_2
        0x186a4 -> :sswitch_3
        0x186a5 -> :sswitch_4
        0x18768 -> :sswitch_5
    .end sparse-switch
.end method
