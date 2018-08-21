.class public final enum Lorg/ifaa/ifaf/enums/EnumIfaaOperation;
.super Ljava/lang/Enum;
.source "EnumIfaaOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ifaa/ifaf/enums/EnumIfaaOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

.field public static final enum AUTHENTICATION:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

.field public static final enum DEREGISTER:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

.field public static final enum REGISTER:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    const-string/jumbo v1, "REGISTER"

    const-string/jumbo v2, "Reg"

    invoke-direct {v0, v1, v3, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->REGISTER:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    const-string/jumbo v1, "AUTHENTICATION"

    const-string/jumbo v2, "Auth"

    invoke-direct {v0, v1, v4, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->AUTHENTICATION:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    new-instance v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    const-string/jumbo v1, "DEREGISTER"

    const-string/jumbo v2, "DeReg"

    invoke-direct {v0, v1, v5, v2}, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->DEREGISTER:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->REGISTER:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->AUTHENTICATION:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->DEREGISTER:Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    aput-object v1, v0, v5

    sput-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

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

    iput-object p3, p0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ifaa/ifaf/enums/EnumIfaaOperation;
    .locals 1

    const-class v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    return-object v0
.end method

.method public static values()[Lorg/ifaa/ifaf/enums/EnumIfaaOperation;
    .locals 1

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->$VALUES:[Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    invoke-virtual {v0}, [Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ifaa/ifaf/enums/EnumIfaaOperation;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/enums/EnumIfaaOperation;->value:Ljava/lang/String;

    return-object v0
.end method
