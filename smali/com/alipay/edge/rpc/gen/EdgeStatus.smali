.class public final enum Lcom/alipay/edge/rpc/gen/EdgeStatus;
.super Ljava/lang/Enum;
.source "EdgeStatus.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/edge/rpc/gen/EdgeStatus;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/edge/rpc/gen/EdgeStatus;

.field public static final enum DISABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

.field public static final enum ENABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/edge/rpc/gen/EdgeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->DISABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    new-instance v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/edge/rpc/gen/EdgeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->ENABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/edge/rpc/gen/EdgeStatus;

    sget-object v1, Lcom/alipay/edge/rpc/gen/EdgeStatus;->DISABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/edge/rpc/gen/EdgeStatus;->ENABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->$VALUES:[Lcom/alipay/edge/rpc/gen/EdgeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/edge/rpc/gen/EdgeStatus;
    .locals 1

    const-class v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/edge/rpc/gen/EdgeStatus;
    .locals 1

    sget-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->$VALUES:[Lcom/alipay/edge/rpc/gen/EdgeStatus;

    invoke-virtual {v0}, [Lcom/alipay/edge/rpc/gen/EdgeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/edge/rpc/gen/EdgeStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->value:I

    return v0
.end method
