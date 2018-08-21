.class public final enum Lcom/alipay/edge/rpc/gen/OsType;
.super Ljava/lang/Enum;
.source "OsType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/edge/rpc/gen/OsType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/edge/rpc/gen/OsType;

.field public static final enum ANDROID:Lcom/alipay/edge/rpc/gen/OsType;

.field public static final enum IOS:Lcom/alipay/edge/rpc/gen/OsType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/edge/rpc/gen/OsType;

    const-string/jumbo v1, "ANDROID"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/edge/rpc/gen/OsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/edge/rpc/gen/OsType;->ANDROID:Lcom/alipay/edge/rpc/gen/OsType;

    new-instance v0, Lcom/alipay/edge/rpc/gen/OsType;

    const-string/jumbo v1, "IOS"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/edge/rpc/gen/OsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/edge/rpc/gen/OsType;->IOS:Lcom/alipay/edge/rpc/gen/OsType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/edge/rpc/gen/OsType;

    sget-object v1, Lcom/alipay/edge/rpc/gen/OsType;->ANDROID:Lcom/alipay/edge/rpc/gen/OsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/edge/rpc/gen/OsType;->IOS:Lcom/alipay/edge/rpc/gen/OsType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/edge/rpc/gen/OsType;->$VALUES:[Lcom/alipay/edge/rpc/gen/OsType;

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

    iput p3, p0, Lcom/alipay/edge/rpc/gen/OsType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/edge/rpc/gen/OsType;
    .locals 1

    const-class v0, Lcom/alipay/edge/rpc/gen/OsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/edge/rpc/gen/OsType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/edge/rpc/gen/OsType;
    .locals 1

    sget-object v0, Lcom/alipay/edge/rpc/gen/OsType;->$VALUES:[Lcom/alipay/edge/rpc/gen/OsType;

    invoke-virtual {v0}, [Lcom/alipay/edge/rpc/gen/OsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/edge/rpc/gen/OsType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/edge/rpc/gen/OsType;->value:I

    return v0
.end method
