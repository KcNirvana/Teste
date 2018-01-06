.class public final enum Lcom/xiaomi/a/a/a/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/a/a/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/a/a/a/i;

.field public static final enum b:Lcom/xiaomi/a/a/a/i;

.field public static final enum c:Lcom/xiaomi/a/a/a/i;

.field public static final enum d:Lcom/xiaomi/a/a/a/i;

.field public static final enum e:Lcom/xiaomi/a/a/a/i;

.field private static final synthetic f:[Lcom/xiaomi/a/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/a/a/a/i;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/a/a/a/i;->a:Lcom/xiaomi/a/a/a/i;

    new-instance v0, Lcom/xiaomi/a/a/a/i;

    const-string v1, "MN2G"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/a/a/a/i;->b:Lcom/xiaomi/a/a/a/i;

    new-instance v0, Lcom/xiaomi/a/a/a/i;

    const-string v1, "MN3G"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/a/a/a/i;->c:Lcom/xiaomi/a/a/a/i;

    new-instance v0, Lcom/xiaomi/a/a/a/i;

    const-string v1, "MN4G"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/a/a/a/i;->d:Lcom/xiaomi/a/a/a/i;

    new-instance v0, Lcom/xiaomi/a/a/a/i;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/a/a/a/i;->e:Lcom/xiaomi/a/a/a/i;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/a/a/a/i;

    sget-object v1, Lcom/xiaomi/a/a/a/i;->a:Lcom/xiaomi/a/a/a/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/a/a/a/i;->b:Lcom/xiaomi/a/a/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/a/a/a/i;->c:Lcom/xiaomi/a/a/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/a/a/a/i;->d:Lcom/xiaomi/a/a/a/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/a/a/a/i;->e:Lcom/xiaomi/a/a/a/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/a/a/a/i;->f:[Lcom/xiaomi/a/a/a/i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/a/a/a/i;
    .locals 1

    const-class v0, Lcom/xiaomi/a/a/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/a/a/i;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/a/a/a/i;
    .locals 1

    sget-object v0, Lcom/xiaomi/a/a/a/i;->f:[Lcom/xiaomi/a/a/a/i;

    invoke-virtual {v0}, [Lcom/xiaomi/a/a/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/a/a/a/i;

    return-object v0
.end method
