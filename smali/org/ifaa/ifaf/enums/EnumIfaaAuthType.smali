.class public final enum Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;
.super Ljava/lang/Enum;
.source "EnumIfaaAuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

.field public static final enum FACE:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

.field public static final enum FINGERPRINT:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

.field public static final enum IRIS:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    const-string/jumbo v1, "FINGERPRINT"

    invoke-direct {v0, v1, v5, v3}, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->FINGERPRINT:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    const-string/jumbo v1, "IRIS"

    invoke-direct {v0, v1, v3, v4}, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->IRIS:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    const-string/jumbo v1, "FACE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->FACE:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->FINGERPRINT:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->IRIS:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->FACE:Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

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

    iput-byte p3, p0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;
    .locals 1

    const-class v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    return-object v0
.end method

.method public static values()[Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;
    .locals 1

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    invoke-virtual {v0}, [Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/enums/EnumIfaaAuthType;->value:B

    return v0
.end method
