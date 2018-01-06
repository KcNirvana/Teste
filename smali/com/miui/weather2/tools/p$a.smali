.class public final enum Lcom/miui/weather2/tools/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/tools/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/weather2/tools/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/weather2/tools/p$a;

.field public static final enum b:Lcom/miui/weather2/tools/p$a;

.field public static final enum c:Lcom/miui/weather2/tools/p$a;

.field public static final enum d:Lcom/miui/weather2/tools/p$a;

.field public static final enum e:Lcom/miui/weather2/tools/p$a;

.field public static final enum f:Lcom/miui/weather2/tools/p$a;

.field private static final synthetic k:[Lcom/miui/weather2/tools/p$a;


# instance fields
.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x32

    new-instance v0, Lcom/miui/weather2/tools/p$a;

    const-string v1, "GOOD"

    move v4, v2

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/tools/p$a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/miui/weather2/tools/p$a;->a:Lcom/miui/weather2/tools/p$a;

    new-instance v4, Lcom/miui/weather2/tools/p$a;

    const-string v5, "MODERATE"

    const/16 v7, 0x64

    move v6, v11

    move v8, v3

    move v9, v3

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/miui/weather2/tools/p$a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/miui/weather2/tools/p$a;->b:Lcom/miui/weather2/tools/p$a;

    new-instance v4, Lcom/miui/weather2/tools/p$a;

    const-string v5, "LIGHT_POLLUTION"

    const/16 v7, 0x96

    const/16 v8, 0x64

    move v6, v12

    move v9, v3

    move v10, v12

    invoke-direct/range {v4 .. v10}, Lcom/miui/weather2/tools/p$a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/miui/weather2/tools/p$a;->c:Lcom/miui/weather2/tools/p$a;

    new-instance v4, Lcom/miui/weather2/tools/p$a;

    const-string v5, "UNHEALTHY"

    const/16 v7, 0xc8

    const/16 v8, 0x96

    move v6, v13

    move v9, v3

    move v10, v13

    invoke-direct/range {v4 .. v10}, Lcom/miui/weather2/tools/p$a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/miui/weather2/tools/p$a;->d:Lcom/miui/weather2/tools/p$a;

    new-instance v3, Lcom/miui/weather2/tools/p$a;

    const-string v4, "DANGEROUS"

    const/4 v5, 0x4

    const/16 v6, 0x12c

    const/16 v7, 0xc8

    const/16 v8, 0x64

    const/4 v9, 0x4

    invoke-direct/range {v3 .. v9}, Lcom/miui/weather2/tools/p$a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/miui/weather2/tools/p$a;->e:Lcom/miui/weather2/tools/p$a;

    new-instance v3, Lcom/miui/weather2/tools/p$a;

    const-string v4, "HAZARDOUS"

    const/4 v5, 0x5

    const/16 v6, 0x1f4

    const/16 v7, 0x12c

    const/16 v8, 0xc8

    const/4 v9, 0x5

    invoke-direct/range {v3 .. v9}, Lcom/miui/weather2/tools/p$a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/miui/weather2/tools/p$a;->f:Lcom/miui/weather2/tools/p$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/weather2/tools/p$a;

    sget-object v1, Lcom/miui/weather2/tools/p$a;->a:Lcom/miui/weather2/tools/p$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/weather2/tools/p$a;->b:Lcom/miui/weather2/tools/p$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/weather2/tools/p$a;->c:Lcom/miui/weather2/tools/p$a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/weather2/tools/p$a;->d:Lcom/miui/weather2/tools/p$a;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/miui/weather2/tools/p$a;->e:Lcom/miui/weather2/tools/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/weather2/tools/p$a;->f:Lcom/miui/weather2/tools/p$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/tools/p$a;->k:[Lcom/miui/weather2/tools/p$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/weather2/tools/p$a;->g:I

    iput p6, p0, Lcom/miui/weather2/tools/p$a;->h:I

    iput p5, p0, Lcom/miui/weather2/tools/p$a;->i:I

    iput p4, p0, Lcom/miui/weather2/tools/p$a;->j:I

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/p$a;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/p$a;->g:I

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/tools/p$a;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/p$a;->h:I

    return v0
.end method

.method static synthetic c(Lcom/miui/weather2/tools/p$a;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/p$a;->j:I

    return v0
.end method

.method static synthetic d(Lcom/miui/weather2/tools/p$a;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/p$a;->i:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/weather2/tools/p$a;
    .locals 1

    const-class v0, Lcom/miui/weather2/tools/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/p$a;

    return-object v0
.end method

.method public static values()[Lcom/miui/weather2/tools/p$a;
    .locals 1

    sget-object v0, Lcom/miui/weather2/tools/p$a;->k:[Lcom/miui/weather2/tools/p$a;

    invoke-virtual {v0}, [Lcom/miui/weather2/tools/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/tools/p$a;

    return-object v0
.end method
