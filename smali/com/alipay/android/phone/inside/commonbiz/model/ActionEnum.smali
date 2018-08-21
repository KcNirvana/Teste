.class public final enum Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;
.super Ljava/lang/Enum;
.source "ActionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum ADD_NEWCARD:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum AUTH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum CHECK_ALIPAY_WALLET_STATUS:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum GENERATE_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum LOGIN_OUT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum ONLINE_PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum PRE_CHECK:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum PUSH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum QUERY_PAY_RESULT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum SCAN_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum SCAN_CODE_V2:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum SWITCH_CHANNEL:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum SWITCH_USER:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

.field public static final enum USER_IDENTIFY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;


# instance fields
.field private actionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "AUTH"

    const-string/jumbo v2, "auth"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->AUTH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "LOGIN_OUT"

    const-string/jumbo v2, "loginOut"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->LOGIN_OUT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "SWITCH_USER"

    const-string/jumbo v2, "switchUser"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SWITCH_USER:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "ONLINE_PAY"

    const-string/jumbo v2, "onlinePay"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->ONLINE_PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "PRE_CHECK"

    const-string/jumbo v2, "preCheck"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PRE_CHECK:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "PUSH"

    const/4 v2, 0x5

    const-string/jumbo v3, "push"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PUSH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "SCAN_CODE"

    const/4 v2, 0x6

    const-string/jumbo v3, "scanCode"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SCAN_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "SCAN_CODE_V2"

    const/4 v2, 0x7

    const-string/jumbo v3, "scanCodeV2"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SCAN_CODE_V2:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "QUERY_PAY_RESULT"

    const/16 v2, 0x8

    const-string/jumbo v3, "queryPayResult"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->QUERY_PAY_RESULT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "ADD_NEWCARD"

    const/16 v2, 0x9

    const-string/jumbo v3, "addNewCard"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->ADD_NEWCARD:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "GENERATE_CODE"

    const/16 v2, 0xa

    const-string/jumbo v3, "generateCode"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->GENERATE_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "CHECK_ALIPAY_WALLET_STATUS"

    const/16 v2, 0xb

    const-string/jumbo v3, "checkAlipayWalletStatus"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->CHECK_ALIPAY_WALLET_STATUS:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "PAY"

    const/16 v2, 0xc

    const-string/jumbo v3, "pay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "USER_IDENTIFY"

    const/16 v2, 0xd

    const-string/jumbo v3, "userIdentify"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->USER_IDENTIFY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const-string/jumbo v1, "SWITCH_CHANNEL"

    const/16 v2, 0xe

    const-string/jumbo v3, "switchChannel"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SWITCH_CHANNEL:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->AUTH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->LOGIN_OUT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SWITCH_USER:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->ONLINE_PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PRE_CHECK:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PUSH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SCAN_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SCAN_CODE_V2:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->QUERY_PAY_RESULT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->ADD_NEWCARD:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->GENERATE_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->CHECK_ALIPAY_WALLET_STATUS:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->USER_IDENTIFY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SWITCH_CHANNEL:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->$VALUES:[Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

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

    iput-object p3, p0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->actionName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->$VALUES:[Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->actionName:Ljava/lang/String;

    return-object v0
.end method
