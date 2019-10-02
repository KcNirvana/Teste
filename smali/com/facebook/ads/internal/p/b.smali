.class public final enum Lcom/facebook/ads/internal/p/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/p/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/p/b;

.field public static final enum b:Lcom/facebook/ads/internal/p/b;

.field public static final enum c:Lcom/facebook/ads/internal/p/b;

.field public static final enum d:Lcom/facebook/ads/internal/p/b;

.field public static final enum e:Lcom/facebook/ads/internal/p/b;

.field public static final enum f:Lcom/facebook/ads/internal/p/b;

.field private static final synthetic h:[Lcom/facebook/ads/internal/p/b;


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/facebook/ads/internal/p/b;

    const-string v1, "ti"

    const-string v2, "EVENT_ID"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/internal/p/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/p/b;->a:Lcom/facebook/ads/internal/p/b;

    new-instance v0, Lcom/facebook/ads/internal/p/b;

    const-string v1, "bt"

    const-string v2, "PRODUCT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/internal/p/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/p/b;->b:Lcom/facebook/ads/internal/p/b;

    new-instance v0, Lcom/facebook/ads/internal/p/b;

    const-string v1, "sn"

    const-string v2, "EVENT_TYPE"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/internal/p/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/p/b;->c:Lcom/facebook/ads/internal/p/b;

    new-instance v0, Lcom/facebook/ads/internal/p/b;

    const-string v1, "ap"

    const-string v2, "APP_BUNDLE_ID"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/internal/p/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/p/b;->d:Lcom/facebook/ads/internal/p/b;

    new-instance v0, Lcom/facebook/ads/internal/p/b;

    const-string v1, "r1"

    const-string v2, "APP_SESSION_ID"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/internal/p/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/p/b;->e:Lcom/facebook/ads/internal/p/b;

    new-instance v0, Lcom/facebook/ads/internal/p/b;

    const-string v1, "_p"

    const-string v2, "PADDING"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/internal/p/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/p/b;->f:Lcom/facebook/ads/internal/p/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/ads/internal/p/b;

    sget-object v1, Lcom/facebook/ads/internal/p/b;->a:Lcom/facebook/ads/internal/p/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/p/b;->b:Lcom/facebook/ads/internal/p/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/p/b;->c:Lcom/facebook/ads/internal/p/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/p/b;->d:Lcom/facebook/ads/internal/p/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/p/b;->e:Lcom/facebook/ads/internal/p/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/p/b;->f:Lcom/facebook/ads/internal/p/b;

    aput-object v1, v0, v8

    sput-object v0, Lcom/facebook/ads/internal/p/b;->h:[Lcom/facebook/ads/internal/p/b;

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

    iput-object p3, p0, Lcom/facebook/ads/internal/p/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/p/b;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/p/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/p/b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/p/b;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/p/b;->h:[Lcom/facebook/ads/internal/p/b;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/p/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/p/b;

    return-object v0
.end method
