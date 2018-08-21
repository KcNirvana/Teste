.class Lss/ss/gK/e$a;
.super LgK/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/gK/e;


# direct methods
.method public constructor <init>(Lss/ss/gK/e;LgK/r;)V
    .locals 0

    iput-object p1, p0, Lss/ss/gK/e$a;->a:Lss/ss/gK/e;

    invoke-direct {p0, p2}, LgK/h;-><init>(LgK/r;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e$a;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)Lss/ss/gK/r;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lss/ss/gK/e$a;->a:Lss/ss/gK/e;

    invoke-virtual {v0, v1, v2}, Lss/ss/gK/r;->a(ZLss/ss/gK/i;)V

    invoke-super {p0}, LgK/h;->close()V

    return-void
.end method
