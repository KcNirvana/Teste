.class public Lss/ss/ss/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:LgK/e;

.field private d:LgK/d;

.field private e:Lss/ss/ss/d$b;

.field private f:Lss/u;

.field private g:Lss/ss/ss/m;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lss/ss/ss/d$b;->a:Lss/ss/ss/d$b;

    iput-object v0, p0, Lss/ss/ss/d$a;->e:Lss/ss/ss/d$b;

    sget-object v0, Lss/u;->c:Lss/u;

    iput-object v0, p0, Lss/ss/ss/d$a;->f:Lss/u;

    sget-object v0, Lss/ss/ss/m;->a:Lss/ss/ss/m;

    iput-object v0, p0, Lss/ss/ss/d$a;->g:Lss/ss/ss/m;

    iput-boolean p1, p0, Lss/ss/ss/d$a;->h:Z

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d$a;)Lss/u;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->f:Lss/u;

    return-object v0
.end method

.method static synthetic b(Lss/ss/ss/d$a;)Lss/ss/ss/m;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->g:Lss/ss/ss/m;

    return-object v0
.end method

.method static synthetic c(Lss/ss/ss/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lss/ss/ss/d$a;->h:Z

    return v0
.end method

.method static synthetic d(Lss/ss/ss/d$a;)Lss/ss/ss/d$b;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->e:Lss/ss/ss/d$b;

    return-object v0
.end method

.method static synthetic e(Lss/ss/ss/d$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lss/ss/ss/d$a;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(Lss/ss/ss/d$a;)LgK/d;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->d:LgK/d;

    return-object v0
.end method

.method static synthetic h(Lss/ss/ss/d$a;)LgK/e;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/d$a;->c:LgK/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/Socket;Ljava/lang/String;LgK/e;LgK/d;)Lss/ss/ss/d$a;
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$a;->a:Ljava/net/Socket;

    iput-object p2, p0, Lss/ss/ss/d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lss/ss/ss/d$a;->c:LgK/e;

    iput-object p4, p0, Lss/ss/ss/d$a;->d:LgK/d;

    return-object p0
.end method

.method public a(Lss/ss/ss/d$b;)Lss/ss/ss/d$a;
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$a;->e:Lss/ss/ss/d$b;

    return-object p0
.end method

.method public a(Lss/u;)Lss/ss/ss/d$a;
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$a;->f:Lss/u;

    return-object p0
.end method

.method public a()Lss/ss/ss/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/ss/ss/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ss/ss/d;-><init>(Lss/ss/ss/d$a;Lss/ss/ss/d$1;)V

    return-object v0
.end method
