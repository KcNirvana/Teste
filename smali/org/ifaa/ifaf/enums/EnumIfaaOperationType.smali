.class public final enum Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;
.super Ljava/lang/Enum;
.source "EnumIfaaOperationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

.field public static final enum REQUEST:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

.field public static final enum RESPONSE:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    const-string/jumbo v1, "REQUEST"

    const-string/jumbo v2, "Request"

    invoke-direct {v0, v1, v3, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->REQUEST:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    const-string/jumbo v1, "RESPONSE"

    const-string/jumbo v2, "Response"

    invoke-direct {v0, v1, v4, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->RESPONSE:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->REQUEST:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->RESPONSE:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

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

    iput-object p3, p0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;
    .locals 1

    const-class v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    return-object v0
.end method

.method public static values()[Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;
    .locals 1

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    invoke-virtual {v0}, [Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->value:Ljava/lang/String;

    return-object v0
.end method
