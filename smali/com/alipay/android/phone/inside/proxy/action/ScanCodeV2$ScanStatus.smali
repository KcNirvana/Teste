.class public final enum Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;
.super Ljava/lang/Enum;
.source "ScanCodeV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum ALIPAY_DEAL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum ALIPAY_VERSION_UNMATCH:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum NOT_SUPPORT:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum RECOMMEND:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

.field public static final enum RISK:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "RISK"

    const-string/jumbo v2, "RISK"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->RISK:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "NOT_SUPPORT"

    const-string/jumbo v2, "NOT_SUPPORT"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->NOT_SUPPORT:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "ALIPAY_NOT_INSTALL"

    const-string/jumbo v2, "ALIPAY_NOT_INSTALL"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "ALIPAY_SIGN_ERROR"

    const-string/jumbo v2, "ALIPAY_SIGN_ERROR"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "ALIPAY_VERSION_UNMATCH"

    const-string/jumbo v2, "ALIPAY_VERSION_UNMATCH"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_VERSION_UNMATCH:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "ALIPAY_DEAL"

    const/4 v2, 0x5

    const-string/jumbo v3, "ALIPAY_DEAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_DEAL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const-string/jumbo v1, "RECOMMEND"

    const/4 v2, 0x6

    const-string/jumbo v3, "recommend"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->RECOMMEND:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    sget-object v1, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->RISK:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->NOT_SUPPORT:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_VERSION_UNMATCH:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_DEAL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->RECOMMEND:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->$VALUES:[Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

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

    iput-object p3, p0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->$VALUES:[Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->mValue:Ljava/lang/String;

    return-object v0
.end method
