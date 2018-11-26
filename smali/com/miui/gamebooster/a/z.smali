.class Lcom/miui/gamebooster/a/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private eS:I

.field final synthetic eT:Lcom/miui/gamebooster/a/y;

.field private packageName:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/a/y;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/a/z;->eT:Lcom/miui/gamebooster/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/a/z;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic hT(Lcom/miui/gamebooster/a/z;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/a/z;->eS:I

    return v0
.end method

.method static synthetic hU(Lcom/miui/gamebooster/a/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/a/z;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic hV(Lcom/miui/gamebooster/a/z;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/a/z;->time:I

    return v0
.end method


# virtual methods
.method public hP()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/a/z;->eS:I

    return v0
.end method

.method public hQ()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/a/z;->time:I

    return v0
.end method

.method public hR(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/a/z;->eS:I

    return-void
.end method

.method public hS(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/a/z;->time:I

    return-void
.end method
