.class public Lcom/xiaomi/mistatistic/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/c;->a:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/c;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/c;->c:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/c;->d:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/c;->e:Z

    return-void
.end method

.method public static a(Z)V
    .locals 2

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/c;->c:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/d;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/c;->b:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/c;->c:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/c;->d:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/c;->e:Z

    return v0
.end method
