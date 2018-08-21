.class Lss/ss/ss/k$1;
.super LgK/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/k;-><init>(LgK/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lss/ss/ss/k;


# direct methods
.method constructor <init>(Lss/ss/ss/k;LgK/r;)V
    .locals 0

    iput-object p1, p0, Lss/ss/ss/k$1;->a:Lss/ss/ss/k;

    invoke-direct {p0, p2}, LgK/h;-><init>(LgK/r;)V

    return-void
.end method


# virtual methods
.method public a(LgK/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lss/ss/ss/k$1;->a:Lss/ss/ss/k;

    invoke-static {v2}, Lss/ss/ss/k;->a(Lss/ss/ss/k;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lss/ss/ss/k$1;->a:Lss/ss/ss/k;

    invoke-static {v2}, Lss/ss/ss/k;->a(Lss/ss/ss/k;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, LgK/h;->a(LgK/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lss/ss/ss/k$1;->a:Lss/ss/ss/k;

    iget-object v1, p0, Lss/ss/ss/k$1;->a:Lss/ss/ss/k;

    invoke-static {v1}, Lss/ss/ss/k;->a(Lss/ss/ss/k;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    invoke-static {v0, v1}, Lss/ss/ss/k;->a(Lss/ss/ss/k;I)I

    move-wide v0, v2

    goto :goto_0
.end method
