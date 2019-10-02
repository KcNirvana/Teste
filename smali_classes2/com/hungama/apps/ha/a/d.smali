.class Lcom/hungama/apps/ha/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/a/d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/hungama/apps/ha/a/d;->b:I

    iput-object p3, p0, Lcom/hungama/apps/ha/a/d;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/hungama/apps/ha/a/d;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/hungama/apps/ha/a/d;->d:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/hungama/apps/ha/a/d;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Lcom/hungama/apps/ha/a/d;->d:I

    return v0
.end method
