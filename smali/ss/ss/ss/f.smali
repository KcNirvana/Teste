.class public final Lss/ss/ss/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:LgK/f;

.field public static final b:LgK/f;

.field public static final c:LgK/f;

.field public static final d:LgK/f;

.field public static final e:LgK/f;

.field public static final f:LgK/f;

.field public static final g:LgK/f;


# instance fields
.field public final h:LgK/f;

.field public final i:LgK/f;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ":status"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->a:LgK/f;

    const-string/jumbo v0, ":method"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->b:LgK/f;

    const-string/jumbo v0, ":path"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->c:LgK/f;

    const-string/jumbo v0, ":scheme"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->d:LgK/f;

    const-string/jumbo v0, ":authority"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->e:LgK/f;

    const-string/jumbo v0, ":host"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->f:LgK/f;

    const-string/jumbo v0, ":version"

    invoke-static {v0}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    sput-object v0, Lss/ss/ss/f;->g:LgK/f;

    return-void
.end method

.method public constructor <init>(LgK/f;LgK/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/f;->h:LgK/f;

    iput-object p2, p0, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {p1}, LgK/f;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, LgK/f;->f()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lss/ss/ss/f;->j:I

    return-void
.end method

.method public constructor <init>(LgK/f;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lss/ss/ss/f;-><init>(LgK/f;LgK/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v0

    invoke-static {p2}, LgK/f;->a(Ljava/lang/String;)LgK/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lss/ss/ss/f;-><init>(LgK/f;LgK/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lss/ss/ss/f;

    if-eqz v1, :cond_0

    check-cast p1, Lss/ss/ss/f;

    iget-object v1, p0, Lss/ss/ss/f;->h:LgK/f;

    iget-object v2, p1, Lss/ss/ss/f;->h:LgK/f;

    invoke-virtual {v1, v2}, LgK/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lss/ss/ss/f;->i:LgK/f;

    iget-object v2, p1, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {v1, v2}, LgK/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lss/ss/ss/f;->h:LgK/f;

    invoke-virtual {v0}, LgK/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {v1}, LgK/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lss/ss/ss/f;->h:LgK/f;

    invoke-virtual {v3}, LgK/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lss/ss/ss/f;->i:LgK/f;

    invoke-virtual {v3}, LgK/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
