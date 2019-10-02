.class public final enum Lcom/xiaomi/push/em;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/em;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/em;

.field private static final synthetic a:[Lcom/xiaomi/push/em;

.field public static final enum b:Lcom/xiaomi/push/em;

.field public static final enum c:Lcom/xiaomi/push/em;

.field public static final enum d:Lcom/xiaomi/push/em;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/push/em;

    const-string v1, "ACTIVITY"

    const-string v2, "activity"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/push/em;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/em;->a:Lcom/xiaomi/push/em;

    new-instance v0, Lcom/xiaomi/push/em;

    const-string v1, "SERVICE_ACTION"

    const-string v2, "service_action"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/push/em;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/em;->b:Lcom/xiaomi/push/em;

    new-instance v0, Lcom/xiaomi/push/em;

    const-string v1, "SERVICE_COMPONENT"

    const-string v2, "service_component"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/push/em;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/em;->c:Lcom/xiaomi/push/em;

    new-instance v0, Lcom/xiaomi/push/em;

    const-string v1, "PROVIDER"

    const-string v2, "provider"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/push/em;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/em;->d:Lcom/xiaomi/push/em;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/push/em;

    sget-object v1, Lcom/xiaomi/push/em;->a:Lcom/xiaomi/push/em;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/push/em;->b:Lcom/xiaomi/push/em;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/push/em;->c:Lcom/xiaomi/push/em;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/em;->d:Lcom/xiaomi/push/em;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/push/em;->a:[Lcom/xiaomi/push/em;

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

    iput-object p3, p0, Lcom/xiaomi/push/em;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/em;
    .locals 1

    const-class v0, Lcom/xiaomi/push/em;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/em;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/em;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/em;->a:[Lcom/xiaomi/push/em;

    invoke-virtual {v0}, [Lcom/xiaomi/push/em;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/em;

    return-object v0
.end method
