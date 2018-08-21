.class public final enum Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;
.super Ljava/lang/Enum;
.source "LoginWthPwd.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum afterreg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withonekeytoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withopenauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum without:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withsndmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withtbsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final enum withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withpwd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "without"

    invoke-direct {v0, v1, v4, v5}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->without:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withtoken"

    invoke-direct {v0, v1, v5, v6}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withinnertoken"

    invoke-direct {v0, v1, v6, v7}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withmobilepwd"

    invoke-direct {v0, v1, v7, v8}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withsso"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withsndpwd"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withchecktoken"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withface"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withmsg"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withlogintoken"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "afterreg"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->afterreg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withauthtoken"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withtbsso"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withtbsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withonekeytoken"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withonekeytoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withsndmsg"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const-string/jumbo v1, "withopenauthtoken"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withopenauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    const/4 v1, 0x0

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->without:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->afterreg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withtbsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withonekeytoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withopenauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->$VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

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

    iput p3, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;
    .locals 1

    const-class v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    return-object v0
.end method

.method public static values()[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->$VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-virtual {v0}, [Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->value:I

    return v0
.end method
