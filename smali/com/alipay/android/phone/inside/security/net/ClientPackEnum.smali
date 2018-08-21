.class public final enum Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;
.super Ljava/lang/Enum;
.source "ClientPackEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

.field public static final enum LOG:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

.field public static final enum RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    const-string/jumbo v1, "RPC"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    new-instance v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    const-string/jumbo v1, "LOG"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->LOG:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->LOG:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->$VALUES:[Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->$VALUES:[Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    return-object v0
.end method
