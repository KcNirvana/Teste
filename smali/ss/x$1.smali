.class final Lss/x$1;
.super Lss/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/x;->a(Lss/s;[BII)Lss/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lss/s;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lss/s;I[BI)V
    .locals 0

    iput-object p1, p0, Lss/x$1;->a:Lss/s;

    iput p2, p0, Lss/x$1;->b:I

    iput-object p3, p0, Lss/x$1;->c:[B

    iput p4, p0, Lss/x$1;->d:I

    invoke-direct {p0}, Lss/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lss/s;
    .locals 1

    iget-object v0, p0, Lss/x$1;->a:Lss/s;

    return-object v0
.end method

.method public a(LgK/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/x$1;->c:[B

    iget v1, p0, Lss/x$1;->d:I

    iget v2, p0, Lss/x$1;->b:I

    invoke-interface {p1, v0, v1, v2}, LgK/d;->c([BII)LgK/d;

    return-void
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lss/x$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
