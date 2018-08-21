.class final Lss/t$1;
.super Lss/ss/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lss/ss/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lss/t;)Lss/ss/d;
    .locals 1

    invoke-virtual {p1}, Lss/t;->g()Lss/ss/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/i;)Lss/ss/h;
    .locals 1

    iget-object v0, p1, Lss/i;->a:Lss/ss/h;

    return-object v0
.end method

.method public a(Lss/i;Lss/a;Lss/ss/gK/r;)Lss/ss/pK/b;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lss/i;->a(Lss/a;Lss/ss/gK/r;)Lss/ss/pK/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/j;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lss/j;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Lss/p$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lss/p$a;->a(Ljava/lang/String;)Lss/p$a;

    return-void
.end method

.method public a(Lss/i;Lss/ss/pK/b;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lss/i;->b(Lss/ss/pK/b;)Z

    move-result v0

    return v0
.end method

.method public b(Lss/i;Lss/ss/pK/b;)V
    .locals 0

    invoke-virtual {p1, p2}, Lss/i;->a(Lss/ss/pK/b;)V

    return-void
.end method
