.class public final enum Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
.super Ljava/lang/Enum;
.source "ResultCodeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum ALIPAY_CHECK_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum ALIPAY_WALLET_LOGIN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum ALIPAY_WALLET_UNLOGIN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum AUTH_OP_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum CODE_PARSE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum CODE_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum INVOKE_ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum INVOKE_ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum INVOKE_ALIPAY_VERSION_NOT_MATCH:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum NOT_INITIAL_SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum OTP_INVALID:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum PAY_FAILED:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum PAY_RESULT_IGNORE:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum PAY_RESULT_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum PUSH_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum REQUEST_NOT_NULL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field public static final enum SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "001"

    const-string/jumbo v3, "\u6210\u529f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "INTERNAL_CODE_ERROR"

    const-string/jumbo v2, "002"

    const-string/jumbo v3, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "INSIDE_CANCEL"

    const-string/jumbo v2, "003"

    const-string/jumbo v3, "\u64cd\u4f5c\u53d6\u6d88"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "ALIPAY_CHECK_SIGN_ERROR"

    const-string/jumbo v2, "014"

    const-string/jumbo v3, "alipay\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_CHECK_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "INVOKE_ALIPAY_SIGN_ERROR"

    const-string/jumbo v2, "015"

    const-string/jumbo v3, "\u8c03\u7528alipay\u7684\u5e94\u7528\u975e\u6cd5\uff0calipay\u5185\u90e8\u6821\u9a8c\u8c03\u7528\u65b9\u672a\u901a\u8fc7"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "INVOKE_ALIPAY_NOT_INSTALL"

    const/4 v2, 0x5

    const-string/jumbo v3, "016"

    const-string/jumbo v4, "\u672c\u5730alipay\u672a\u5b89\u88c5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "INVOKE_ALIPAY_VERSION_NOT_MATCH"

    const/4 v2, 0x6

    const-string/jumbo v3, "017"

    const-string/jumbo v4, "\u672c\u5730alipay\u7248\u672c\u4e0d\u652f\u6301\uff0c\u9700\u8981\u5347\u7ea7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_VERSION_NOT_MATCH:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "REQUEST_NOT_NULL"

    const/4 v2, 0x7

    const-string/jumbo v3, "020"

    const-string/jumbo v4, "\u8bf7\u6c42\u53c2\u6570\u7981\u6b62\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->REQUEST_NOT_NULL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "AUTH_OP_ERROR"

    const/16 v2, 0x8

    const-string/jumbo v3, "030"

    const-string/jumbo v4, "\u6388\u6743\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->AUTH_OP_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "OTP_INVALID"

    const/16 v2, 0x9

    const-string/jumbo v3, "031"

    const-string/jumbo v4, "\u672c\u5730\u79cd\u5b50\u65e0\u6548,\u9700\u8981\u91cd\u65b0\u8c03\u7528\u6388\u6743\u521d\u59cb\u5316"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->OTP_INVALID:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "NOT_INITIAL_SUCCESS"

    const/16 v2, 0xa

    const-string/jumbo v3, "032"

    const-string/jumbo v4, "\u672c\u5730\u672a\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->NOT_INITIAL_SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "PAY_RESULT_IGNORE"

    const/16 v2, 0xb

    const-string/jumbo v3, "033"

    const-string/jumbo v4, "PUSH\u652f\u4ed8\u5524\u8d77\u5ffd\u7565\u7ed3\u679c"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_IGNORE:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "PAY_RESULT_UNKNOWN"

    const/16 v2, 0xc

    const-string/jumbo v3, "034"

    const-string/jumbo v4, "\u4ed8\u6b3e\u7ed3\u679c\u672a\u77e5, \u8bf7\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "PAY_FAILED"

    const/16 v2, 0xd

    const-string/jumbo v3, "035"

    const-string/jumbo v4, "\u4ed8\u6b3e\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_FAILED:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "PUSH_UNKNOWN"

    const/16 v2, 0xe

    const-string/jumbo v3, "036"

    const-string/jumbo v4, "PUSH\u6570\u636e\u672a\u77e5\uff0c\u8be5\u6570\u636e\u5185\u5bb9inside\u65e0\u6cd5\u7406\u89e3"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PUSH_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "CODE_UNKNOWN"

    const/16 v2, 0xf

    const-string/jumbo v3, "040"

    const-string/jumbo v4, "\u7801\u503c\u672a\u77e5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "CODE_PARSE_ERROR"

    const/16 v2, 0x10

    const-string/jumbo v3, "041"

    const-string/jumbo v4, "\u7801\u503c\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_PARSE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "ALIPAY_WALLET_LOGIN"

    const/16 v2, 0x11

    const-string/jumbo v3, "051"

    const-string/jumbo v4, "\u767b\u5f55\u72b6\u6001"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_WALLET_LOGIN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v1, "ALIPAY_WALLET_UNLOGIN"

    const/16 v2, 0x12

    const-string/jumbo v3, "052"

    const-string/jumbo v4, "\u975e\u767b\u5f55\u72b6\u6001"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_WALLET_UNLOGIN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_CHECK_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_VERSION_NOT_MATCH:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->REQUEST_NOT_NULL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->AUTH_OP_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->OTP_INVALID:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->NOT_INITIAL_SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_IGNORE:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_FAILED:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PUSH_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_PARSE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_WALLET_LOGIN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_WALLET_UNLOGIN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->$VALUES:[Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

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

    iput-object p3, p0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 7

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->values()[Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->$VALUES:[Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->desc:Ljava/lang/String;

    return-object v0
.end method
