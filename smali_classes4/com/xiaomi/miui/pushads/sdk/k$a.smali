.class public final enum Lcom/xiaomi/miui/pushads/sdk/k$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miui/pushads/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/miui/pushads/sdk/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/miui/pushads/sdk/k$a;

.field private static final synthetic a:[Lcom/xiaomi/miui/pushads/sdk/k$a;

.field public static final enum b:Lcom/xiaomi/miui/pushads/sdk/k$a;

.field public static final enum c:Lcom/xiaomi/miui/pushads/sdk/k$a;

.field public static final enum d:Lcom/xiaomi/miui/pushads/sdk/k$a;

.field public static final enum e:Lcom/xiaomi/miui/pushads/sdk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:Lcom/xiaomi/miui/pushads/sdk/k$a;

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    const-string v1, "Wifi"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/miui/pushads/sdk/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->b:Lcom/xiaomi/miui/pushads/sdk/k$a;

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    const-string v1, "MN2G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/miui/pushads/sdk/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->c:Lcom/xiaomi/miui/pushads/sdk/k$a;

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    const-string v1, "MN3G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/miui/pushads/sdk/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->d:Lcom/xiaomi/miui/pushads/sdk/k$a;

    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    const-string v1, "MN4G"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/miui/pushads/sdk/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->e:Lcom/xiaomi/miui/pushads/sdk/k$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/miui/pushads/sdk/k$a;

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:Lcom/xiaomi/miui/pushads/sdk/k$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k$a;->b:Lcom/xiaomi/miui/pushads/sdk/k$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k$a;->c:Lcom/xiaomi/miui/pushads/sdk/k$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k$a;->d:Lcom/xiaomi/miui/pushads/sdk/k$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k$a;->e:Lcom/xiaomi/miui/pushads/sdk/k$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:[Lcom/xiaomi/miui/pushads/sdk/k$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/k$a;
    .locals 1

    const-class v0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/miui/pushads/sdk/k$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:[Lcom/xiaomi/miui/pushads/sdk/k$a;

    invoke-virtual {v0}, [Lcom/xiaomi/miui/pushads/sdk/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object v0
.end method
