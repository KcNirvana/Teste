.class public final enum Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;
.super Ljava/lang/Enum;
.source "EnumIfaaSignAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

.field public static final enum SIGN_ALG_ECDSA_SHA256_DER:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

.field public static final enum SIGN_ALG_ECDSA_SHA256_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

.field public static final enum SIGN_ALG_RSA_SHA256_DER:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

.field public static final enum SIGN_ALG_RSA_SHA256_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

.field public static final enum SIGN_ALG_SHA256_PKCS7:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    const-string/jumbo v1, "SIGN_ALG_ECDSA_SHA256_RAW"

    invoke-direct {v0, v1, v7, v3}, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_ECDSA_SHA256_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    const-string/jumbo v1, "SIGN_ALG_ECDSA_SHA256_DER"

    invoke-direct {v0, v1, v3, v4}, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_ECDSA_SHA256_DER:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    const-string/jumbo v1, "SIGN_ALG_RSA_SHA256_RAW"

    invoke-direct {v0, v1, v4, v5}, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_RSA_SHA256_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    const-string/jumbo v1, "SIGN_ALG_RSA_SHA256_DER"

    invoke-direct {v0, v1, v5, v6}, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_RSA_SHA256_DER:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    const-string/jumbo v1, "SIGN_ALG_SHA256_PKCS7"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_SHA256_PKCS7:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_ECDSA_SHA256_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_ECDSA_SHA256_DER:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_RSA_SHA256_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_RSA_SHA256_DER:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->SIGN_ALG_SHA256_PKCS7:Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    aput-object v1, v0, v6

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;
    .locals 1

    const-class v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;
    .locals 1

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    invoke-virtual {v0}, [Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/enums/EnumIfaaSignAlgorithm;->value:B

    return v0
.end method
