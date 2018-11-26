.class public Lcom/xiaomi/analytics/internal/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bnN:I

.field public static final bnO:I

.field public static final bnP:Lcom/xiaomi/analytics/internal/m;

.field public static final bnQ:Lcom/xiaomi/analytics/internal/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/analytics/internal/m;

    const-string/jumbo v1, "1.9.3"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/c;->bnP:Lcom/xiaomi/analytics/internal/m;

    new-instance v0, Lcom/xiaomi/analytics/internal/m;

    const-string/jumbo v1, "1.3.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/c;->bnQ:Lcom/xiaomi/analytics/internal/m;

    sget v0, Lcom/xiaomi/analytics/internal/util/a;->bnx:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/analytics/internal/c;->bnO:I

    sget v0, Lcom/xiaomi/analytics/internal/util/a;->bnz:I

    sput v0, Lcom/xiaomi/analytics/internal/c;->bnN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
