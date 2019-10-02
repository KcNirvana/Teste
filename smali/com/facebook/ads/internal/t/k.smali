.class public final enum Lcom/facebook/ads/internal/t/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/t/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/t/k;

.field public static final enum b:Lcom/facebook/ads/internal/t/k;

.field public static final enum c:Lcom/facebook/ads/internal/t/k;

.field public static final enum d:Lcom/facebook/ads/internal/t/k;

.field public static final enum e:Lcom/facebook/ads/internal/t/k;

.field private static final synthetic i:[Lcom/facebook/ads/internal/t/k;


# instance fields
.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/facebook/ads/internal/t/k;

    const-string v1, "HEIGHT_100"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x64

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/t/k;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/facebook/ads/internal/t/k;->a:Lcom/facebook/ads/internal/t/k;

    new-instance v0, Lcom/facebook/ads/internal/t/k;

    const-string v8, "HEIGHT_120"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/16 v11, 0x78

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/t/k;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/facebook/ads/internal/t/k;->b:Lcom/facebook/ads/internal/t/k;

    new-instance v0, Lcom/facebook/ads/internal/t/k;

    const-string v2, "HEIGHT_300"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/16 v5, 0x12c

    const/4 v6, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/t/k;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/facebook/ads/internal/t/k;->c:Lcom/facebook/ads/internal/t/k;

    new-instance v0, Lcom/facebook/ads/internal/t/k;

    const-string v8, "HEIGHT_400"

    const/4 v9, 0x3

    const/16 v11, 0x190

    const/4 v12, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/t/k;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/facebook/ads/internal/t/k;->d:Lcom/facebook/ads/internal/t/k;

    new-instance v0, Lcom/facebook/ads/internal/t/k;

    const-string v2, "HEIGHT_50"

    const/4 v3, 0x4

    const/16 v5, 0x32

    const/4 v6, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/t/k;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/facebook/ads/internal/t/k;->e:Lcom/facebook/ads/internal/t/k;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/t/k;

    sget-object v1, Lcom/facebook/ads/internal/t/k;->a:Lcom/facebook/ads/internal/t/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/t/k;->b:Lcom/facebook/ads/internal/t/k;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/t/k;->c:Lcom/facebook/ads/internal/t/k;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/t/k;->d:Lcom/facebook/ads/internal/t/k;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/t/k;->e:Lcom/facebook/ads/internal/t/k;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/ads/internal/t/k;->i:[Lcom/facebook/ads/internal/t/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/t/k;->f:I

    iput p4, p0, Lcom/facebook/ads/internal/t/k;->g:I

    iput p5, p0, Lcom/facebook/ads/internal/t/k;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/t/k;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/t/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/t/k;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/t/k;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/t/k;->i:[Lcom/facebook/ads/internal/t/k;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/t/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/t/k;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/k;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/k;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/k;->h:I

    return v0
.end method
