.class public final enum Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;
.super Ljava/lang/Enum;
.source "EnumIfaaPubKeyEncodeAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

.field public static final enum KEY_ENCODE_ALG_ECC_NISTP256R1_X962_DER:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

.field public static final enum KEY_ENCODE_ALG_ECC_NISTP256R1_X962_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

.field public static final enum KEY_ENCODE_ALG_RSA_2048_PSS_DER:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

.field public static final enum KEY_ENCODE_ALG_RSA_2048_PSS_IFAA:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

.field public static final enum KEY_ENCODE_ALG_RSA_2048_PSS_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;


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

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    const-string/jumbo v1, "KEY_ENCODE_ALG_ECC_NISTP256R1_X962_RAW"

    invoke-direct {v0, v1, v7, v3}, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_ECC_NISTP256R1_X962_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    const-string/jumbo v1, "KEY_ENCODE_ALG_ECC_NISTP256R1_X962_DER"

    invoke-direct {v0, v1, v3, v4}, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_ECC_NISTP256R1_X962_DER:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    const-string/jumbo v1, "KEY_ENCODE_ALG_RSA_2048_PSS_RAW"

    invoke-direct {v0, v1, v4, v5}, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_RSA_2048_PSS_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    const-string/jumbo v1, "KEY_ENCODE_ALG_RSA_2048_PSS_DER"

    invoke-direct {v0, v1, v5, v6}, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_RSA_2048_PSS_DER:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    const-string/jumbo v1, "KEY_ENCODE_ALG_RSA_2048_PSS_IFAA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_RSA_2048_PSS_IFAA:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_ECC_NISTP256R1_X962_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_ECC_NISTP256R1_X962_DER:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_RSA_2048_PSS_RAW:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_RSA_2048_PSS_DER:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->KEY_ENCODE_ALG_RSA_2048_PSS_IFAA:Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    aput-object v1, v0, v6

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

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

    iput-byte p3, p0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;
    .locals 1

    const-class v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;
    .locals 1

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    invoke-virtual {v0}, [Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/enums/EnumIfaaPubKeyEncodeAlgorithm;->value:B

    return v0
.end method
