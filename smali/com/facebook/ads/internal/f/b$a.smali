.class public final enum Lcom/facebook/ads/internal/f/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/f/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/f/b$a;

.field public static final enum b:Lcom/facebook/ads/internal/f/b$a;

.field public static final enum c:Lcom/facebook/ads/internal/f/b$a;

.field private static final synthetic e:[Lcom/facebook/ads/internal/f/b$a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/facebook/ads/internal/f/b$a;

    const-string v1, "REPORT"

    const-string v2, "report"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/internal/f/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/f/b$a;->a:Lcom/facebook/ads/internal/f/b$a;

    new-instance v0, Lcom/facebook/ads/internal/f/b$a;

    const-string v1, "HIDE"

    const-string v2, "hide"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/internal/f/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/f/b$a;->b:Lcom/facebook/ads/internal/f/b$a;

    new-instance v0, Lcom/facebook/ads/internal/f/b$a;

    const-string v1, "NONE"

    const-string v2, "none"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/internal/f/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/f/b$a;->c:Lcom/facebook/ads/internal/f/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/f/b$a;

    sget-object v1, Lcom/facebook/ads/internal/f/b$a;->a:Lcom/facebook/ads/internal/f/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/f/b$a;->b:Lcom/facebook/ads/internal/f/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/f/b$a;->c:Lcom/facebook/ads/internal/f/b$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/ads/internal/f/b$a;->e:[Lcom/facebook/ads/internal/f/b$a;

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

    iput-object p3, p0, Lcom/facebook/ads/internal/f/b$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/f/b$a;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/f/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/f/b$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/f/b$a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f/b$a;->e:[Lcom/facebook/ads/internal/f/b$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/f/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/f/b$a;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/b$a;->d:Ljava/lang/String;

    return-object v0
.end method
