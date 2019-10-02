.class public final enum Lcom/hungama/apps/ha/e/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hungama/apps/ha/e/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hungama/apps/ha/e/i;

.field public static final enum b:Lcom/hungama/apps/ha/e/i;

.field public static final enum c:Lcom/hungama/apps/ha/e/i;

.field public static final enum d:Lcom/hungama/apps/ha/e/i;

.field public static final enum e:Lcom/hungama/apps/ha/e/i;

.field public static final enum f:Lcom/hungama/apps/ha/e/i;

.field public static final enum g:Lcom/hungama/apps/ha/e/i;

.field private static final synthetic i:[Lcom/hungama/apps/ha/e/i;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->a:Lcom/hungama/apps/ha/e/i;

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->b:Lcom/hungama/apps/ha/e/i;

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->c:Lcom/hungama/apps/ha/e/i;

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "OPTIONS"

    const-string v2, "OPTIONS"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->d:Lcom/hungama/apps/ha/e/i;

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "PUT"

    const-string v2, "PUT"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->e:Lcom/hungama/apps/ha/e/i;

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->f:Lcom/hungama/apps/ha/e/i;

    new-instance v0, Lcom/hungama/apps/ha/e/i;

    const-string v1, "TRACE"

    const-string v2, "TRACE"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/hungama/apps/ha/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hungama/apps/ha/e/i;->g:Lcom/hungama/apps/ha/e/i;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hungama/apps/ha/e/i;

    sget-object v1, Lcom/hungama/apps/ha/e/i;->a:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hungama/apps/ha/e/i;->b:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hungama/apps/ha/e/i;->c:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hungama/apps/ha/e/i;->d:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hungama/apps/ha/e/i;->e:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hungama/apps/ha/e/i;->f:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hungama/apps/ha/e/i;->g:Lcom/hungama/apps/ha/e/i;

    aput-object v1, v0, v9

    sput-object v0, Lcom/hungama/apps/ha/e/i;->i:[Lcom/hungama/apps/ha/e/i;

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

    iput-object p3, p0, Lcom/hungama/apps/ha/e/i;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hungama/apps/ha/e/i;
    .locals 1

    const-class v0, Lcom/hungama/apps/ha/e/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hungama/apps/ha/e/i;

    return-object p0
.end method

.method public static values()[Lcom/hungama/apps/ha/e/i;
    .locals 1

    sget-object v0, Lcom/hungama/apps/ha/e/i;->i:[Lcom/hungama/apps/ha/e/i;

    invoke-virtual {v0}, [Lcom/hungama/apps/ha/e/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hungama/apps/ha/e/i;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/i;->h:Ljava/lang/String;

    return-object v0
.end method
