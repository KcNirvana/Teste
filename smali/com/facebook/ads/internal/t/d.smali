.class public final enum Lcom/facebook/ads/internal/t/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/t/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/t/d;

.field public static final enum b:Lcom/facebook/ads/internal/t/d;

.field private static final synthetic d:[Lcom/facebook/ads/internal/t/d;


# instance fields
.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/facebook/ads/internal/t/d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/t/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    new-instance v0, Lcom/facebook/ads/internal/t/d;

    const-string v1, "ALL"

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/ads/internal/t/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/t/d;

    sget-object v1, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/t/d;->d:[Lcom/facebook/ads/internal/t/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/facebook/ads/internal/t/d;->c:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/t/d;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/t/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/t/d;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/t/d;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/t/d;->d:[Lcom/facebook/ads/internal/t/d;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/t/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/t/d;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/t/d;->c:J

    return-wide v0
.end method
