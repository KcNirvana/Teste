.class public final enum Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;
.super Ljava/lang/Enum;
.source "EnumIfaaCertEncodeAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

.field public static final enum CERT_ENCODE_ALG_IFAA:Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

.field public static final enum CERT_ENCODE_ALG_X509:Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    const-string/jumbo v1, "CERT_ENCODE_ALG_X509"

    invoke-direct {v0, v1, v3, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->CERT_ENCODE_ALG_X509:Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    const-string/jumbo v1, "CERT_ENCODE_ALG_IFAA"

    invoke-direct {v0, v1, v2, v4}, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->CERT_ENCODE_ALG_IFAA:Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    new-array v0, v4, [Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->CERT_ENCODE_ALG_X509:Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->CERT_ENCODE_ALG_IFAA:Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    aput-object v1, v0, v2

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

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

    iput-byte p3, p0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;
    .locals 1

    const-class v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;
    .locals 1

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    invoke-virtual {v0}, [Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/enums/EnumIfaaCertEncodeAlgorithm;->value:B

    return v0
.end method
