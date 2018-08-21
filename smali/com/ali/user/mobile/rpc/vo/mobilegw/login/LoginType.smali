.class public final enum Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;
.super Ljava/lang/Enum;
.source "LoginType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

.field public static final enum alipay:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

.field public static final enum taobao:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    const-string/jumbo v1, "alipay"

    invoke-direct {v0, v1, v3, v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->alipay:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    const-string/jumbo v1, "taobao"

    invoke-direct {v0, v1, v2, v4}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->taobao:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    new-array v0, v4, [Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->alipay:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->taobao:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->$VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

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

    iput p3, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;
    .locals 1

    const-class v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    return-object v0
.end method

.method public static values()[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->$VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    invoke-virtual {v0}, [Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->value:I

    return v0
.end method
