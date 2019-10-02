.class public final enum Lcom/xiaomi/mipush/sdk/bd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mipush/sdk/bd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/mipush/sdk/bd;

.field private static final synthetic a:[Lcom/xiaomi/mipush/sdk/bd;

.field public static final enum b:Lcom/xiaomi/mipush/sdk/bd;

.field public static final enum c:Lcom/xiaomi/mipush/sdk/bd;

.field public static final enum d:Lcom/xiaomi/mipush/sdk/bd;

.field public static final enum e:Lcom/xiaomi/mipush/sdk/bd;

.field public static final enum f:Lcom/xiaomi/mipush/sdk/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/mipush/sdk/bd;

    const-string v1, "DISABLE_PUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->a:Lcom/xiaomi/mipush/sdk/bd;

    new-instance v0, Lcom/xiaomi/mipush/sdk/bd;

    const-string v1, "ENABLE_PUSH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/mipush/sdk/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->b:Lcom/xiaomi/mipush/sdk/bd;

    new-instance v0, Lcom/xiaomi/mipush/sdk/bd;

    const-string v1, "UPLOAD_HUAWEI_TOKEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/mipush/sdk/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->c:Lcom/xiaomi/mipush/sdk/bd;

    new-instance v0, Lcom/xiaomi/mipush/sdk/bd;

    const-string v1, "UPLOAD_FCM_TOKEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/mipush/sdk/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->d:Lcom/xiaomi/mipush/sdk/bd;

    new-instance v0, Lcom/xiaomi/mipush/sdk/bd;

    const-string v1, "UPLOAD_COS_TOKEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/mipush/sdk/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    new-instance v0, Lcom/xiaomi/mipush/sdk/bd;

    const-string v1, "UPLOAD_FTOS_TOKEN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/mipush/sdk/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->f:Lcom/xiaomi/mipush/sdk/bd;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/mipush/sdk/bd;

    sget-object v1, Lcom/xiaomi/mipush/sdk/bd;->a:Lcom/xiaomi/mipush/sdk/bd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/bd;->b:Lcom/xiaomi/mipush/sdk/bd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/mipush/sdk/bd;->c:Lcom/xiaomi/mipush/sdk/bd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/mipush/sdk/bd;->d:Lcom/xiaomi/mipush/sdk/bd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/mipush/sdk/bd;->f:Lcom/xiaomi/mipush/sdk/bd;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/mipush/sdk/bd;->a:[Lcom/xiaomi/mipush/sdk/bd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/bd;
    .locals 1

    const-class v0, Lcom/xiaomi/mipush/sdk/bd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mipush/sdk/bd;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mipush/sdk/bd;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/bd;->a:[Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v0}, [Lcom/xiaomi/mipush/sdk/bd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mipush/sdk/bd;

    return-object v0
.end method
