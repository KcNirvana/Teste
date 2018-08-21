.class public final enum Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;
.super Ljava/lang/Enum;
.source "ExceptionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

.field public static final enum BIZ_DISABLE:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

.field public static final enum CRASH:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

.field public static final enum EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v1, "CRASH"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->CRASH:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v1, "BIZ_DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->BIZ_DISABLE:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v1, "EXCEPTION"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->CRASH:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->BIZ_DISABLE:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->$VALUES:[Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->$VALUES:[Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    return-object v0
.end method
