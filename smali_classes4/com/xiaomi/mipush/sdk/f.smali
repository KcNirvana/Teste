.class public final enum Lcom/xiaomi/mipush/sdk/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mipush/sdk/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/mipush/sdk/f;

.field private static final synthetic a:[Lcom/xiaomi/mipush/sdk/f;

.field public static final enum b:Lcom/xiaomi/mipush/sdk/f;

.field public static final enum c:Lcom/xiaomi/mipush/sdk/f;

.field public static final enum d:Lcom/xiaomi/mipush/sdk/f;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/mipush/sdk/f;

    const-string v1, "ASSEMBLE_PUSH_HUAWEI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/f;->a:Lcom/xiaomi/mipush/sdk/f;

    new-instance v0, Lcom/xiaomi/mipush/sdk/f;

    const-string v1, "ASSEMBLE_PUSH_FCM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/mipush/sdk/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/f;->b:Lcom/xiaomi/mipush/sdk/f;

    new-instance v0, Lcom/xiaomi/mipush/sdk/f;

    const-string v1, "ASSEMBLE_PUSH_COS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/mipush/sdk/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/f;->c:Lcom/xiaomi/mipush/sdk/f;

    new-instance v0, Lcom/xiaomi/mipush/sdk/f;

    const-string v1, "ASSEMBLE_PUSH_FTOS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/mipush/sdk/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/f;->d:Lcom/xiaomi/mipush/sdk/f;

    new-array v0, v6, [Lcom/xiaomi/mipush/sdk/f;

    sget-object v1, Lcom/xiaomi/mipush/sdk/f;->a:Lcom/xiaomi/mipush/sdk/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/f;->b:Lcom/xiaomi/mipush/sdk/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/mipush/sdk/f;->c:Lcom/xiaomi/mipush/sdk/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/mipush/sdk/f;->d:Lcom/xiaomi/mipush/sdk/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/mipush/sdk/f;->a:[Lcom/xiaomi/mipush/sdk/f;

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

    iput p3, p0, Lcom/xiaomi/mipush/sdk/f;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/f;
    .locals 1

    const-class v0, Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mipush/sdk/f;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mipush/sdk/f;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/f;->a:[Lcom/xiaomi/mipush/sdk/f;

    invoke-virtual {v0}, [Lcom/xiaomi/mipush/sdk/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mipush/sdk/f;

    return-object v0
.end method
