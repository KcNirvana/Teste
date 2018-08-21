.class public final enum Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;
.super Ljava/lang/Enum;
.source "LoginWithout.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum without:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

.field public static final enum withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;


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

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withpwd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "without"

    invoke-direct {v0, v1, v4, v5}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->without:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withtoken"

    invoke-direct {v0, v1, v5, v6}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withinnertoken"

    invoke-direct {v0, v1, v6, v7}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withmobilepwd"

    invoke-direct {v0, v1, v7, v8}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withsso"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withsndpwd"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withchecktoken"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withface"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withmsg"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const-string/jumbo v1, "withlogintoken"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    const/4 v1, 0x0

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->without:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->$VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

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

    iput p3, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;
    .locals 1

    const-class v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    return-object v0
.end method

.method public static values()[Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->$VALUES:[Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    invoke-virtual {v0}, [Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->value:I

    return v0
.end method
