.class public final Lss/ss/gK/k;
.super Lss/z;


# instance fields
.field private final a:Lss/p;

.field private final b:LgK/e;


# direct methods
.method public constructor <init>(Lss/p;LgK/e;)V
    .locals 0

    invoke-direct {p0}, Lss/z;-><init>()V

    iput-object p1, p0, Lss/ss/gK/k;->a:Lss/p;

    iput-object p2, p0, Lss/ss/gK/k;->b:LgK/e;

    return-void
.end method


# virtual methods
.method public a()Lss/s;
    .locals 2

    iget-object v0, p0, Lss/ss/gK/k;->a:Lss/p;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lss/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lss/s;->a(Ljava/lang/String;)Lss/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lss/ss/gK/k;->a:Lss/p;

    invoke-static {v0}, Lss/ss/gK/j;->a(Lss/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()LgK/e;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/k;->b:LgK/e;

    return-object v0
.end method
